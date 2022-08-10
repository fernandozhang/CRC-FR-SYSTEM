package cn.iocoder.yudao.module.bpm.service.oa;

import cn.hutool.core.date.DatePattern;
import cn.hutool.core.date.DateUtil;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmPDFPrintPurchaseReqVO;
import cn.iocoder.yudao.module.bpm.dal.dataobject.oa.BpmOAReimPurchaseDO;
import cn.iocoder.yudao.module.bpm.utils.PDFUtil;
import cn.iocoder.yudao.module.infra.api.file.FileApi;
import com.itextpdf.text.*;
import com.itextpdf.text.pdf.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.ByteArrayOutputStream;
import java.net.URL;
import java.util.List;

import static cn.iocoder.yudao.framework.common.exception.util.ServiceExceptionUtil.exception;
import static cn.iocoder.yudao.framework.common.util.date.DateUtils.FORMAT_YEAR_MONTH_DAY;
import static cn.iocoder.yudao.module.bpm.enums.ErrorCodeConstants.PRINT_PURCHASE_PDF_EXCEPTION;

/**
 * Copyright(C),2020-2022,Skyland
 * Author: YushanZhang
 * Date: 2022/8/6 15:21
 * Description: 打印采购报销单PDF
 */
@Service
public class BpmPDFPrintPurchaseServiceImpl implements BpmPDFPrintService<BpmPDFPrintPurchaseReqVO> {

    @Resource
    private FileApi fileApi;

    Logger logger = LoggerFactory.getLogger(BpmPDFPrintPurchaseServiceImpl.class);

    @Override
    public String generate(BpmPDFPrintPurchaseReqVO reqVO) {
        Document document = null;
        PdfWriter writer = null;
        // 表格
        ByteArrayOutputStream formBos = new ByteArrayOutputStream();
        // 声明模板
        ByteArrayOutputStream templateBos = new ByteArrayOutputStream();
        // 报销信息
        List<BpmOAReimPurchaseDO> purchaseDOList = reqVO.getPurchaseDOS();
        // 文档名称
        String docName = "Reimbursement_" + reqVO.getStaffName() + "_"
                + DateUtil.format(DateUtil.date(), DatePattern.PURE_DATETIME_PATTERN);
        try {
            // document, default size(A4)
            document = new Document();
            // size
            document.setPageSize(PageSize.A4.rotate());
            // Margins in pixels, 28.33 pixels = 1 cm
            document.setMargins(50, 50, 30, 30);

            //===================================================================================================
            writer = PdfWriter.getInstance(document, formBos);
            //===================================================================================================

            // title for every page
            String staffName = "报销申请人：" + reqVO.getStaffName();
            String amount = "报销金额：HK$ " + reqVO.getAmount();
            String batchId = "打印批次号： " + reqVO.getBatchId();


            // open document and add stuffs in it
            document.open();

            // author
            document.addAuthor(reqVO.getStaffName());

            // creator
            document.addCreator("HKCRC财务报销系统");
            // subject
            document.addSubject("报销信息");
            // title
            document.addTitle(docName);

            //========================================================page 1============================================================//
            // add paragraph for title
            document.add(new Paragraph(staffName, PDFUtil.font));
            document.add(new Paragraph("\n\r", PDFUtil.font));
            document.add(new Paragraph(amount, PDFUtil.font));
            document.add(new Paragraph("\n\r", PDFUtil.font));
            document.add(new Paragraph(batchId, PDFUtil.font));
            document.add(new Paragraph("\n\r", PDFUtil.font));

            // create information table
            PdfPTable table = new PdfPTable(7);
            table.setTotalWidth(PageSize.A4.rotate().getWidth() - 100);
            table.setLockedWidth(true);

            float[] columnWidths = new float[]{60f, 100f, 60f, 30f, 60f, 140f, 60f};
            table.setWidths(columnWidths);

            table.addCell(PDFUtil.createCell("日期", PDFUtil.font));
            table.addCell(PDFUtil.createCell("项目", PDFUtil.font));
            table.addCell(PDFUtil.createCell("总价", PDFUtil.font));
            table.addCell(PDFUtil.createCell("汇率", PDFUtil.font));
            table.addCell(PDFUtil.createCell("总价（港币）", PDFUtil.font));
            table.addCell(PDFUtil.createCell("用途", PDFUtil.font));
            table.addCell(PDFUtil.createCell("购买途径", PDFUtil.font));

            for (BpmOAReimPurchaseDO purchaseDO : purchaseDOList) {
                table.addCell(PDFUtil.createCell(DateUtil.format(purchaseDO.getPayDate(), FORMAT_YEAR_MONTH_DAY), PDFUtil.font));
                Paragraph obj = new Paragraph(purchaseDO.getPurchaseObjs(), PDFUtil.font);
                table.addCell(obj);
                // 判断单位
                String priceUnit = "";
                if (purchaseDO.getTotalUnit() == 1) {
                    priceUnit = "￥";
                } else if (purchaseDO.getTotalUnit() == 2) {
                    priceUnit = "HK$";
                } else if (purchaseDO.getTotalUnit() == 3) {
                    priceUnit = "$";
                } else {
                    priceUnit = "?";
                }

                table.addCell(PDFUtil.createCell(priceUnit + " " + purchaseDO.getTotalPrice().toString(), PDFUtil.font));
                table.addCell(PDFUtil.createCell(purchaseDO.getExchangeRate().toString(), PDFUtil.font));
                table.addCell(PDFUtil.createCell(purchaseDO.getTotalHkd().toString(), PDFUtil.font));
                Paragraph usage = new Paragraph(purchaseDO.getUsage(), PDFUtil.font);
                table.addCell(usage);
                table.addCell(PDFUtil.createCell(purchaseDO.getPurBy() == 1 ? "线上" : "线下", PDFUtil.font));
            }

            document.add(table);
            document.newPage();
            //==========================================================================================================================//

            //========================================================page 2============================================================//

            for (BpmOAReimPurchaseDO purchaseDO : purchaseDOList) {
                boolean hasPaperReceipt = purchaseDO.getPaperReceipt();
                String content = hasPaperReceipt ? "有收据" : "线上支付记录";

                // add paragraph for title
                document.add(new Paragraph('\t' + "(" + content + ")", PDFUtil.font));
                document.add(new Paragraph("\n\r", PDFUtil.font));

                PdfPTable singleTable = new PdfPTable(7);
                singleTable.setTotalWidth(PageSize.A4.rotate().getWidth() - 100);
                singleTable.setLockedWidth(true);

                singleTable.setWidths(columnWidths); // float[] columnWidths = new float[]{60f, 100f, 60f, 30f, 60f, 140f, 60f};

                // add row of information
                singleTable.addCell(PDFUtil.createCell("日期", PDFUtil.font));
                singleTable.addCell(PDFUtil.createCell("项目", PDFUtil.font));
                singleTable.addCell(PDFUtil.createCell("总价（元）", PDFUtil.font));
                singleTable.addCell(PDFUtil.createCell("汇率", PDFUtil.font));
                singleTable.addCell(PDFUtil.createCell("总价（港币）", PDFUtil.font));
                singleTable.addCell(PDFUtil.createCell("用途", PDFUtil.font));
                singleTable.addCell(PDFUtil.createCell("购买途径", PDFUtil.font));

                // 判断单位
                String priceUnit = "";
                if (purchaseDO.getTotalUnit() == 1) {
                    priceUnit = "￥";
                } else if (purchaseDO.getTotalUnit() == 2) {
                    priceUnit = "HK$";
                } else if (purchaseDO.getTotalUnit() == 3) {
                    priceUnit = "$";
                } else {
                    priceUnit = "?";
                }

                singleTable.addCell(PDFUtil.createCell(DateUtil.format(purchaseDO.getPayDate(), FORMAT_YEAR_MONTH_DAY), PDFUtil.font));
                Paragraph obj = new Paragraph(purchaseDO.getPurchaseObjs(), PDFUtil.font);
                singleTable.addCell(obj);
                singleTable.addCell(PDFUtil.createCell(priceUnit + " " + purchaseDO.getTotalPrice().toString(), PDFUtil.font));
                singleTable.addCell(PDFUtil.createCell(purchaseDO.getExchangeRate().toString(), PDFUtil.font));
                singleTable.addCell(PDFUtil.createCell(purchaseDO.getTotalHkd().toString(), PDFUtil.font));
                Paragraph usage = new Paragraph(purchaseDO.getUsage(), PDFUtil.font);
                singleTable.addCell(usage);
                singleTable.addCell(PDFUtil.createCell(purchaseDO.getPurBy() == 1 ? "线上" : "线下", PDFUtil.font));
                document.add(singleTable);

                // add image table
                PdfPTable picTable = new PdfPTable(5);
                picTable.setTotalWidth(PageSize.A4.rotate().getWidth() - 100);
                picTable.setLockedWidth(true);

                if (!hasPaperReceipt) {
                    // order image
                    picTable.addCell(PDFUtil.createCell("订单截图： \n ", PDFUtil.font, Element.ALIGN_CENTER));
                    Image orderImage = Image.getInstance(new URL(purchaseDO.getOrderImg()));
                    picTable.addCell(PDFUtil.createCell(orderImage, Element.ALIGN_CENTER, 4, 1));

                    // payment image
                    picTable.addCell(PDFUtil.createCell("付款记录截图： \n", PDFUtil.font, Element.ALIGN_CENTER));
                    Image payImage = Image.getInstance(new URL(purchaseDO.getPayImg()));
                    picTable.addCell(PDFUtil.createCell(payImage, Element.ALIGN_CENTER, 4, 1));

                } else {
                    picTable.addCell(PDFUtil.createCell("收据： \n ", PDFUtil.font, Element.ALIGN_CENTER));
                    picTable.addCell(PDFUtil.createCell("此处粘贴收据", PDFUtil.font, Element.ALIGN_CENTER, 4));
                }
                // obj image
                if (purchaseDO.getObjsImg() != null) {
                    picTable.addCell(PDFUtil.createCell("物品图片： \n", PDFUtil.font, Element.ALIGN_CENTER));
                    Image objImage = Image.getInstance(new URL(purchaseDO.getObjsImg()));
                    picTable.addCell(PDFUtil.createCell(objImage, Element.ALIGN_CENTER, 4, 1));
                }

                document.add(picTable);
                document.newPage();
            }

            //==========================================================================================================================//

        } catch (Exception e) {
            logger.error("打印表格PDF异常", e);
            throw exception(PRINT_PURCHASE_PDF_EXCEPTION);
        } finally {
            if (document != null)
                try {
                    document.close();
                } catch (Exception e) {
                    logger.error("关闭 PDF Document 异常", e);
                    throw exception(PRINT_PURCHASE_PDF_EXCEPTION);
                }
            if (writer != null)
                try {
                    writer.close();
                } catch (Exception e) {
                    logger.error("关闭 PDF Writer 异常", e);
                    throw exception(PRINT_PURCHASE_PDF_EXCEPTION);
                }
        }

        if (checkNoReceipt(purchaseDOList)) {
            // 打印模板
            PdfReader reader = null;
            PdfStamper stamper = null;
            try {
                reader = new PdfReader("reim_purchase_template.pdf");
                stamper = new PdfStamper(reader, templateBos);
                AcroFields form = stamper.getAcroFields();
                // 填入日期和金额
                form.setField("Date", DateUtil.today());
                form.setField("price", getPrice(purchaseDOList));

                stamper.setFormFlattening(true);
            } catch (Exception e) {
                logger.error("打印声明模板PDF异常", e);
                throw exception(PRINT_PURCHASE_PDF_EXCEPTION);
            } finally {
                try {
                    if (stamper != null) {
                        stamper.close();
                    }
                } catch (Exception e) {
                    logger.error("关闭 PDF Stamper 异常", e);
                    throw exception(PRINT_PURCHASE_PDF_EXCEPTION);
                }
                try {
                    if (reader != null) {
                        reader.close();
                    }
                } catch (Exception e) {
                    logger.error("关闭 PDF Reader 异常", e);
                    throw exception(PRINT_PURCHASE_PDF_EXCEPTION);
                }
            }
        }

        try {
            // 合并字节数组
            byte[] formBytes = formBos.toByteArray();
            byte[] templateBytes = templateBos.toByteArray();
            byte[] content = new byte[formBytes.length + templateBytes.length];
            System.arraycopy(formBytes, 0, content, 0, formBytes.length);
            System.arraycopy(templateBytes, 0, content, formBytes.length, templateBytes.length);

            // 存入文件服务器
            String fileUrl = fileApi.createFile(docName + ".pdf", content);
            return fileUrl;
        } catch (Throwable e) {
            logger.error("返回数据流异常", e);
            throw exception(PRINT_PURCHASE_PDF_EXCEPTION);
        }
    }

    /**
     * 计算没有收据的总金额
     *
     * @param purchaseDOList
     * @return
     */
    private String getPrice(List<BpmOAReimPurchaseDO> purchaseDOList) {

        double price = 0.00d;

        for (BpmOAReimPurchaseDO purchaseDO : purchaseDOList) {
            if (!purchaseDO.getPaperReceipt()) {
                price += purchaseDO.getTotalHkd();
            }
        }

        return String.format("%.2f", price);
    }

    /**
     * 检查是否订单没有发票
     *
     * @param purchaseDOList
     * @return
     */
    private Boolean checkNoReceipt(List<BpmOAReimPurchaseDO> purchaseDOList) {
        for (BpmOAReimPurchaseDO purchaseDO : purchaseDOList) {
            if (!purchaseDO.getPaperReceipt()) {
                return true;
            }
        }
        return false;
    }
}

package cn.iocoder.yudao.module.bpm.utils;

import com.itextpdf.text.*;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import lombok.Data;

import java.io.IOException;

/**
 * Copyright(C),2020-2022,Skyland
 * Author: YushanZhang
 * Date: 2022/8/6 15:11
 * Description: PDF工具类
 */
@Data
public class PDFUtil {

    public static final Font font;

    public static final int maxWidth = 360;

    // set font
    static {
        // iTextAsian font
        BaseFont baseFont = null;
        try {
            baseFont = BaseFont.createFont("STSong-Light", "UniGB-UCS2-H", BaseFont.NOT_EMBEDDED);
        } catch (DocumentException | IOException e) {
            throw new RuntimeException(e);
        }

        font = new Font(baseFont);
    }

    /*------------------------创建表格单元格的方法start----------------------------*/
    public static PdfPCell createCell(Paragraph para) {
        PdfPCell cell = new PdfPCell();
        cell.setHorizontalAlignment(Element.ALIGN_CENTER);
        cell.addElement(para);
        cell.setFixedHeight(25f);
        return cell;
    }

    public static PdfPCell createCell(Image image, int align, int colspan, int rowspan) {
        PdfPCell cell = new PdfPCell();
        cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
        cell.setHorizontalAlignment(align);
        cell.setColspan(colspan);
        cell.setRowspan(rowspan);

        cell.setFixedHeight(rowspan * 350f);
        cell.setImage(image);
        // cell.setPhrase(new Phrase(new Chunk(image, 0, 0,false)));
        return cell;

    }

    /**
     * 创建单元格(指定字体)
     */
    public static PdfPCell createCell(String value, Font font) {
        PdfPCell cell = new PdfPCell();
        cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
        cell.setHorizontalAlignment(Element.ALIGN_CENTER);

        Paragraph elements = new Paragraph(value, font);
        elements.setAlignment(Element.ALIGN_CENTER);
        cell.addElement(elements);
        cell.setHorizontalAlignment(Element.ALIGN_CENTER);
        cell.setFixedHeight(25f);
        return cell;
    }

    /**
     * 创建单元格（指定字体、水平..）
     */
    public static PdfPCell createCell(String value, Font font, int align) {
        PdfPCell cell = new PdfPCell();
        cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
        cell.setHorizontalAlignment(align);
        cell.setPhrase(new Phrase(value, font));
        cell.setFixedHeight(350f);
        return cell;
    }

    /**
     * 创建单元格（指定字体、水平居..、单元格跨x列合并）
     */
    public static PdfPCell createCell(String value, Font font, int align, int colspan) {
        PdfPCell cell = new PdfPCell();
        cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
        cell.setHorizontalAlignment(align);
        cell.setColspan(colspan);
        cell.setPhrase(new Phrase(value, font));
        cell.setFixedHeight(350f);
        return cell;
    }

    public static PdfPCell createCell(String value, Font font, int align, int colspan, int rowspan) {
        PdfPCell cell = new PdfPCell();
        cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
        cell.setHorizontalAlignment(align);
        cell.setColspan(colspan);
        cell.setRowspan(rowspan);
        cell.setFixedHeight(rowspan * 25f);
        cell.setPhrase(new Phrase(value, font));
        return cell;
    }

    /**
     * 创建单元格（指定字体、水平居..、单元格跨x列合并、设置单元格内边距）
     */
    public static PdfPCell createCell(String value, Font font, int align, int colspan, boolean borderFlag) {
        PdfPCell cell = new PdfPCell();
        cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
        cell.setHorizontalAlignment(align);
        cell.setColspan(colspan);
        cell.setPhrase(new Phrase(value, font));
        cell.setPadding(3.0f);
        if (!borderFlag) {
            cell.setBorder(0);
            cell.setPaddingTop(15.0f);
            cell.setPaddingBottom(8.0f);
        } else {
            cell.setBorder(0);
            cell.setPaddingTop(0.0f);
            cell.setPaddingBottom(15.0f);
        }
        return cell;
    }

    /**
     * 创建单元格（指定字体、水平..、边框宽度：0表示无边框、内边距）
     */
    public static PdfPCell createCell(String value, Font font, int align, float[] borderWidth, float[] paddingSize, boolean flag) {
        PdfPCell cell = new PdfPCell();
        cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
        cell.setHorizontalAlignment(align);
        cell.setFixedHeight(25f);
        cell.setPhrase(new Phrase(value, font));
        cell.setBorderWidthLeft(borderWidth[0]);
        cell.setBorderWidthRight(borderWidth[1]);
        cell.setBorderWidthTop(borderWidth[2]);
        cell.setBorderWidthBottom(borderWidth[3]);
        cell.setPaddingTop(paddingSize[0]);
        cell.setPaddingBottom(paddingSize[1]);
        if (flag) {
            cell.setColspan(2);
        }
        return cell;
    }
    /*------------------------创建表格单元格的方法end----------------------------*/

    /**
     * 创建默认列宽，指定列数、水平(居中、右、左)的表格
     */
    public static PdfPTable createTable(int colNumber, int align) {
        PdfPTable table = new PdfPTable(colNumber);
        try {
            table.setTotalWidth(maxWidth);
            table.setLockedWidth(true);
            table.setHorizontalAlignment(align);
            table.getDefaultCell().setBorder(1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return table;
    }

    /**
     * 创建指定列宽、列数的表格
     */
    public static PdfPTable createTable(float[] widths) {
        PdfPTable table = new PdfPTable(widths);
        try {
            table.setTotalWidth(maxWidth);
            table.setLockedWidth(true);
            table.setHorizontalAlignment(Element.ALIGN_CENTER);
            table.getDefaultCell().setBorder(1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return table;
    }

    /**
     * 创建空白的表格
     */
    public static PdfPTable createBlankTable() {
        PdfPTable table = new PdfPTable(1);
        table.getDefaultCell().setBorder(0);
        table.addCell(createCell("", font));
        table.setSpacingAfter(20.0f);
        table.setSpacingBefore(20.0f);
        return table;
    }
    /*--------------------------创建表格的方法end------------------- ---------*/
}

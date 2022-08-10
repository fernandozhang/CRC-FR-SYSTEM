import request from '@/utils/request'

// 创建报销批量打印
export function createPrintReimBatch(data) {
  return request({
    url: '/bpm/oa/reim/print/create',
    method: 'post',
    data: data
  })
}

// 分页查询报销批量打印信息
export function getPrintBatchPage(data) {
  return request({
    url: '/bpm/oa/reim/print/page',
    method: 'get',
    params: data,
  })
}

// 查询报销记录
export function getPurchaseBatch(id) {
  return request({
    url: '/bpm/oa/reim/print/info/purchase?id=' + id,
    method: 'get',
  })
}

// 打印报销记录
export function printBatch(id) {
  return request({
    url: '/bpm/oa/reim/print/batch/purchase?batchId=' + id,
    method: 'get',
  })
}

// 更新报销人员名字
export function updateStaffName(data) {
  return request({
    url: '/bpm/oa/reim/print/update/staffName',
    method: 'get',
    params: data,
  })
}

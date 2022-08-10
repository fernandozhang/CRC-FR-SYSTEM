import request from '@/utils/request'

// 创建采购报销申请
export function createReim(data) {
  return request({
    url: '/bpm/oa/reim/purchase/create',
    method: 'post',
    data: data
  })
}

// 查询采购报销申请
export function getReim(id) {
  return request({
    url: '/bpm/oa/reim/purchase/get?id=' + id,
    method: 'get'
  })
}

// 查询采购报销申请分页
export function getReimPage(data) {
  return request({
    url: '/bpm/oa/reim/purchase/page',
    method: 'get',
    params: data
  })
}

// 更新采购报销
export function updateReim(data) {
  return request({
    url: '/bpm/oa/reim/purchase/update',
    method: 'post',
    data: data
  })
}

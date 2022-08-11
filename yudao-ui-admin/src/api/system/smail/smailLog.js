import request from '@/utils/request'

// 获得邮件日志分页
export function getSmailLogPage(query) {
  return request({
    url: '/system/smail-log/page',
    method: 'get',
    params: query
  })
}

// 导出邮件日志 Excel
export function exportSmailLogExcel(query) {
  return request({
    url: '/system/smail-log/export-excel',
    method: 'get',
    params: query,
    responseType: 'blob'
  })
}

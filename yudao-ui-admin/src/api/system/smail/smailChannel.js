import request from '@/utils/request'

// 创建邮件渠道
export function createSmailChannel(data) {
  return request({
    url: '/system/email-mailbox/create',
    method: 'post',
    data: data
  })
}

// 更新邮件渠道
export function updateSmailChannel(data) {
  return request({
    url: '/system/email-mailbox/update',
    method: 'put',
    data: data
  })
}

// 删除邮件渠道
export function deleteSmailChannel(id) {
  return request({
    url: '/system/email-mailbox/delete?id=' + id,
    method: 'delete'
  })
}

// 获得邮件渠道
export function getSmailChannel(id) {
  return request({
    url: '/system/email-mailbox/get?id=' + id,
    method: 'get'
  })
}

// 获得邮件渠道分页
export function getSmailChannelPage(query) {
  return request({
    url: '/system/email-mailbox/page',
    method: 'get',
    params: query
  })
}

// 获得邮件渠道精简列表
export function getSimpleSmailChannels() {
  return request({
    url: '/system/smail-channel/list-all-simple',
    method: 'get',
  })
}

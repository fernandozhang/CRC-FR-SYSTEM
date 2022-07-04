import request from '@/utils/request'

export function register(username, email, password, tenantId) {
    const data = {
        username,
        email,
        password,
        tenantId
    }
    return request({
        url: '/system/user/register',
        method: 'post',
        data: data
    })
}
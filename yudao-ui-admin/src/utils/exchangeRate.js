import * as cheerio from 'cheerio';
import axios from 'axios'
// send req and get the exchange rate
/**
 * 输入币种和日期，查询该币种在指定日期下和港币的汇率
 * @param {币种} currency 
 * @param {日期} date 
 * @returns 
 */
export async function getExchangeRate(currency, date) {

    if (currency === null || date === null || currency === undefined || date === undefined) {
        console.log('请输入要查询的币种和日期！');
        return;
    }

    let url = process.env.VUE_APP_EXCHANGE_RATE_ORG + currency + '/HKD/' + date;
    let response = await axios.get(url, { headers: { withCredentials: false } });
    // handle success
    let $ = cheerio.load(response.data)
    let result = $('.result')          // get result
    let text = result[0].firstChild.nodeValue
    text = text.substring(0, text.search(/\s/));
    return Number.parseFloat(text);
}


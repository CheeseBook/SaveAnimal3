// 解析日期
function formatDate (now) {
    const date = new Date(now)
    var y = date.getFullYear() // 年份
    var m = date.getMonth() + 1 // 月份，注意：js里的月要加1
    var d = date.getDate() // 日
    var h = date.getHours() // 小时
    var min = date.getMinutes() // 分钟
    var s = date.getSeconds() // 秒
    // 返回值，根据自己需求调整，现在已经拿到了年月日时分秒了
    return y + '年' + m + '月' + d + '日'
}

// function formatDate () {
//     const date = new Date()
//     var y = date.getFullYear() // 年份
//     var m = date.getMonth() + 1 // 月份，注意：js里的月要加1
//     var d = date.getDate() // 日
//     var h = date.getHours() // 小时
//     var min = date.getMinutes() // 分钟
//     var s = date.getSeconds() // 秒
//     // 返回值，根据自己需求调整，现在已经拿到了年月日时分秒了
//     return y + '年' + m + '月' + d + '日'
// }

// 解析url
function GetQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);//search,查询？后面的参数，并匹配正则
    if (r != null) return decodeURI(r[2]);
    return null;
}
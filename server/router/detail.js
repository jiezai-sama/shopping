const express = require('express');
const r = express.Router();
const pool = require('../pool.js');







//插入模板detail
// r.get("/muban",(req,res) => {
//     let sql = "insert into detail (imgsUrl,proId) values (?,?)";
//     let proId = 25;
//     let url ='';
//     for (let i = 1;i <= 12;i++) {
//         url = `/img/detail/d${proId}/${i}.jpg`;
//         pool.query(sql,[url,proId],(err,result) => {
//             if (err) throw err;
//             if (i == 4) {
//                 res.send({message:'成功',code:1});
//             }
//         })
//     }
// })

// r.get("/muban1",(req,res) => {
//     let sql = "insert into probanners (bannerUrl,proId) values (?,?)";
//     let proId = 25;
//     let url = '';
//     for (let i = 1;i <= 4;i++) {
//         url = `/img/detail/b${proId}/${i}.jpg`;
//         pool.query(sql,[url,proId],(err,result) => {
//             if (err) throw err;
//             if (i == 4) {
//                 res.send({message:'成功',code:2});
//             }
//         })
//     }
// })






// 请求商品详情页基础数据
r.get("",(req,res) => {
    let id = req.query.pid;
    let sql = 'SELECT pid,pname,count,flowerSay,material,distribution,gift,specId,p.price,bigTypeId,littleTitle,tag,img,packing,created_at,originalPrice,sname,s.price FROM product AS p LEFT JOIN specifications AS s ON proId=pid WHERE pid=?';
    pool.query(sql,[id],(err,result) => {
        if (err) throw err;
        res.send({message:'查询成功',code:1,result:result});
    })
})

//请求商品规格参数
r.get("/specifications",(req,res) => {
    let id = req.query.id;
    let sql = 'SELECT id,sname,price,proId,sid,imgs FROM specifications WHERE sid=?';
    pool.query(sql,[id],(err,result) => {
        if (err) throw err;
        res.send({message:'查询成功',code:1,result:result});
    })
})

//请求商品配送时间
r.get("/send",(req,res) => {
    let id = req.query.id;
    let province = decodeURI(req.query.province);
    let sql = 'SELECT date FROM senddate WHERE proId=? AND province=?';
    pool.query(sql,[id,province],(err,result) => {
        if (err) throw err;
        if (result.length == 0) {
            result = [{'date':2}];
        }
        res.send({code:1,result:result});
    })
})

// 请求详情页轮播图
r.get("/banners",(req,res) => {
    let id = req.query.pid;
    let sql = 'SELECT bannerUrl FROM probanners WHERE proId=?';
    pool.query(sql,[id],(err,result) => {
        if (err) throw err;
        res.send({message:'查询成功',code:1,result:result});
    })
})

// 请求详情页图片
r.get("/imgs",(req,res) => {
    let id =req.query.pid;
    let sql = 'SELECT imgsUrl FROM detail WHERE proId=?';
    pool.query(sql,[id],(err,result) => {
        if (err) throw err;
        res.send({message:'查询成功',code:1,result:result});
    })
})

// 请求规格分类数据
r.get("/specifications",(req,res) => {
    let id = req.query.pid;
    let sql = 'SELECT sname,proId FROM specifications INNER JOIN product ON sid=specId WHERE pid=?';
    pool.query(sql,[id],(err,result) => {
        if (err) throw err;
        res.send({message:'查询成功',code:1,result:result});
    })
})

// 请求大分类中选择我们的理由
r.get("/select",(req,res) => {
    let bid = req.query.id;
    let sql = 'SELECT bigTypeName,selectContent,selectImgs,img FROM bigtype WHERE bid=?';
    pool.query(sql,[bid],(err,result) => {
        if (err) throw err;
        res.send(result);
    })
})

//请求团队信息接口
r.get("/team",(req,res) => {
    let bid = req.query.id;
    let sql = 'SELECT title,img,content FROM bigtypecontent WHERE bigTypeId=?';
    pool.query(sql,[bid],(err,result) => {
        if (err) throw err;
        res.send(result);
    })
})




module.exports = r ;
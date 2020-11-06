const express = require('express');
const r = express.Router();
const pool = require('../pool.js');

//请求首页轮播图数据
r.get('/banners',(req,res) => {
    let sql = 'SELECT bid,imgUrl,toUrl FROM indexbanners';
    pool.query(sql,(err,result) => {
        if (err) throw err;
        res.send({message:'查询成功',code:1,result:result});
    });
})

//请求一级分类名称
r.get('/majorV1',(req,res) => {
    let sql = 'SELECT bid,bigTypeName,selectContent,selectImgs,img FROM bigtype';
    pool.query(sql,(err,result) => {
        if (err) throw err;
        res.send({message:'查询成功',code:1,result:result});
    });
})

//请求一秒选花的类别
r.get('/seconds',(req,res) => {
    let sql = 'SELECT id,name,c3Id,img FROM oneseconds';
    pool.query(sql,(err,result) => {
        if (err) throw err;
        res.send({message:'查询成功',code:1,result:result});
    })
})

//请求首页展示类别及类别中的鲜花
r.get('/song',(req,res) => {
    let arr = [];
    let sql = 'SELECT pid,img,class3Id,c3Name,t1,flowerSay,tag,littleTitle,price,originalPrice,count FROM classwithpro INNER JOIN product ON ProId=pid INNER JOIN class3 ON class3Id=c3Id WHERE class3Id=? LIMIT 0,4';
    for (let i = 1;i <= 4 ;i++ ) {
        arr[i-1] = new Promise(resolve => {
            pool.query(sql,[i],(err,result) => {
                if (err) throw err;
                resolve(result);
            })
        })
    }
    Promise.all(arr).then(results => {
        res.send({message:'查询成功',code:1,result:results});
    })
})




module.exports = r ;
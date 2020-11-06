const express = require('express');
const r = express.Router();
const pool = require('../pool.js');

//获取热销榜鲜花
r.get("/hotflowers",(req,res) => {
    let sql = 'SELECT pid,pname,count,flowerSay,material,distribution,gift,specId,price,bigTypeId,littleTitle,tag,img,packing,created_at,originalPrice FROM product WHERE bigTypeId=1 ORDER BY count DESC LIMIT 0,20';
    pool.query(sql,(err,result) => {
        if (err) throw err;
        res.send({message:'查询成功',code:1,result:result});
    }) 
})

//获取特价专区鲜花
r.get('/bargainflowers',(req,res) => {
    let sql = 'SELECT pid,pname,count,flowerSay,material,distribution,gift,specId,price,bigTypeId,littleTitle,tag,img,packing,created_at,originalPrice FROM product WHERE bigTypeId=1 ORDER BY (originalPrice-price) DESC LIMIT 0,20';
    pool.query(sql,(err,result) => {
        if (err) throw err;
        res.send({message:'查询成功',code:1,result:result});
    })
})

//获取新品鲜花
r.get('/newflowers',(req,res) => {
    let sql = 'SELECT pid,pname,count,flowerSay,material,distribution,gift,specId,price,bigTypeId,littleTitle,tag,img,packing,created_at,originalPrice FROM product WHERE bigTypeId=1 ORDER BY created_at DESC LIMIT 0,20';
    pool.query(sql,(err,result) => {
        if (err) throw err;
        res.send({message:'查询成功',code:1,result:result});
    });
})






module.exports = r ;
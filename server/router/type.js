const express = require("express");
const { resolve } = require("path");
const r = express.Router();
const pool = require("../pool.js");

r.get("/detail", (req, res) => {
  let sql = "SELECT bid,bigTypeName,imgtitle FROM bigType";
  let arr1 = [];
  let arr2 = [];
  pool.query(sql, async (err, result1) => {
    if (err) throw err;
    result1.forEach((ele, index) => {
      let bid = ele.bid;
      arr1[index] = new Promise((resolve) => {
        sql = "SELECT c2id,c2Name,bigId FROM class2 WHERE bigId=?";
        pool.query(sql, [bid], (err, result2) => {
          if (err) throw err;
          resolve(result2);
        });
      });
    });
    let data1 = await Promise.all(arr1);

    data1.forEach(async (eles, index) => {
      let arr3 = [];
      eles.forEach((el, i) => {
        let c2id = el.c2id;
        arr3[i] = new Promise((resolve) => {
          sql = "SELECT c3id,c3Name,c2Id,c3Imgs FROM class3 WHERE c2Id=?";
          pool.query(sql, [c2id], (err, result3) => {
            if (err) throw err;
            resolve(result3);
          });
        });
      });
      arr2[index] = await Promise.all(arr3);
      if (index == data1.length - 1) {
        result1.forEach((el, i1) => {
          el.class2 = data1[i1];
          el.class2.forEach((e, i2) => {
            e.class3 = arr2[i1][i2];
          });
        });
        res.send(result1);
      }
    });
  });
});

module.exports = r;

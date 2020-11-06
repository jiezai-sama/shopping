const express = require('express');
const cors = require('cors');
const list = require('./router/list.js');
const detail = require('./router/detail.js');
const index = require('./router/index.js');
const type = require('./router/type.js');
const bodyParser = require('body-parser');
const app = express();
app.listen(3000);
app.use(bodyParser.urlencoded({
    extended:false
}));
app.use(cors({origin:['http://127.0.0.1:8080','http://localhost:8080']}));
app.use('/list',list);
app.use('/detail',detail);
app.use('/index',index);
app.use('/type',type);

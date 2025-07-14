// 导入mysql数据库
// npm install mysql2
const mysql = require('mysql2'); // 用 mysql2

// 创建与数据库的连接
const db = mysql.createPool({
	host: 'localhost',
	user: 'root',
	password: 'wujl1124',
	database: 'back_system'
});

// 测试数据库连接
db.getConnection((err, connection) => {
	if (err) {
		console.error('数据库连接失败:', err.message);
		return;
	}
	console.log('成功连接到数据库');
	connection.release(); // 释放连接回连接池
});

// 对外暴露数据库
module.exports = db
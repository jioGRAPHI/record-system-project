const express = require('express');
const fileUpload = require('express-fileupload');
const bodyParser = require('body-parser');
const mysql = require('mysql');
const path = require('path');
const app = express();

const {getHomePage, getAlumniViewPage, getAlumniEventViewPage, getArchiveViewPage} = require('./routes/index');
const {getAnnivPage, searchBatchPage, searchBatch, searchClassPage, searchClass, searchAdminPage, searchAdmin, searchAdmin2Page, searchAdmin2, searchAlumniPage, searchAlumni, addAlumniPage, addAlumni, addAdminPage, addAdmin, deleteAlumni, deleteArchived, editAlumni, editAlumniPage} = require('./routes/alumni');
const port = 5000;

// create connection to database
// the mysql.createConnection function takes in a configuration object which contains host, user, password and the database name.
const db = mysql.createConnection ({
    host: '127.0.0.1',
    user: 'root',
    password: 'b1gheadJigz0116',
    database: 'project'
});

// connect to database
db.connect((err) => {
    if (err) {
        throw err;
    }
    console.log('Connected to database');
});
global.db = db;

// configure middleware
app.set('port', process.env.port || port); // set express to use this port
app.set('views', __dirname); // set express to look in this folder to render our view
app.set('view engine', 'ejs'); // configure template engine
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json()); // parse form data client
app.use(express.static(path.join(__dirname, 'public'))); // configure express to use public folder
app.use(fileUpload()); // configure fileupload

// routes for the app

app.get('/', getHomePage);
app.get('/view', getAlumniViewPage);

app.get('/archive', getArchiveViewPage);
app.get('/add', addAlumniPage);
app.get('/addAdmin', addAdminPage);
app.get('/search', searchAlumniPage);
app.get('/searchBatch', searchBatchPage);
app.get('/searchClass', searchClassPage);
app.get('/searchAdmin', searchAdminPage);
app.get('/searchAdmin2', searchAdmin2Page);
app.get('/searchAnniv', getAnnivPage);
app.get('/event/:stdno', getAlumniEventViewPage);
app.get('/edit/:stdno', editAlumniPage);
app.get('/delete/:stdno', deleteAlumni);
app.get('/deleteArchived/:stdno', deleteArchived);
app.post('/add', addAlumni);
app.post('/addAdmin', addAdmin);
app.post('/search', searchAlumni);
app.post('/searchBatch', searchBatch);
app.post('/searchClass', searchClass);
app.post('/searchAdmin', searchAdmin);
app.post('/searchAdmin2', searchAdmin2);
app.post('/edit/:stdno', editAlumni);


// set the app to listen on the port
app.listen(port, () => {
    console.log(`Server running on port: ${port}`);
});

// function selectAlumni(){
// 	var connection = mysql.createConnection({
// 		host     : '127.0.0.1',
// 		user     : 'root',
// 		password : 'password',
// 		database : 'project'
// 	});


// 	var stdno = document.getElementById("stdno").value;
// 	var sql = 'SELECT * from alumni WHERE stdno = ?';

// 	connection.query(sql, [stdno], function(err, rows, fields) {
// 	if (!err)
// 		console.log('Result', rows);
// 	else
// 		console.log('Error while performing Query.');
// 	});

// 	 connection.end();
// }
 
// function selectAdmin(){
// 	var connection = mysql.createConnection({
// 		host     : '127.0.0.1',
// 		user     : 'root',
// 		password : 'password',
// 		database : 'project'
// 	});

// 	var empno = document.getElementById("empno").value;
// 	var sql = 'SELECT * from admin WHERE stdno = ?';

// 	connection.query(sql, [stdno] , function(err, rows, fields) {
// 	if (!err)
// 		console.log('Admin: ', rows);
// 	else
// 		console.log('Error while performing Query.');
// 	});

// 	connection.end();
// }
 
// function listByBatch(){
// 	var connection = mysql.createConnection({
// 		host     : '127.0.0.1',
// 		user     : 'root',
// 		password : 'password',
// 		database : 'project'
// 	});

// 	var batch = document.getElementById("batch").value;
// 	var sql = 'SELECT stdno, lname, fname FROM alumni WHERE batch = ? ORDER BY lname, degree';
// 	connection.query(sql, [batch], function(err, rows, fields) {
// 	if (!err)
// 		console.log('List of Alumni for batch 2013: ', rows);
// 	else
// 		console.log('Error while performing Query.');
// 	});

// 	connection.end();
// }

// function listByClass(){
// 	var connection = mysql.createConnection({
// 		host     : '127.0.0.1',
// 		user     : 'root',
// 		password : 'password',
// 		database : 'project'
// 	});

// 	var yg = document.getElementById("yeargraduated").value;
// 	var sql = 'SELECT stdno, lname, fname FROM alumni WHERE yeargraduated = ? ORDER BY lname, degree';
// 	connection.query(sql, [yg], function(err, rows, fields) {
// 	if (!err)
// 		console.log('List of Alumni for class 2013: ', rows);
// 	else
// 		console.log('Error while performing Query.');
// 	});

// 	connection.end();

// }

// function showAnniv(){
// 	var connection = mysql.createConnection({
// 		host     : '127.0.0.1',
// 		user     : 'root',
// 		password : 'password',
// 		database : 'project'
// 	});

// 	var mod = '5';
// 	var eql = '0';
// 	var sql = 'SELECT stdno, lname, fname, CONCAT((YEAR(CURDATE())-yeargraduated), "th Anniversary of Graduation") FROM alumni WHERE MOD(YEAR(CURDATE())-yeargraduated, ?)=?  ORDER BY lname, degree;';
// 	connection.query(sql, [mod, eql], function(err, rows, fields) {
// 	if (!err)
// 		console.log('List of alumni members celebrating their 5th, 10th, 15th,...65th year of graduation: ', rows);
// 	else
// 		console.log('Error while performing Query.');
// 	});

// 	connection.end();
// }

//  var values = "(2013-73149,'Caraan','John Reighmon','V','BSCS',2013,2017,'NULL','NULL','NULL','NULL')";

//  var sql = 'INSERT INTO alumni VALUES ?';
//  connection.query(sql, [values], function(err, result) {
//    if (!err)
//      console.log('1 record inserted, Student Number: ', result.insertId);
//    else
//      console.log('Error while performing Query.');
//  });


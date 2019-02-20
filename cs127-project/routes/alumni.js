const fs = require('fs');

module.exports = {
    searchAlumniPage: (req, res) => {
        res.render('search-alumni.ejs', {
            title: "Welcome to UPLB Alumni Record System | Search"
            ,message: ''
        });
    },
    searchAlumni: (req, res) => {
        let message = '';
        let student_number = req.body.student_number;

        let query = "SELECT * FROM alumni WHERE stdno = '" + student_number + "'";

        db.query(query, (err, result) => {
            if (err) {
                res.redirect('/');
            }
            res.render('index.ejs', {
                title: "Welcome to UPLB Alumni Record System | View Alumni"
                ,alumni: result
            });
        });
    },

    searchBatchPage: (req, res) => {
        res.render('search-year.ejs', {
            title: "Welcome to UPLB Alumni Record System | Search"
            ,message: ''
        });
    },
    searchBatch: (req, res) => {
        let message = '';
        let year = req.body.year;

        let query = "SELECT * FROM alumni WHERE batch = '" + year + "' ORDER BY stdno, lname";

        db.query(query, (err, result) => {
            if (err) {
                res.redirect('/');
            }
            res.render('index.ejs', {
                title: "Welcome to UPLB Alumni Record System | View Alumni"
                ,alumni: result
            });
        });
    },

    searchClassPage: (req, res) => {
        res.render('search-year.ejs', {
            title: "Welcome to UPLB Alumni Record System | Search"
            ,message: ''
        });
    },
    searchClass: (req, res) => {
        let message = '';
        let year = req.body.year;

        let query = "SELECT * FROM alumni WHERE yeargraduated = '" + year + "' ORDER BY stdno, lname";

        db.query(query, (err, result) => {
            if (err) {
                res.redirect('/');
            }
            res.render('index.ejs', {
                title: "Welcome to UPLB Alumni Record System | View Alumni"
                ,alumni: result
            });
        });
    },

    searchAdminPage: (req, res) => {
        res.render('search-admin.ejs', {
            title: "Welcome to UPLB Alumni Record System | Search"
            ,message: ''
        });
    },
    searchAdmin: (req, res) => {
        let message = '';
        let empno = req.body.empno;

        let query = "SELECT * FROM admin WHERE empno = '" + empno + "'";

        db.query(query, (err, result) => {
            if (err) {
                res.redirect('/');
            }else{
                res.redirect('/archive');
            }
        });
    },

    searchAdmin2Page: (req, res) => {
        res.render('search-admin.ejs', {
            title: "Welcome to UPLB Alumni Record System | Search"
            ,message: ''
        });
    },
    searchAdmin2: (req, res) => {
        let message = '';
        let empno = req.body.empno;

        let query = "SELECT * FROM admin WHERE empno = '" + empno + "'";

        db.query(query, (err, result) => {
            if (err) {
                res.redirect('/');
            }else{
                res.redirect('/addAdmin');
            }
        });
    },

    getAnnivPage: (req, res) => {
        var mod = '5';
        var eql = '0';
        var sql = 'SELECT stdno, lname, fname, CONCAT((YEAR(CURDATE())-yeargraduated), "th Anniversary of Graduation")"anniv" FROM alumni WHERE MOD(YEAR(CURDATE())-yeargraduated, ?)=?  ORDER BY lname, degree;';
        db.query(sql, [mod, eql], function(err, rows, fields) {
        if (err){
            res.redirect('/');
        }
        else{
            res.render('anniv.ejs', {
                title: "Welcome to UPLB Alumni Record System | View Anniversaries"
                ,alumni: rows
            });
        }
        });
    },
    addAlumniPage: (req, res) => {
        res.render('add-alumni.ejs', {
            title: "Welcome to UPLB Alumni Record System | Add a new alumni"
            ,message: ''
        });
    },
    addAlumni: (req, res) => {
        let message = '';
        let student_number = req.body.student_number;
        let first_name = req.body.first_name;
        let last_name = req.body.last_name;
        let middle_name = req.body.middle_name;
        let degree = req.body.degree;
        let batch = req.body.batch;
        let yeargraduated = req.body.yeargraduated;
        let occupation = req.body.occupation;
        let contactno = req.body.contactno;
        let email = req.body.email;



        let usernameQuery = "SELECT * FROM alumni WHERE stdno = '" + student_number + "'";

        db.query(usernameQuery, (err, result) => {
            if (err) {
                return res.status(500).send(err);
            }
            if (result.length > 0) {
                message = 'Student Number already exists';
                res.render('add-alumni.ejs', {
                    message,
                    title: "Welcome to UPLB Alumni Record System | Add a new alumni"
                });
            } else {
                if (err) {
                    return res.status(500).send(err);
                }
                let query = "INSERT INTO alumni (stdno, lname, fname, mname, degree, batch, yeargraduated, occupation, contactno, email) VALUES ('" +
                    student_number + "','" +last_name + "', '" + first_name + "', '" + middle_name + "','" + degree + "', '" + batch + "', '" + yeargraduated + "', '" + occupation + "','" + contactno + "','" + email + "');";
                db.query(query, (err, result) => {
                    if (err) {
                        return res.status(500).send(err);
                    }
                    res.redirect('/view');
                });
            }
        });
    },

    addAdminPage: (req, res) => {
        res.render('add-admin.ejs', {
            title: "Welcome to UPLB Alumni Record System | Add a new admin"
            ,message: ''
        });
    },
    addAdmin: (req, res) => {
        let message = '';
        let employee_no = req.body.employee_no;
        let first_name = req.body.first_name;
        let last_name = req.body.last_name;
        let middle_name = req.body.middle_name;
        let yearemployed = req.body.yearemployed;
        let contactno = req.body.contactno;
        let email = req.body.email;

        let usernameQuery = "SELECT * FROM admin WHERE empno = '" + employee_no + "'";

        db.query(usernameQuery, (err, result) => {
            if (err) {
                return res.status(500).send(err);
            }
            if (result.length > 0) {
                message = 'Employee Number already exists';
                res.render('add-admin.ejs', {
                    message,
                    title: "Welcome to UPLB Alumni Record System | Add a new admin"
                });
            } else {
                if (err) {
                    return res.status(500).send(err);
                }
                let query = "INSERT INTO admin (empno, lname, fname, mname, yearemployed, contactno, email) VALUES ('" +
                    employee_no + "','" +last_name + "', '" + first_name + "', '" + middle_name + "','" + yearemployed + "', '" + contactno + "','" + email + "');";
                db.query(query, (err, result) => {
                    if (err) {
                        return res.status(500).send(err);
                    }
                    res.redirect('/view');
                });
            }
        });
    },
    editAlumniPage: (req, res) => {
        let stdnumber = req.params.stdno;
        let query = "SELECT * FROM alumni WHERE stdno = '" + stdnumber + "' ";
        db.query(query, (err, result) => {
            if (err) {
                return res.status(500).send(err);
            }
            res.render('edit-alumni.ejs', {
                title: "Edit Alumni"
                ,alumni: result[0]
                ,message: ''
            });
        });
    },
    editAlumni: (req, res) => {
        let stdnumber = req.params.stdno;
        let student_number = req.body.student_number;
        let first_name = req.body.first_name;
        let last_name = req.body.last_name;
        let middle_name = req.body.middle_name;
        let degree = req.body.degree;
        let batch = req.body.batch;
        let yeargraduated = req.body.yeargraduated;
        let occupation = req.body.occupation;
        let contactno = req.body.contactno;
        let email = req.body.email;

        let query = "UPDATE alumni SET stdno = '" + student_number + "', lname = '" + last_name + "', fname = '" + first_name + "', mname = '" + middle_name + "', degree = '" + degree + "', batch = '" + batch + "', yeargraduated = '" + yeargraduated + "', occupation = '" + occupation + "', contactno = '" + contactno + "', email = '" + email + "' WHERE alumni.stdno = '" + stdnumber + "'";
        db.query(query, (err, result) => {
            if (err) {
                return res.status(500).send(err);
            }
            res.redirect('/');
        });
    },
    deleteAlumni: (req, res) => {
        let stdnumber = req.params.stdno;
        let insertArchive = 'INSERT INTO archive SELECT * from alumni WHERE stdno = "' + stdnumber + '"';
        let deleteUserQuery = 'DELETE FROM alumni WHERE stdno = "' + stdnumber + '"';

        db.query(insertArchive, (err, result) => {
            if (err) {
                return res.status(500).send(err);
            }
            db.query(deleteUserQuery, (err, result) => {
                if (err) {
                    return res.status(500).send(err);
                }
                res.redirect('/');
            });
        });
    },
    deleteArchived: (req, res) => {
        let stdnumber = req.params.stdno;
        let deleteUserQuery = 'DELETE FROM archive WHERE stdno = "' + stdnumber + '"';
        
        db.query(deleteUserQuery, (err, result) => {
            if (err) {
                return res.status(500).send(err);
            }
            res.redirect('/');
        });
    }
};
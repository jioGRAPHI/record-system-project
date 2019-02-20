module.exports = {
    getHomePage: (req, res) => {
        let query = "SELECT * FROM alumni ORDER BY stdno, lname"; 

        // execute query
        db.query(query, (err, result) => {
            if (err) {
                res.redirect('/');
            }
            res.render('homepage.ejs', {
                title: "Welcome to UPLB Alumni Record System"
                ,alumni: result
            });
        });
    },
    getAlumniViewPage: (req, res) => {
        let query = "SELECT * FROM alumni ORDER BY stdno, lname"; 

        // execute query
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
    getArchiveViewPage: (req, res) => {
        let query = "SELECT * FROM archive ORDER BY stdno, lname"; 

        // execute query
        db.query(query, (err, result) => {
            if (err) {
                res.redirect('/');
            }
            res.render('archive.ejs', {
                title: "Welcome to UPLB Alumni Record System | Archives"
                ,alumni: result
            });
        });
    },
    getAlumniEventViewPage: (req, res) => {
        let stdnumber = req.params.stdno;

        let query = "SELECT * FROM event WHERE eventno in (SELECT eventno FROM eventalumni WHERE stdno = '" + stdnumber + "'  GROUP BY stdno) ORDER BY eventno";

        // execute query
        db.query(query, (err, result) => {
            if (err) {
                res.redirect('/view');
            }
            res.render('event.ejs', {
                title: "Welcome to UPLB Alumni Record System | View Events"
                ,event: result
            });
        });
    },
};
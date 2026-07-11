const express = require('express');
const session = require('express-session');
const bodyParser = require('body-parser');
const db = require('./db');

const app = express();
app.use(bodyParser.json());
app.use(express.static('public'));
app.use(express.json());


app.use(session({
    secret: 'yourSecretKey123', // change this to something secure
    resave: false,
    saveUninitialized: true
}));

function isAdmin(req, res, next) {
    if(req.session.isAdmin) {
        next(); // allow access
    } else {
        res.status(403).json({ success: false, message: "Access denied" });
    }
}


app.post('/admin/login', (req, res) => {
    const { username, password } = req.body;

    // Simple hard-coded login
    if(username === 'admin' && password === '1234') {
        req.session.isAdmin = true;  // mark user as admin
        res.json({ success: true, message: "Logged in" });
    } else {
        res.status(401).json({ success: false, message: "Wrong login" });
    }
});

app.post('/admin/logout', (req, res) => {
    req.session.destroy(err => {
        if(err) return res.status(500).json({ success: false });
        res.json({ success: true, message: "Logged out" });
    });
});


app.post('/admin/books', isAdmin, (req, res) => {
    const { title, price } = req.body;
    db.collection('books').insertOne({ title, price })
      .then(result => res.json({ success: true, id: result.insertedId }))
      .catch(err => res.status(500).json({ success: false, message: err.message }));
});




app.post('/admin/add-book', (req, res) => {
    const { title, price } = req.body;

    db.query(
        'INSERT INTO books (title, price) VALUES (?, ?)',
        [title, price],
        (err) => {
            if (err) return res.status(500).send(err);
            res.json({ message: "Book added" });
        }
    );
});


app.get('/admin/books', (req, res) => {
    db.query('SELECT * FROM books', (err, results) => {
        if (err) return res.status(500).send(err);
        res.json(results);
    });
});


app.delete('/admin/books/:id', (req, res) => {
    db.query(
        'DELETE FROM books WHERE id = ?',
        [req.params.id],
        (err) => {
            if (err) return res.status(500).send(err);
            res.json({ message: "Book deleted" });
        }
    );
});

app.listen(3000, () => {
    console.log("Server running on http://localhost:3000");
});


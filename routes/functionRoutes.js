const express = require('express')
const router = express.Router()
const mysql = require('mysql')




const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'cse370project' // Change this to your database name
  });

  db.connect(err => {
    if (err) {
      throw err;
    }
    console.log('Connected to MySQL database');
  });
  router.get('/anime', (req, res) => {
    const query = 'SELECT * FROM Anime';
    db.query(query, (err, results) => {
      if (err) {
        console.error('Error fetching anime data: ' + err.message);
        return;
      }
      const userId = req.session.userId
      res.render('anime', { anime: results, username: req.session.userId });
    });
  });
  router.get('/events/add', (req, res) => {
      res.render('add_events');
    });
  // Handle Movies page
  router.get('/movies', (req, res) => {
    const query = 'SELECT * FROM movies';
    db.query(query, (err, results) => {
      if (err) {
        res.status(500).json({ error: 'Error fetching movie data' });
      } else {
        res.render('movies', { movies: results });
      }
    });
  });



  
  
  router.get('/events',  (req, res) => {
    const query = 'SELECT * FROM events'; // Create an "events" table in your database
    db.query(query, (err, results) => {
      if (err) {
        res.status(500).json({ error: 'Error fetching event data' });
      } else {
        res.render('events', { events: results}); // Pass userIsAdmin as false
      }
    });
  });
  
  
  router.post('/events', (req, res) => {
    const { name, year, location, date, ticket_price, attraction, image_url } = req.body;
  
    // Insert event data, image URL, and event poster URL into the database
    const query = 'INSERT INTO events (name, year, location, date, ticket_price,attraction, image_url) VALUES (?, ?, ?, ?, ?, ?, ?)';
    db.query(query, [name, year, location, date, ticket_price, attraction, image_url], (err, result) => {
      if (err) {
        res.status(500).json({ error: 'Error adding event data' });
      } else {
        res.redirect('/events'); // Redirect to the events page after successful insertion
      }
    });
  });
  
  module.exports = router;
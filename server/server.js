// An Express Server for the backend of the application

import express from 'express';
import cors from 'cors';
import { config } from 'dotenv';
import mongoose from 'mongoose';

// Load environment variables
config();

const app = express();

// Middleware code
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true}));

// Connect to MongDB
mongoose.connect()
   .then(() => console.log('Connected to MongoDB'))
   .catch((err) => console.error('MongoDB connection error: ', err));

// TODO: To implement the routes

// Basic route for testing
app.get('/', (req, res) => {
    res.json({ message : 'Welcome to the Event Ticketing API'});
});
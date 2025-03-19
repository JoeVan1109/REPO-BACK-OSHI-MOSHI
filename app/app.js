import dotenv from 'dotenv';
import express from 'express';
import cors from 'cors';
import path from 'path';
import indexRouter from './routers/index.js';
import { fileURLToPath } from 'url';
import { dirname } from 'path';


const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

dotenv.config();

const app = express();


app.use('/api/assets/bar', express.static(path.join(__dirname, '..', 'app', 'assets', 'bar')));
app.use('/api/assets/collection', express.static(path.join(__dirname, '..', 'app', 'assets', 'collection')));
app.use('/api/assets/icones', express.static(path.join(__dirname, '..', 'app', 'assets', 'icones')));

const corsOptions = {
    origin: 'http://localhost:5173', // mettre l'adresse du front
    methods: 'GET, POST',           
    allowedHeaders: 'Content-Type', 
    credentials: true               
};

app.use(cors(corsOptions));


// Serve static files from the "public" directory
app.use('/public', express.static(path.join(__dirname, 'public')));

// Middleware to parse incoming JSON requests
app.use(express.json());

// Main router for handling API requests
app.use('/', indexRouter);

export default app;

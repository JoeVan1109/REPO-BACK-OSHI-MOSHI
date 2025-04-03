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

// CORS Configuration
const corsOptions = {
    origin: ['https://oshimoshi.fr', 'http://localhost:3456', 'http://oshimoshi.fr:5173'],
    methods: 'GET, POST, PUT, DELETE, OPTIONS',
    allowedHeaders: 'Content-Type, Authorization',
    credentials: true
};

app.use(cors(corsOptions));

// Serve static assets
app.use('/api/assets/bar', express.static(path.join(__dirname, '..', 'app', 'assets', 'bar')));
app.use('/api/assets/collection', express.static(path.join(__dirname, '..', 'app', 'assets', 'collection')));
app.use('/api/assets/icones', express.static(path.join(__dirname, '..', 'app', 'assets', 'icones')));
app.use('/public', express.static(path.join(__dirname, 'public')));

// Middleware to parse JSON
app.use(express.json());

// API routes
app.use('/api', indexRouter);

// Serve the frontend from "dist"
const distPath = path.join(__dirname, '..', 'frontend', 'dist');
app.use(express.static(distPath));

// Handle SPA routing (React/Vue/Angular with Router)
app.get('*', (req, res) => {
    res.sendFile(path.join(distPath, 'index.html'));
});

export default app;

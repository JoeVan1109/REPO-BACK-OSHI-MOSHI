import dotenv from 'dotenv';
import express from 'express';
import cors from 'cors';
import path from 'path';
import indexRouter from './routers/index.js';
import { fileURLToPath } from 'url';
import { dirname } from 'path';

// In ES Modules, `__dirname` is not available like in CommonJS.
// We need to reconstruct it using `fileURLToPath` and `dirname`.
const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

dotenv.config();

const app = express();

// Serve static files from the "bar" directory inside "assets"
// `path.join(__dirname, '..', 'app', 'assets', 'bar')` ensures correct path resolution
app.use('/api/assets/bar', express.static(path.join(__dirname, '..', 'app', 'assets', 'bar')));

// CORS Middleware: Allows cross-origin requests
app.use((req, res, next) => {
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Access-Control-Allow-Methods", "GET, POST");
    res.setHeader("Access-Control-Allow-Headers", "Content-Type");
    res.setHeader("Access-Control-Allow-Credentials", "true");
    next();
});

// Serve static files from the "public" directory
app.use('/public', express.static(path.join(__dirname, 'public')));

// Middleware to parse incoming JSON requests
app.use(express.json());

// Main router for handling API requests
app.use('/', indexRouter);

export default app;

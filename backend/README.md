# Calorify Backend Server

A high-performance FastAPI backend for the Calorify app.

## Features
- AI Food Analysis (Image & Text)
- User Profile & Meal Tracking
- Firebase Authentication
- Push Notifications
- Cron Job System
- Request Logging

## Setup

### Option 1: Docker Compose (Recommended - Strategy 2)
This is the easiest way to run the entire stack (API + Database).

1. Ensure you have **Docker** and **Docker Compose** installed.
2. Setup environment variables:
   ```bash
   cp env.example .env
   # Edit .env with your local settings (e.g., Firebase credentials)
   ```
3. Start the services:
   ```bash
   docker-compose up -d
   ```
   The API will be available at `http://localhost:8000`.

### Option 2: Local Development (Manual)
Use this if you want to run the FastAPI app directly on your machine.

1. Create a virtual environment:
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

3. Setup environment variables:
   ```bash
   cp .env.example .env
   # Edit .env with your local settings
   ```

4. Run the server:
   ```bash
   uvicorn app.main:app --reload
   ```
   *Note: This requires a PostgreSQL database running locally.*

## Deployment (Oracle VM)

To deploy using Strategy 2 (Docker Compose) on your Oracle VM:

1. SSH into your VM.
2. Install Docker:
   ```bash
   curl -fsSL https://get.docker.com -o get-docker.sh
   sudo sh get-docker.sh
   ```
3. Clone your repository and navigate to the `backend` folder.
4. Create your `.env` file from the example.
5. Run `docker-compose up -d`.

## API Documentation
Once the server is running, visit:
- Swagger UI: http://localhost:8000/docs
- ReDoc: http://localhost:8000/redoc

## Admin Tools

### Database Inspection
The database uses PostgreSQL. You can inspect it using:
- **pgAdmin**: Connect using the credentials in your `.env` file.
- **DBeaver** or other SQL clients.

### Log Inspection
API request logs are stored in the `api_logs` table. You can also view them via the command line:
```bash
python scripts/view_logs.py [limit]
```

### Cron Jobs
Cron jobs are managed by APScheduler and their state is stored in the database.
You can view/manage them via the `scheduler` object in the app or by querying the APScheduler tables in PostgreSQL.

# Calorify Backend Server

A high-performance FastAPI backend for the Calorify app.

## Features
- AI Food Analysis (Image & Text)
- User Profile & Meal Tracking
- Firebase Authentication
- Push Notifications
- Cron Job System
- Request Logging

## Multi-Environment Setup (Strategy 2)

This setup runs two separate instances of the backend and database on the same VM using Docker Compose.

### 1. DNS Configuration
Add two **A Records** in your domain provider dashboard pointing to your VM IP:
*   `api` (Production)
*   `api-staging` (Staging)

### 2. Environment Variables
You need to create your Firebase service account JSON files in the `backend/` folder:
*   `firebase-prod.json`
*   `firebase-staging.json`

Check and edit `production.env` and `staging.env` to set your `SECRET_KEY` and other credentials.

### 3. Start the Services
Run the following command to start both Production and Staging environments:
```bash
docker-compose up -d
```

*   **Production API**: Internal port 8000 (VM Port 8000)
*   **Staging API**: Internal port 8000 (VM Port 8001)

### 4. Reverse Proxy (Nginx)
Configure Nginx on your VM to route traffic from your subdomains to the correct ports:

```nginx
# /etc/nginx/sites-available/calorify

server {
    server_name api.yourdomain.com;
    location / {
        proxy_pass http://localhost:8000;
        include proxy_params;
    }
}

server {
    server_name api-staging.yourdomain.com;
    location / {
        proxy_pass http://localhost:8001;
        include proxy_params;
    }
}
```

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

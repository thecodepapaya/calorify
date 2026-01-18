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
You need to place your Firebase service account JSON file in the `backend/` folder:
*   `firebase-adminsdk.json` (Used for both Production and Staging)

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

#### Option 1: pgAdmin 4 (Web UI) - Recommended ⭐
**pgAdmin 4** is the industry-standard PostgreSQL administration tool with a modern, feature-rich web interface.

1. **Start pgAdmin** (if not already running):
   ```bash
   docker-compose up -d pgadmin
   ```

2. **Access pgAdmin**: 
   - Open `http://localhost:8080` (or `http://your-vm-ip:8080`)
   - **Initial Login** (first time only):
     - Email: `admin@calorify.local`
     - Password: `admin`
     - ⚠️ **Change this password after first login!**

3. **Add Database Servers**:
   After logging in, you'll need to register both databases:
   
   **For Production Database:**
   - Right-click "Servers" → "Register" → "Server"
   - **General Tab**:
     - Name: `Calorify Production`
   - **Connection Tab**:
     - Host name/address: `db-prod`
     - Port: `5432`
     - Maintenance database: `calorify_prod`
     - Username: `calorify`
     - Password: `calorify_pwd_prod`
     - ☑ Save password
   - Click "Save"
   
   **For Staging Database:**
   - Right-click "Servers" → "Register" → "Server"
   - **General Tab**:
     - Name: `Calorify Staging`
   - **Connection Tab**:
     - Host name/address: `db-staging`
     - Port: `5432`
     - Maintenance database: `calorify_staging`
     - Username: `calorify`
     - Password: `calorify_pwd_staging`
     - ☑ Save password
   - Click "Save"

4. **Using pgAdmin**:
   - Browse tables, views, and data with a modern tree-view interface
   - Run SQL queries with syntax highlighting
   - Visual query builder
   - Export/import data in multiple formats
   - View and edit table data in a spreadsheet-like interface

#### Option 2: Command Line (psql)
Connect directly to the database container:

**Production:**
```bash
docker exec -it calorify-db-prod psql -U calorify -d calorify_prod
```

**Staging:**
```bash
docker exec -it calorify-db-staging psql -U calorify -d calorify_staging
```

Useful psql commands:
- `\dt` - List all tables
- `\d table_name` - Describe a table structure
- `SELECT * FROM users LIMIT 10;` - Query data
- `\q` - Quit

#### Option 3: Desktop Clients
Connect from your local machine using these tools:

**Connection Details:**
- **Host**: Your VM's public IP address
- **Port**: `5432` (ensure this port is open in your Oracle Cloud Security List)
- **Database**: `calorify_prod` or `calorify_staging`
- **Username**: `calorify`
- **Password**: See `production.env` or `staging.env`

**Recommended Desktop Tools:**
- **DBeaver** (Free, cross-platform): https://dbeaver.io/
- **TablePlus** (Mac/Windows, paid): https://tableplus.com/
- **pgAdmin** (Free, cross-platform): https://www.pgadmin.org/
- **Postico** (Mac only, paid): https://eggerapps.at/postico/

### Log Inspection
API request logs are stored in the `api_logs` table. You can also view them via the command line:
```bash
python scripts/view_logs.py [limit]
```

### Cron Jobs
Cron jobs are managed by APScheduler and their state is stored in the database.
You can view/manage them via the `scheduler` object in the app or by querying the APScheduler tables in PostgreSQL.

## Maintenance & Operations

### Environment URLs
| Feature | Production 🚀 | Staging 🧪 |
| :--- | :--- | :--- |
| **Public API URL** | `https://api-calorify.thecodepapaya.dev` | `https://api-staging-calorify.thecodepapaya.dev` |
| **Interactive Docs** | `/docs` | `/docs` |
| **Health Check** | `/health` | `/health` |
| **Internal Port** | `8000` | `8001` |
| **Database Name** | `calorify_prod` | `calorify_staging` |
| **pgAdmin (DB UI)** | `http://localhost:8080` | `http://localhost:8080` |

### Useful Commands

**See live logs (Production):**
```bash
docker-compose logs -f backend-prod
```

**See live logs (Staging):**
```bash
docker-compose logs -f backend-staging
```

**Update code and rebuild:**
```bash
# After pulling changes from git
docker-compose up -d --build
```

**View API request logs (from DB):**
```bash
docker exec -it calorify-backend-prod python scripts/view_logs.py
```

**Restart all services:**
```bash
docker-compose restart
```

### Flutter Integration
When connecting the Flutter app:
1. Update your service base URLs to the Production/Staging URLs above.
2. Include the Firebase ID Token in the headers:
   `Authorization: Bearer <YOUR_FIREBASE_ID_TOKEN>`

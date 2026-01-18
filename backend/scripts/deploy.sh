#!/bin/bash
# Calorify Backend Deployment Script for Oracle VM (Ubuntu/Debian)

set -e

APP_DIR="/var/www/calorify-backend"
VENV_DIR="$APP_DIR/venv"
PYTHON="python3"

echo "🚀 Starting deployment..."

# 1. Update system and install dependencies
sudo apt-get update
sudo apt-get install -y python3-pip python3-venv nginx postgresql postgresql-contrib libpq-dev

# 2. Setup Database (if not exists)
# Note: You should change these values
DB_NAME="calorify_db"
DB_USER="calorify"
DB_PASS="calorify_pwd"

sudo -u postgres psql -c "CREATE DATABASE $DB_NAME;" || true
sudo -u postgres psql -c "CREATE USER $DB_USER WITH PASSWORD '$DB_PASS';" || true
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE $DB_NAME TO $DB_USER;" || true

# 3. Create app directory and sync code
# (Assuming code is already pushed or we are running from the code dir)
sudo mkdir -p $APP_DIR
sudo chown $USER:$USER $APP_DIR

# 4. Setup virtual environment
if [ ! -d "$VENV_DIR" ]; then
    $PYTHON -m venv $VENV_DIR
fi
source $VENV_DIR/bin/activate
pip install --upgrade pip
pip install -r requirements.txt

# 5. Run migrations
alembic upgrade head

# 6. Setup Systemd service
cat <<EOF | sudo tee /etc/systemd/system/calorify-backend.service
[Unit]
Description=Calorify FastAPI Backend
After=network.target

[Service]
User=$USER
Group=www-data
WorkingDirectory=$APP_DIR
Environment="PATH=$VENV_DIR/bin"
Environment="ENVIRONMENT=production"
ExecStart=$VENV_DIR/bin/uvicorn app.main:app --host 0.0.0.0 --port 8000 --workers 4

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable calorify-backend
sudo systemctl restart calorify-backend

# 7. Setup Nginx
sudo cp nginx.conf /etc/nginx/sites-available/calorify-backend
sudo ln -sf /etc/nginx/sites-available/calorify-backend /etc/nginx/sites-enabled/
sudo rm -f /etc/nginx/sites-enabled/default
sudo nginx -t
sudo systemctl restart nginx

echo "✅ Deployment completed successfully!"

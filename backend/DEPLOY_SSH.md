# SSH Deploy Setup (GitHub Actions)

This repo uses two manual workflows:
- `Deploy Backend (Production)` deploys to **all** servers in `SSH_HOSTS`
- `Deploy Backend (Staging)` deploys to **only the first** host in `SSH_HOSTS`

## 1) Create a deploy user on each VM

```bash
sudo adduser deploy
sudo usermod -aG docker deploy
```

## 2) Generate an SSH keypair (local machine)

```bash
ssh-keygen -t ed25519 -C "gh-actions-deploy" -f ~/.ssh/calorify_deploy
```

## 3) Install the public key on each VM

```bash
ssh-copy-id -i ~/.ssh/calorify_deploy.pub deploy@<VM_IP_OR_HOST>
```

## 4) Add required GitHub secrets

Repository → Settings → Secrets and variables → Actions

- `SSH_PRIVATE_KEY` → contents of `~/.ssh/calorify_deploy`
- `SSH_USER` → `deploy`
- `SSH_HOSTS` → newline-separated hosts (first one is staging)
- `SSH_KNOWN_HOSTS` → output of:
  ```bash
  ssh-keyscan -p 22 <VM1_HOST> <VM2_HOST>
  ```
- `LOG_HOST` → host/IP of the Mumbai VM (central Loki/Grafana)

Optional:
- `SSH_PORT` → default `22`
- `DEPLOY_PATH` → default `~/calorify`

## 5) Update Loki URL for backend services

Set the central Loki URL in:
- `backend/production.env`
- `backend/staging.env`

Replace `http://LOG_HOST:3100` with your real Loki host, e.g.

```bash
http://mumbai-logs.example.com:3100
```

## 6) Open Loki port for log shipping

On the Mumbai VM, allow inbound **3100** from the other VM IPs only.

## 7) Run the workflows

GitHub → Actions →
- `Deploy Backend (Production)`
- `Deploy Backend (Staging)`

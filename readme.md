# 🚀 Express.js with Docker & NGINX Reverse Proxy

![Docker](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)
![Node.js](https://img.shields.io/badge/Node.js-339933?style=for-the-badge&logo=nodedotjs&logoColor=white)
![NGINX](https://img.shields.io/badge/NGINX-009639?style=for-the-badge&logo=nginx&logoColor=white)

A production-ready containerized Express.js application served through an optimized NGINX reverse proxy.

## 📋 Table of Contents
- [Features](#-features)
- [Prerequisites](#-prerequisites)
- [Installation](#-installation)
- [Project Structure](#-project-structure)
- [Configuration](#-configuration)
- [API Endpoints](#-api-endpoints)
- [Deployment](#-deployment)
- [Troubleshooting](#-troubleshooting)

## ✨ Features
- **Lightweight Express.js** web server
- **Docker containerization** with multi-stage builds
- **NGINX reverse proxy** with optimized configuration
- **Health check endpoint** for monitoring
- **Production-ready** setup
- **Single-command deployment**

## 🛠 Prerequisites
- Docker 20.10+
- Docker Compose 2.0+
- Node.js 18+ (for local development)
- Git (optional)

## 📥 Installation
```bash
# Clone the repository (if applicable)
git clone https://github.com/your-repo/express-nginx-docker.git
cd express-nginx-docker

# Build and start containers
docker-compose up -d --build
```

## 🌳 Project Structure
```
.
├── app/
│   ├── app.js          # Express application
│   └── package.json    # Node.js dependencies
├── nginx/
│   └── nginx.conf      # Reverse proxy config
├── Dockerfile          # Express container definition
├── docker-compose.yml  # Orchestration config
└── README.md           # This documentation
```

## ⚙️ Configuration
### Environment Variables
| Variable    | Default | Description                |
|-------------|---------|----------------------------|
| `PORT`      | 3000    | Express server port        |
| `NODE_ENV`  | production | Node environment       |

### Port Mapping
| Container | Host | Protocol |
|-----------|------|----------|
| 3000      | -    | TCP      |
| 80        | 80   | TCP      |

## 🔌 API Endpoints
| Endpoint  | Method | Description          | Response              |
|-----------|--------|----------------------|-----------------------|
| `/`       | GET    | Main endpoint        | "Hello, DevOps!"      |
| `/health` | GET    | Health check         | `{status: "healthy"}` |

## 🚢 Deployment
### Development
```bash
docker-compose up --build
```

### Production
```bash
docker-compose -f docker-compose.yml up -d --build
```

### Common Commands
```bash
# View running containers
docker-compose ps

# View logs
docker-compose logs -f

# Stop containers
docker-compose down
```

## 🐛 Troubleshooting
### Common Issues
1. **Port conflicts**  
   Ensure ports 80 and 3000 are free:  
   ```bash
   sudo lsof -i :80
   ```

2. **Docker permission errors**  
   Add your user to docker group:  
   ```bash
   sudo usermod -aG docker $USER
   ```

3. **NGINX configuration errors**  
   Validate config:  
   ```bash
   docker exec nginx_proxy nginx -t
   ```

## 📄 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

> **Note**: For optimal performance, adjust the NGINX worker processes in `nginx.conf` based on your server's CPU cores.
```

This README includes:
- Modern badge icons
- Clean section organization
- Proper code blocks with syntax highlighting
- Tables for configuration and endpoints
- Troubleshooting guide
- Visual directory tree
- Responsive design elements
- Clear callouts for important notes

Would you like me to add any additional sections or modify the existing ones?

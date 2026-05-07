# Tool-90 — Audit Evidence Auto-Collector

An AI-powered web application for collecting, managing, and analyzing audit evidence.

## Architecture
@'
# Tool-90 — Audit Evidence Auto-Collector

An AI-powered web application for collecting, managing, and analyzing audit evidence.

## Architecture
## Tech Stack

- **Backend:** Java 17, Spring Boot 3.x, Spring Security + JWT
- **Database:** PostgreSQL 15 with Flyway migrations
- **Cache:** Redis 7
- **AI Service:** Python 3.11, Flask 3.x, Groq API (LLaMA-3.3-70b)
- **Frontend:** React 18 + Vite, Tailwind CSS, Axios
- **Infrastructure:** Docker + Docker Compose

## Prerequisites

- Docker Desktop installed and running
- Git installed
- Java 17 (for local development)
- Node.js 18+ (for frontend development)

## Quick Start

### 1. Clone the repository
```bash
git clone https://github.com/nishachandrappa/audit-evidence-auto-collector
cd audit-evidence-auto-collector
```

### 2. Create environment file
```bash
cp .env.example .env
```

### 3. Start all services
```bash
docker-compose up --build
```

### 4. Access the application
- Frontend: http://localhost
- Backend API: http://localhost:8080
- Swagger UI: http://localhost:8080/swagger-ui.html
- AI Service: http://localhost:5000/health

## Environment Variables

| Variable | Description | Default |
|----------|-------------|---------|
| DB_HOST | PostgreSQL host | localhost |
| DB_PORT | PostgreSQL port | 5432 |
| DB_NAME | Database name | tooldb |
| DB_USER | Database username | postgres |
| DB_PASS | Database password | postgres |
| REDIS_HOST | Redis host | localhost |
| REDIS_PORT | Redis port | 6379 |
| JWT_SECRET | JWT signing secret | mysecretkey... |
| MAIL_HOST | SMTP host | smtp.gmail.com |
| MAIL_PORT | SMTP port | 587 |
| MAIL_USER | Email username | your@email.com |
| MAIL_PASS | Email password | yourpassword |
| AI_SERVICE_URL | AI service URL | http://localhost:5000 |
| GROQ_API_KEY | Groq API key | your-groq-key |

## API Endpoints

### Authentication
| Method | Endpoint | Description |
|--------|----------|-------------|
| POST | /api/auth/register | Register new user |
| POST | /api/auth/login | Login and get JWT token |
| GET | /api/auth/refresh | Refresh JWT token |

### Audit Evidence
| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | /api/evidence | Get all evidence (paginated) |
| GET | /api/evidence/{id} | Get evidence by ID |
| POST | /api/evidence | Create new evidence |
| PUT | /api/evidence/{id} | Update evidence |
| DELETE | /api/evidence/{id} | Soft delete evidence |
| GET | /api/evidence/search?q= | Search evidence |
| GET | /api/evidence/stats | Get statistics |
| GET | /api/evidence/export | Export as CSV |

### AI Service
| Method | Endpoint | Description |
|--------|----------|-------------|
| POST | /describe | AI description of evidence |
| POST | /recommend | AI recommendations |
| POST | /generate-report | Generate AI report |
| GET | /health | Health check |

## Security

- JWT token required for all /api/evidence endpoints
- Returns 401 Unauthorized without valid token
- Passwords encrypted with BCrypt
- Rate limiting on AI service (30 req/min)
- SQL injection protection via JPA
- See SECURITY.md for full threat model

## Database Migrations

Flyway manages all schema changes:
- V1__init.sql — Creates audit_evidence table
- V2__audit_log.sql — Creates audit_log table

## Demo Data

30 realistic audit evidence records are automatically seeded on startup covering:
- Security audits
- Compliance checks  
- Network reviews
- Data protection audits

## Team

- Java Developer 1 — Spring Boot, JWT, Docker, DataSeeder
- Java Developer 2 — Flyway, React Frontend, Email
- AI Developer 1 — Flask, Prompts, /describe, /recommend
- AI Developer 2 — Groq, /generate-report, Security

## License

Internship Capstone Project — Tool-90

# Security Documentation — Tool-90 Audit Evidence Auto-Collector

## Team Sign-off
- Java Developer 1: ✅
- Java Developer 2: ✅
- AI Developer 1: ✅
- AI Developer 2: ✅

## Threat Model

| # | Threat | Risk | Mitigation |
|---|--------|------|------------|
| 1 | SQL Injection | HIGH | JPA/Hibernate parameterized queries |
| 2 | JWT Token Theft | HIGH | Short expiry, HTTPS only |
| 3 | Broken Authentication | HIGH | BCrypt password hashing |
| 4 | Prompt Injection (AI) | MEDIUM | Input sanitization in Flask |
| 5 | Rate Limiting Bypass | MEDIUM | flask-limiter 30 req/min |
| 6 | Sensitive Data Exposure | HIGH | No PII in logs or AI prompts |
| 7 | Unauthorized Access | HIGH | JWT + Spring Security on all endpoints |
| 8 | XSS Attack | MEDIUM | React escapes output by default |

## Security Tests Conducted

### 1. Authentication Tests
- ✅ Unauthenticated request returns 401
- ✅ Invalid JWT returns 401
- ✅ Expired JWT returns 401
- ✅ Valid JWT grants access

### 2. Input Validation Tests
- ✅ Empty title returns 400
- ✅ Null status returns 400
- ✅ SQL injection attempt rejected by JPA

### 3. Authorization Tests
- ✅ All /api/evidence endpoints require JWT
- ✅ /api/auth endpoints are public

## Findings Fixed
- All Critical findings: FIXED ✅
- All High findings: FIXED ✅
- Medium findings: IN PROGRESS

## Residual Risks
- JWT version vulnerability (CVE-2024-31033) — upgrade planned post-sprint
- Rate limiting on backend endpoints — planned for Week 4

## Security Checklist
- [x] No secrets in code
- [x] .env in .gitignore
- [x] Passwords hashed with BCrypt
- [x] JWT authentication on all endpoints
- [x] Input validation on all POST/PUT endpoints
- [x] Soft delete (no data permanently lost)
- [x] Error messages dNon't expose internals
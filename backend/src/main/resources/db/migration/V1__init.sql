CREATE TABLE audit_evidence (
    id BIGSERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    status VARCHAR(50) NOT NULL DEFAULT 'OPEN',
    category VARCHAR(100),
    assigned_to VARCHAR(100),
    due_date DATE,
    ai_description TEXT,
    ai_score INTEGER,
    is_deleted BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_audit_evidence_status ON audit_evidence(status);
CREATE INDEX idx_audit_evidence_is_deleted ON audit_evidence(is_deleted);
CREATE INDEX idx_audit_evidence_created_at ON audit_evidence(created_at);
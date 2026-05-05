CREATE TABLE audit_log (
    id BIGSERIAL PRIMARY KEY,
    entity_id BIGINT,
    entity_type VARCHAR(100),
    action VARCHAR(50),
    performed_by VARCHAR(100),
    details TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
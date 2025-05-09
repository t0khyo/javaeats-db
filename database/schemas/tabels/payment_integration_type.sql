CREATE TABLE payment_integration_type (
    payment_integration_type_id SERIAL PRIMARY KEY,
    payment_integration_type_name VARCHAR(50),
    
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    created_by VARCHAR(255) NOT NULL,
    updated_by VARCHAR(255) NOT NULL
);

CREATE TABLE payment_type_config (
    payment_type_config_id SERIAL PRIMARY KEY,
    payment_integration_type_id INTEGER NOT NULL,
    config_details TEXT,
    config_key VARCHAR(100) NOT NULL,
    config_value VARCHAR(255) NOT NULL,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    created_by VARCHAR(255) NOT NULL,
    updated_by VARCHAR(255) NOT NULL,

    FOREIGN KEY (payment_integration_type_id) REFERENCES payment_integration_type(payment_integration_type_id)
);

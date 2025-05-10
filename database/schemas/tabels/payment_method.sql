CREATE TABLE payment_method (
    payment_method_id SERIAL PRIMARY KEY,
    payment_type VARCHAR(50) NOT NULL UNION,
    provider VARCHAR(50),
    provider_data TEXT,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    created_by VARCHAR(255) NOT NULL,
    updated_by VARCHAR(255) NOT NULL
);

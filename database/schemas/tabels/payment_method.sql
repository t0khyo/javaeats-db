CREATE TABLE payment_method (
    payment_method_id SERIAL PRIMARY KEY,
    payment_type VARCHAR(50) NOT NULL,
    provider VARCHAR(50),
    provider_data TEXT
);

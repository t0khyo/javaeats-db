CREATE TABLE preferred_payment_setting (
    preferred_payment_setting_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    payment_type_config_id INTEGER NOT NULL,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    created_by VARCHAR(255) NOT NULL,
    updated_by VARCHAR(255) NOT NULL,

    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
    FOREIGN KEY (payment_type_config_id) REFERENCES payment_type_config(payment_type_config_id)
);

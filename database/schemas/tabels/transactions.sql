CREATE TABLE transactions (
    transaction_id UUID DEFAULT gen_random_uuid(),
    order_id INTEGER NOT NULL,
    payment_method_id INTEGER NOT NULL,
    transaction_status_id INTEGER NOT NULL,
    amount NUMERIC(10,2) NOT NULL CHECK (amount > 0),
    transaction_date TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    created_by VARCHAR(255) NOT NULL,
    updated_by VARCHAR(255) NOT NULL,

    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (payment_method_id) REFERENCES payment_method(payment_method_id),
    FOREIGN KEY (transaction_status_id) REFERENCES transaction_status(transaction_status_id),
    PRIMARY key (transaction_id)
);

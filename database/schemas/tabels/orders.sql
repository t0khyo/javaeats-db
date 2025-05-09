CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    address_id INTEGER NOT NULL,
    order_status_id INTEGER NOT NULL,
    promotion_id INTEGER,
    discount_amount NUMERIC(10,2),
    subtotal NUMERIC(10,2) NOT NULL,
    total NUMERIC(10, 2),
    order_date TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    created_by VARCHAR(255) NOT NULL,
    updated_by VARCHAR(255) NOT NULL,
    
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (address_id) REFERENCES address(address_id),
    FOREIGN KEY (order_status_id) REFERENCES order_status(order_status_id)
);

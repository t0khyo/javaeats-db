CREATE TABLE address (
    address_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    label VARCHAR(50),
    street VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    floor varchar(50),
    apartment VARCHAR(50),
    additional_direction TEXT,
    state VARCHAR(50),
    county VARCHAR(50) DEFAULT 'Egypt',
    zip_code VARCHAR(10),
    is_default BOOLEAN DEFAULT FALSE,
    location GEOGRAPHY(Point,4326),

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    created_by VARCHAR(255) NOT NULL,
    updated_by VARCHAR(255) NOT NULL,

    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);

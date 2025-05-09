CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL UNIQUE,
    phone VARCHAR(15),
    gender SMALLINT NOT NULL DEFAULT 0 CHECK (gender IN (0, 1, 2)), -- Gender codes based on ISO/IEC 5218: 0=Not known, 1=Male, 2=Female, 9=Not applicable

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    created_by VARCHAR(255) NOT NULL,
    updated_by VARCHAR(255) NOT NULL,

    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

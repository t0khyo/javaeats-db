CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    user_type_id INTEGER NOT NULL,

    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    full_name VARCHAR(100) GENERATED ALWAYS AS (first_name || COALESCE(' ' || last_name, 'N')) STORED,
    last_login TIMESTAMPTZ,
    is_deleted BOOLEAN DEFAULT FALSE,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    created_by VARCHAR(255) NOT NULL,
    updated_by VARCHAR(255) NOT NULL,

    FOREIGN KEY (user_type_id) REFERENCES user_type(user_type_id)
);

CREATE TABLE promotion (
    promotion_id SERIAL PRIMARY KEY,
    code VARCHAR(50) NOT NULL UNIQUE,
    promotion_name VARCHAR(100),
    discount_percent NUMERIC(5,2) NOT NULL CHECK (discount_percent > 0 AND discount_percent <= 100),
    max_discount NUMERIC(10,2) NOT NULL CHECK(max_discount > 0),
    start_at TIMESTAMPTZ NOT NULL,
    end_at TIMESTAMPTZ NOT NULL,
    active BOOLEAN NOT NULL DEFAULT TRUE,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    created_by VARCHAR(255) NOT NULL,
    updated_by VARCHAR(255) NOT NULL,

    CHECK (start_at < end_at)
);

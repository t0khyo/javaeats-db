CREATE TABLE restaurant_details (
    restaurant_details_id SERIAL PRIMARY KEY,
    restaurant_id INTEGER NOT NULL,
    description TEXT,
    address TEXT,
    phone VARCHAR(15),
    estimated_delivery_time INTERVAL, 
    open_time TIME NOT NULL,
    close_time TIME NOT NULL,
    location GEOGRAPHY(Point,4326) NOT NULL,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    created_by VARCHAR(255) NOT NULL,
    updated_by VARCHAR(255) NOT NULL,

    FOREIGN KEY (restaurant_id) REFERENCES restaurant(restaurant_id) ON DELETE CASCADE
);

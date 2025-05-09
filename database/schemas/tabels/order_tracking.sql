CREATE TABLE order_tracking (
    order_id INTEGER NOT NULL,
    current_location GEOGRAPHY(Point,4326),
    estimated_time INTERVAL,

    FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE,
    PRIMARY KEY (order_id)
);

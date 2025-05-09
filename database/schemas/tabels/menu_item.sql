CREATE TABLE menu_item (
    menu_item_id SERIAL PRIMARY KEY,
    menu_id INTEGER NOT NULL,
    menu_item_name VARCHAR(50) NOT NULL,
    price NUMERIC(10,2) NOT NULL CHECK (price > 0),
    available BOOLEAN NOT NULL DEFAULT TRUE,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    created_by VARCHAR(255) NOT NULL,
    updated_by VARCHAR(255) NOT NULL,

    FOREIGN KEY (menu_id) REFERENCES menu(menu_id) ON DELETE CASCADE
);

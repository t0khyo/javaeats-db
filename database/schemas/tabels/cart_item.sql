CREATE TABLE cart_item (
    cart_item_id SERIAL PRIMARY KEY,
    cart_id      INTEGER NOT NULL,
    menu_item_id INTEGER NOT NULL,
    quantity     INTEGER NOT NULL CHECK(quantity > 0),

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    created_by VARCHAR(255) NOT NULL,
    updated_by VARCHAR(255) NOT NULL,

    FOREIGN KEY (cart_id) REFERENCES cart(cart_id) ON DELETE CASCADE,
    FOREIGN KEY (menu_item_id) REFERENCES menu_item(menu_item_id)
);

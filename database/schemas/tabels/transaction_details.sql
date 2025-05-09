CREATE TABLE transaction_details (
    transaction_id uuid NOT NULL,
    details TEXT,

    FOREIGN KEY (transaction_id) REFERENCES transactions(transaction_id),
    PRIMARY KEY (transaction_id)
);

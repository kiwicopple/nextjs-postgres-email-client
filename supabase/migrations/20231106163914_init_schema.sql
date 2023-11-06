
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE emails (
    id SERIAL PRIMARY KEY,
    sender_id INTEGER REFERENCES users(id),
    recipient_id INTEGER REFERENCES users(id),
    subject VARCHAR(255),
    body TEXT,
    sent_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE folders (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE user_folders (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    folder_id INTEGER REFERENCES folders(id)
);

CREATE TABLE email_folders (
    id SERIAL PRIMARY KEY,
    email_id INTEGER REFERENCES emails(id),
    folder_id INTEGER REFERENCES folders(id)
);
-- Tabela users
CREATE TABLE users (
    id BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,  -- Change SERIAL to BIGINT
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL
);

-- Tabela companies
CREATE TABLE companies (
    id BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,  -- Change SERIAL to BIGINT
    name VARCHAR(255) NOT NULL UNIQUE
);


-- Tabela user_company
CREATE TABLE user_company (
    user_id BIGINT NOT NULL,  -- Ensure user_id is BIGINT to match the id column in users
    company_id BIGINT NOT NULL,  -- Ensure company_id is BIGINT to match the id column in companies
    permission CHAR(1) NOT NULL,
    PRIMARY KEY (user_id, company_id),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (company_id) REFERENCES companies(id) ON DELETE CASCADE
);

CREATE SEQUENCE companies_SEQ START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE users_SEQ START WITH 1 INCREMENT BY 1;

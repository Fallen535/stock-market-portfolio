CREATE DATABASE stock_market;
USE stock_market;
CREATE TABLE companies (
    company_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    ticker VARCHAR(10) NOT NULL,
    industry VARCHAR(255),
    sector VARCHAR(255),
    market_cap DECIMAL(15, 2)
);
CREATE TABLE stock_prices (
    price_id INT AUTO_INCREMENT PRIMARY KEY,
    company_id INT,
    date DATE NOT NULL,
    open DECIMAL(10, 2),
    close DECIMAL(10, 2),
    high DECIMAL(10, 2),
    low DECIMAL(10, 2),
    volume BIGINT,
    FOREIGN KEY (company_id) REFERENCES companies(company_id)
);
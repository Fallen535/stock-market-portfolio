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
INSERT INTO companies (name, ticker, industry, sector, market_cap) VALUES
('Nvidia Corp.', 'NVDA', 'Technology', 'Semiconductors', 17.7),
('Alphabet Inc.', 'GOOG', 'Technology', 'Internet', 6.0),
('Meta Platforms Inc.', 'META', 'Technology', 'Social Media', 8.2),
('Tesla Inc.', 'TSLA', 'Consumer Discretionary', 'Automobiles', 25.9),
('JPMorgan Chase & Co.', 'JPM', 'Financials', 'Banking', 8.1),
('Exxon Mobil Corp.', 'XOM', 'Energy', 'Oil & Gas', 13.9),
('Mastercard Inc.', 'MA', 'Financials', 'Payment Systems', 18.2),
('Chevron Corp.', 'CVX', 'Energy', 'Oil & Gas', 21.1),
('Advanced Micro Devices Inc.', 'AMD', 'Technology', 'Semiconductors', 24.8),
('Salesforce Inc.', 'CRM', 'Technology', 'Software', 0.0);
SHOW DATABASES;
USE stock_market;
SHOW tables;
DESCRIBE companies;
SELECT * FROM companies;
SET @company_id = (SELECT company_id FROM companies WHERE ticker = 'NVDA');
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/NVDA.csv'
INTO TABLE stock_prices
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@date, @open, @high, @low, @close, @ignore, @volume)
SET company_id = @company_id, 
    date = STR_TO_DATE(@date, '%Y-%m-%d'), 
    open = @open, 
    close = @close, 
    high = @high, 
    low = @low, 
    volume = @volume;
SET @company_id = (SELECT company_id FROM companies WHERE ticker = 'GOOG');
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/GOOG.csv'
INTO TABLE stock_prices
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@date, @open, @high, @low, @close, @ignore, @volume)
SET company_id = @company_id, 
    date = STR_TO_DATE(@date, '%Y-%m-%d'), 
    open = @open, 
    close = @close, 
    high = @high, 
    low = @low, 
    volume = @volume;
SET @company_id = (SELECT company_id FROM companies WHERE ticker = 'CRM');
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/CRM.csv'
INTO TABLE stock_prices
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@date, @open, @high, @low, @close, @ignore, @volume)
SET company_id = @company_id, 
    date = STR_TO_DATE(@date, '%Y-%m-%d'), 
    open = @open, 
    close = @close, 
    high = @high, 
    low = @low, 
    volume = @volume;
SET @company_id = (SELECT company_id FROM companies WHERE ticker = 'AMD');
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/AMD.csv'
INTO TABLE stock_prices
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@date, @open, @high, @low, @close, @ignore, @volume)
SET company_id = @company_id, 
    date = STR_TO_DATE(@date, '%Y-%m-%d'), 
    open = @open, 
    close = @close, 
    high = @high, 
    low = @low, 
    volume = @volume;
SET @company_id = (SELECT company_id FROM companies WHERE ticker = 'CVX');
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/CVX.csv'
INTO TABLE stock_prices
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@date, @open, @high, @low, @close, @ignore, @volume)
SET company_id = @company_id, 
    date = STR_TO_DATE(@date, '%Y-%m-%d'), 
    open = @open, 
    close = @close, 
    high = @high, 
    low = @low, 
    volume = @volume;
SET @company_id = (SELECT company_id FROM companies WHERE ticker = 'JPM');
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/JPM.csv'
INTO TABLE stock_prices
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@date, @open, @high, @low, @close, @ignore, @volume)
SET company_id = @company_id, 
    date = STR_TO_DATE(@date, '%Y-%m-%d'), 
    open = @open, 
    close = @close, 
    high = @high, 
    low = @low, 
    volume = @volume;
SET @company_id = (SELECT company_id FROM companies WHERE ticker = 'MA');
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/MA.csv'
INTO TABLE stock_prices
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@date, @open, @high, @low, @close, @ignore, @volume)
SET company_id = @company_id, 
    date = STR_TO_DATE(@date, '%Y-%m-%d'), 
    open = @open, 
    close = @close, 
    high = @high, 
    low = @low, 
    volume = @volume;
SET @company_id = (SELECT company_id FROM companies WHERE ticker = 'META');
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/META.csv'
INTO TABLE stock_prices
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@date, @open, @high, @low, @close, @ignore, @volume)
SET company_id = @company_id, 
    date = STR_TO_DATE(@date, '%Y-%m-%d'), 
    open = @open, 
    close = @close, 
    high = @high, 
    low = @low, 
    volume = @volume;
SET @company_id = (SELECT company_id FROM companies WHERE ticker = 'TSLA');
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/TSLA.csv'
INTO TABLE stock_prices
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@date, @open, @high, @low, @close, @ignore, @volume)
SET company_id = @company_id, 
    date = STR_TO_DATE(@date, '%Y-%m-%d'), 
    open = @open, 
    close = @close, 
    high = @high, 
    low = @low, 
    volume = @volume;
SET @company_id = (SELECT company_id FROM companies WHERE ticker = 'XOM');
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/XOM.csv'
INTO TABLE stock_prices
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@date, @open, @high, @low, @close, @ignore, @volume)
SET company_id = @company_id, 
    date = STR_TO_DATE(@date, '%Y-%m-%d'), 
    open = @open, 
    close = @close, 
    high = @high, 
    low = @low, 
    volume = @volume;
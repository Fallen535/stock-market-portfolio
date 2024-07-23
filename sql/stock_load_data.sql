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
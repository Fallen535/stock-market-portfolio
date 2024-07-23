USE stock_market;
SELECT company_id, name, ticker
FROM companies
ORDER BY name;
  
USE stock_market;
SELECT MAX(close) FROM stock_prices WHERE company_id = (SELECT company_id FROM companies WHERE ticker = 'NVDA');
  
USE stock_market;
SELECT c.name, c.ticker, sp.date, sp.close
FROM stock_prices sp
JOIN companies c ON sp.company_id = c.company_id
WHERE sp.date = (SELECT MAX(date) FROM stock_prices WHERE company_id = c.company_id);
  
USE stock_market;
SELECT AVG(close) AS average_close
FROM stock_prices
WHERE company_id = (SELECT company_id FROM companies WHERE ticker = 'META')
AND date BETWEEN '2023-11-01' AND '2023-11-30';
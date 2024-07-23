# stock-market-portfolio
An SQL project analysing stock market data sourced from Yahoo Finance.

## SWL Files

- **`sql/stock_create_tables.sql`**: Contains SQL commands to create the necessary tables for the project.
- **`sql/stock_load_data.sql`**: Contains SQL commands to load data from CSV files into the database tables.
- **`sql/stock_example_queries.sql`**: Contains example queries for analyzing the data.

## Instructions

1. **Setup the database**:
   - Open MySQL command-line client or your preferred MySQL client.
   - Execute the `stock_create_tables.sql` script to create the necessary tables.
   - Execute the `stock_load_data.sql` script to load data from CSV files into the tables.

2. **Running queries**:
   - Use the `stock_example_queries.sql` script to run example queries and analyze the data.

## Project structure

- **`sql/`**: Contains SQL scripts for setting up and querying the database.
- **`data/`**: Contains CSV files with stock market data from Yahoo Finance

## Example queries
- To display the list of all companies in the analysis
  ```sql
  USE stock_market;
  SELECT company_id, name, ticker
  FROM companies
  ORDER BY name;

- To find the highest closing price for Nvidia:
  ```sql
  USE stock_market;
  SELECT MAX(close) FROM stock_prices WHERE company_id = (SELECT company_id FROM companies WHERE ticker = 'NVDA');

- Latest closing price for each company
  ```sql
  USE stock_market;
  SELECT c.name, c.ticker, sp.date, sp.close
  FROM stock_prices sp
  JOIN companies c ON sp.company_id = c.company_id
  WHERE sp.date = (SELECT MAX(date) FROM stock_prices WHERE company_id = c.company_id);

- To find the average closing price for META in November 2023
  ```sql
  USE stock_market;
  SELECT AVG(close) AS average_close
  FROM stock_prices
  WHERE company_id = (SELECT company_id FROM companies WHERE ticker = 'META')
    AND date BETWEEN '2023-11-01' AND '2023-11-30';
  

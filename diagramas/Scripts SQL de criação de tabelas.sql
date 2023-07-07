CREATE TABLE UserAccount (
  userId INT PRIMARY KEY,
  firstName VARCHAR NOT NULL,
  lastName VARCHAR NOT NULL,
  email VARCHAR NOT NULL,
  phoneNumber VARCHAR NOT NULL,
  password VARCHAR NOT NULL
);

CREATE TABLE BankAccount (
  accountId INT PRIMARY KEY,
  userId INT NOT NULL,
  bankName VARCHAR NOT NULL,
  accountNumber VARCHAR NOT NULL,
  balance DECIMAL NOT NULL,
  FOREIGN KEY (userId) REFERENCES UserAccount(userId)
);

CREATE TABLE Transaction (
  transactionId INT PRIMARY KEY,
  accountId INT NOT NULL,
  type VARCHAR NOT NULL,
  amount DECIMAL NOT NULL,
  date DATE NOT NULL,
  FOREIGN KEY (accountId) REFERENCES BankAccount(accountId)
);

CREATE TABLE ExpenseCategory (
  categoryId INT PRIMARY KEY,
  categoryName VARCHAR NOT NULL
);

CREATE TABLE TaxCalculation (
  calculationId INT PRIMARY KEY,
  userId INT NOT NULL,
  transactionId INT NOT NULL,
  taxableIncome DECIMAL NOT NULL,
  taxAmount DECIMAL NOT NULL,
  FOREIGN KEY (userId) REFERENCES UserAccount(userId),
  FOREIGN KEY (transactionId) REFERENCES Transaction(transactionId)
);

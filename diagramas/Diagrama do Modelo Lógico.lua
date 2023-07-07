--[Diagrama do Modelo Lógico:]

+-------------------+            +-------------------+
|    UserAccount    |            |   BankAccount     |
+-------------------+            +-------------------+
| userId (PK)       |            | accountId (PK)    |
| firstName         |            | userId (FK)       |
| lastName          |<---------> | bankName          |
| email             |            | accountNumber     |
| phoneNumber       |            | balance           |
| password          |            +-------------------+
+-------------------+

         | 1          *            
         |
         |
         v
         
+-------------------+            
|   Transaction     |            
+-------------------+            
| transactionId (PK)|            
| accountId (FK)    |            
| type              |            
| amount            |            
| date              |            
+-------------------+            
         
         | 0:1       *
         |
         |
         v
         
+-------------------+            
| ExpenseCategory   |            
+-------------------+            
| categoryId (PK)   |            
| categoryName      |            
+-------------------+            
         
         | 0:1       *
         |
         |
         v
         
+-------------------+            
| TaxCalculation    |            
+-------------------+            
| calculationId (PK)|            
| userId (FK)       |            
| transactionId (FK)|            
| taxableIncome     |            
| taxAmount         |            
+-------------------+            







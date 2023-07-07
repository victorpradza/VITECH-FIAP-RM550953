--[Diagrama do Modelo Físico]

UserAccount
+--------------+--------------+------+-----+---------+-------+
|   Column     |     Type     | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
|   userId     |    INT       |  NO  | PRI |  NULL   |       |
|  firstName   |    VARCHAR   |  NO  |     |  NULL   |       |
|  lastName    |    VARCHAR   |  NO  |     |  NULL   |       |
|   email      |    VARCHAR   |  NO  |     |  NULL   |       |
| phoneNumber  |    VARCHAR   |  NO  |     |  NULL   |       |
|  password    |    VARCHAR   |  NO  |     |  NULL   |       |
+--------------+--------------+------+-----+---------+-------+

BankAccount
+----------------+--------------+------+-----+---------+-------+
|     Column     |     Type     | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
|   accountId    |    INT       |  NO  | PRI |  NULL   |       |    
|    userId      |    INT       |  NO  | MUL |  NULL   |       |    
|   bankName     |    VARCHAR   |  NO  |     |  NULL   |       |    
| accountNumber  |    VARCHAR   |  NO  |     |  NULL   |       |    
|    balance     |    DECIMAL   |  NO  |     |  NULL   |       |    
+----------------+--------------+------+-----+---------+-------+

Transaction
+----------------+--------------+------+-----+---------+-------+
|   Column       |     Type     | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| transactionId  |    INT       |  NO  | PRI |  NULL   |       |
|   accountId    |    INT       |  NO  | MUL |  NULL   |       |
|      type      |    VARCHAR   |  NO  |     |  NULL   |       |
|    amount      |    DECIMAL   |  NO  |     |  NULL   |       |
|      date      |    DATE      |  NO  |     |  NULL   |       |
+----------------+--------------+------+-----+---------+-------+

ExpenseCategory
+-----------------+--------------+------+-----+---------+-------+
|    Column       |     Type     | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
|  categoryId     |    INT       |  NO  | PRI |  NULL   |       |
|  categoryName   |    VARCHAR   |  NO  |     |  NULL   |       |
+-----------------+--------------+------+-----+---------+-------+


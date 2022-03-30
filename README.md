Bank tech test
Today, you'll practice doing a tech test.

For most tech tests, you'll essentially have unlimited time. This practice session is about producing the best code you can when there is a minimal time pressure.

You'll get to practice your OO design and TDD skills.

You'll work alone, and you'll also review your own code so you can practice reflecting on and improving your own work.

Specification
Requirements
You should be able to interact with your code via a REPL like IRB or Node. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).
Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2023
And a deposit of 2000 on 13-01-2023
And a withdrawal of 500 on 14-01-2023
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00


Feature Test:

3.0.0 :001 > require './lib/bank'
 => true 
 => false 
3.0.0 :003 > account = Bank.new
 => #<Bank:0x0000000138130c70 @balance=0, @transactions=[]> 
 => [#<Transaction:0x00000001379668f0 @date="11/12/2022", @credit=500, @debit="", @acc_balance=500>] 
3.0.0 :005 > account.withdraw("20/04/2022", 400)
 => [#<Transaction:0x00000001379668f0 @date="11/12/2022", @credit=500, @debit="", @acc_balance=500>, #<Transaction:0x0000000105016340 @date="20/04/2022", @credit="", @debit=400, @acc_balance=100>] 
3.0.0 :006 > Statement.print(account.transactions)
date || credit || debit || balance

 20/04/2022||  || 400 || 100

 11/12/2022|| 500 ||  || 500
 
 => [#<Transaction:0x00000001379668f0 @date="11/12/2022", @credit=500, @debit="", @acc_balance=500>, #<Transaction:0x0000000105016340 @date="20/04/2022", @credit="", @debit=400, @acc_balance=100>] 
3.0.0 :007 > account.deposit('11/12/2022', 500)
 => [#<Transaction:0x00000001379668f0 @date="11/12/2022", @credit=500, @debit="", @acc_balance=500>, #<Transaction:0x0000000105016340 @date="20/04/2022", @credit="", @debit=400, @acc_balance=100>, #<Transaction:0x00000001381496d0 @date="11/12/2022", @credit=500, @debit="", @acc_balance=600>] 
3.0.0 :008 > account.withdraw("20/04/2022", 400)
 => [#<Transaction:0x00000001379668f0 @date="11/12/2022", @credit=500, @debit="", @acc_balance=500>, #<Transaction:0x0000000105016340 @date="20/04/2022", @credit="", @debit=400, @acc_balance=100>, #<Transaction:0x00000001381496d0 @date="11/12/2022", @credit=500, @debit="", @acc_balance=600>, #<Transaction:0x00000001380b5200 @date="20/04/2022", @credit="", @debit=400, @acc_balance=200>] 
3.0.0 :009 > Statement.print(account.transactions)

date || credit || debit || balance

 20/04/2022||  || 400 || 200

 11/12/2022|| 500 ||  || 600

 20/04/2022||  || 400 || 100

 11/12/2022|| 500 ||  || 500
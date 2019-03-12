

## Requirements

Deposits, withdrawal.
Account statement (date, amount, balance) printing.


## Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00

## User stories

As a customer,
So I know how much money I have,
I want to view my account balance

As a customer,
So I can store money at the bank,
I want to deposit a sum of money in my account

As a customer,
So I can use money stored at the bank,
I want to withdraw a sum of money from my account

As a customer,
So I can identify my deposits and withdrawals on my bank statement,
I want to record the date I withdraw & deposit money

As a customer,
So I can see my bank activity,
I want to view a copy of all transactions from a particular month, with credit, debit & balance (in the format above)

## Technologies

* Ruby 2.5.1

Introduction - the project's aim
Launch

Describe how to install dependencies, run your tests, and run the project?

Describe your approach?

Describe how you structured your code and why?


# Bank Tech Test

## Introduction

Bank tech test is a program for customers of banks that lets them deposit money, withdraw money & view their account statement.

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

```

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

```

## How to run this program

* Clone this repository
* Run `bundle install` to install dependencies
* Run `Rspec` to run tests


## IRB screenshot of running my app

```

2.5.1 :001 > require './lib/bank_account.rb'
 => true
2.5.1 :002 > require './lib/bank_statement.rb'
 => false
2.5.1 :003 > statement = BankStatement.new
 => #<BankStatement:0x00007f8d070fbba8 @transactions=[]>
2.5.1 :004 > account = BankAccount.new(statement)
 => #<BankAccount:0x00007f8d070ed350 @balance=0, @bank_statement=#<BankStatement:0x00007f8d070fbba8 @transactions=[]>>
2.5.1 :005 > account.deposit(100)
 => [["03/12/2019", 100, "", 100]]
2.5.1 :006 > account.deposit(50)
 => [["03/12/2019", 100, "", 100], ["03/12/2019", 50, "", 150]]
2.5.1 :007 > account.withdraw(25)
 => [["03/12/2019", 100, "", 100], ["03/12/2019", 50, "", 150], ["03/12/2019", "", 25, 125]]
2.5.1 :008 > statement.display_statement
date || credit || debit || balance
03/12/2019 ||  || 25 || 125
03/12/2019 || 50 ||  || 150
03/12/2019 || 100 ||  || 100

```

## Approach & Structure

Before writing code, I planned out the eventual classes. I started with a feature test, before adding unit tests for individual features.

I separated my code into 2 classes

  * BankAccount - this class lets users deposit and withdraw money
  * BankStatement - this class lets users view their account statement

By structuring the code in this way, each class has a distinct responsibility separate from one another.

## Technologies

* Ruby 2.5.1


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

## How to run this program

* Clone this repository
* Run `bundle install` to install dependencies
* Run `Rspec` to run tests


## User Stories

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

## Structure & Approach

I separated my code into 2 classes

  * BankAccount - this class lets users deposit and withdraw money
  * BankStatement - this class lets users view their account statement

By structuring the code in this way, each class has a distinct responsibility separate from one another.

## Technologies

* Ruby 2.5.1

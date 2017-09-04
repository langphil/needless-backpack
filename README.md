Personal Bank Account (tech test practice)
===================
Replicating the functionality of a bank account that can be interacted with via a CLI (IRB / PRY).

## Install
Clone the repo
* git clone git@github.com:langphil/needless-backpack.git

Move into the directory
* cd needless-backpack

Install the Gems
* bundle install

## Tests
Run rspec by calling
* rspec

## Code Quality
Check the quality of the code with Rubocop
* rubocop

## Dependencies
* [Rspec](http://rspec.info/)
* [Rubocop](https://github.com/bbatsov/rubocop)
* [Pry](http://pryrepl.org/)
* [Rake](https://rubygems.org/gems/rake/versions/10.4.2)
* [Simplecov](https://github.com/colszowka/simplecov)

## Test specification
* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

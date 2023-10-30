package Groovy

class AtmMain {
    static main(args) {
        // Creating object for Class
        AtmOperations atm = new AtmOperations(10000) 
        // Object for method deposited amount
        def depositedAmount = atm.deposit(5000)
        println depositedAmount
        // Object for method debited amount
        def debitedAmount = atm.withDraw(2000.80)
        println debitedAmount
        // Calling object of method checking account balance
        def currentBalance = atm.checkAccountBalance()
        println "Your Account Balance: $currentBalance"
        // Object for method pin
        def enterPin = atm.providePin(4242)
        println enterPin
        // Object for method reset pin
        def resetPin = atm.resetPin(4242, 2945)
        println resetPin
    }
}
// Abstract class representing ATM functionality
abstract class ATM {
    abstract double checkAccountBalance()
    abstract String providePin(int pin)
    abstract String resetPin(int oldPin, int newPin)
    abstract String withDraw(double amount)
}
class AtmOperations extends ATM {
    double accountBalance;
    int pin = 4642
    AtmOperations(double accountBalance){
        this.accountBalance = accountBalance
    }
// Method to check how much amount credited current balance
    String deposit(double creditedAmount) {
        if (creditedAmount > 0) {
            accountBalance += creditedAmount
            // println "Updated Account Balance after credit: $accountBalance"
            return "Your account has been credited with: $creditedAmount"
        }
    }
// Method to check how much amount withdrawed from current balance
    String withDraw(double withDrawnAmount) {
        if (withDrawnAmount <= accountBalance) {
            accountBalance -= withDrawnAmount
            // println "Updated Account Balance after: $accountBalance"
            return "Your account has been debited with: $withDrawnAmount"
        } else {
            return "Insufficient Funds"
        }
    }
//  Method that checks current account Balance
    double checkAccountBalance() {
        return accountBalance
    }
// Method to check whether the already set pin is matching with user given pin or not
    String providePin(int userPin) {
        if (pin == userPin) {
            return "PIN verified"
        } else {
            return "Incorrect PIN"
        }
    }
// Method to reset the old pin
    String resetPin(int oldPin, int newPin) {
        if (pin == oldPin) {
            pin = newPin
            return "PIN changed successfully"
        } else {
            return "Incorrect Old PIN, PIN reset failed"
        }
    }
}

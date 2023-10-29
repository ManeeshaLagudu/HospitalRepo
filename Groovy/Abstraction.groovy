package Groovy

class AtmMain {
    static main(args) {
        AtmOperations atm = new AtmOperations()
        def depositedAmount = atm.deposit(5000)
        println depositedAmount
        def debitedAmount = atm.withDraw(2000.80)
        println debitedAmount
        def enterPin = atm.providePin(4642)
        println enterPin
        def resetPin = atm.resetPin(4642, 2945)
        println resetPin
        def currentBalance = atm.checkAccountBalance()
        println "Your Account Balance: $currentBalance"
    }
}

// Abstract class representing ATM functionality
abstract class ATM {
    double accountBalance 
    int pin 
    abstract double checkAccountBalance()
    abstract String providePin(int pin)
    abstract String resetPin(int oldPin, int newPin)
    abstract String withDraw(double amount)
}

class AtmOperations extends ATM {
    double accountBalance = 10000.57
    int pin = 4642

    double checkAccountBalance() {
        return accountBalance
    }

    String withDraw(double withDrawnAmount) {
        if (withDrawnAmount > 0 && accountBalance >= withDrawnAmount) {
            accountBalance -= withDrawnAmount
            return "Your account has been debited with: $withDrawnAmount"
        } else {
            return "Insufficient Funds"
        }
    }

    String deposit(double creditedAmount) {
        if (creditedAmount > 0) {
            accountBalance += creditedAmount
            return "Your account has been credited with: $creditedAmount"
        }
    }

    String providePin(int pin) {
        if (this.pin == pin) {
            return "PIN verified"
        } else {
            return "Incorrect PIN"
        }
    }

    String resetPin(int oldPin, int newPin) {
        if (this.pin == oldPin) {
            this.pin = newPin
            return "PIN changed successfully"
        } else {
            return "Incorrect Old PIN, PIN reset failed"
        }
    }
}

package Groovy

class BankAccount{
    private double accountBalance
    BankAccount(double accountBalance){
        this.accountBalance = accountBalance
    }
    def deposit(double amountTransfer){
            accountBalance += amountTransfer
            return "Your account has been credited with Rs: " + amountTransfer
    }
    def withDraw (double amountWithDrawn ){
        if (amountWithDrawn <= accountBalance){
            accountBalance -= amountWithDrawn
            return "Your account has been debited with Rs: " + amountWithDrawn
        }
        else {
            return "Insufficient funds"
        }
    }
    double displayBalance (){
        return accountBalance
    }
}

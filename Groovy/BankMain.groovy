import Groovy.BankAccount

class BankMain{
    static main(args) {
        def BankAccount account = new BankAccount(10000)
        def creditedAmount = account.deposit(10.56)
        println(creditedAmount)
        def debitedAmount = account.withDraw(1050000.67)
        println(debitedAmount)
        def newAccountBalance = account.displayBalance()
        println("Current balance of your account is: " + newAccountBalance)
    }
}
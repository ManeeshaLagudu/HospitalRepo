import Groovy.BankAccount

class BankMain{
    static main(args) {
        def BankAccount acc = new BankAccount(10000)
        def creditedAmount = acc.deposit(10.56)
        println(creditedAmount)
        def debitedAmount = acc.withDraw(1050000.67)
        println(debitedAmount)
        def newAccountBalance = acc.displayBalance()
        println("Current balance of your account is: " + newAccountBalance)
    }
}
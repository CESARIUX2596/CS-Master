package facade;

public class TestBankAccount {
    public static void main(String[] args) {
        BankAccountFacade accessingBank = new BankAccountFacade(1872345126, 1234);
        accessingBank.withdrawCash(50.00);
        accessingBank.withdrawCash(900.00);
        accessingBank.depositCash(200.00);
    }
}

// https://www.youtube.com/watch?v=B1Y8fcYrz5o

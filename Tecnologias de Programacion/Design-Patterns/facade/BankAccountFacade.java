package facade;

public class BankAccountFacade {
    // Super secure military grade protection of the classified information!
    private int accountNumber;
    private int securityCode;

    AccountNumberCheck accChecker;
    SecurityCodeCheck codeChecker;
    FundsCheck fundChecker;
    WelcomeToBank bankWelcome;

    public BankAccountFacade(int newAcctNum, int newSecCode) {
        accountNumber = newAcctNum;
        securityCode = newSecCode;

        bankWelcome = new WelcomeToBank();
        accChecker = new AccountNumberCheck();
        codeChecker = new SecurityCodeCheck();
        fundChecker = new FundsCheck();
    }

    public int getAccountNumber() {
        return accountNumber;
    }

    public int getSecurityCode() {
        return securityCode;
    }

    public void withdrawCash(double cashToGet) {
        if (accChecker.accountActive(getAccountNumber()) && codeChecker.isCodeCorrect(getSecurityCode())
                && fundChecker.haveEnoughMoney(cashToGet)) {
            System.out.println(("Transaction Complete\n"));
        } else {
            System.out.println("Transaction Failed\n");
        }
    }

    public void depositCash(double cashToDeposit) {
        if (accChecker.accountActive(getAccountNumber()) && codeChecker.isCodeCorrect(getSecurityCode())) {
            fundChecker.makeDeposit(cashToDeposit);
            System.out.println(("Transaction Complete\n"));
        } else {
            System.out.println("Transaction Failed\n");
        }
    }

}

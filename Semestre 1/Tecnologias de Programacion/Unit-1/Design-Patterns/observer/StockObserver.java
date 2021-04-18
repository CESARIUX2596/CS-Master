package observer;

public class StockObserver implements Observer {
    private double gmePrice;
    private double tslaPrice;
    private double aaplPrice;
    // Static used as a counter
    private static int observerIDTracker = 0;
    // Used to track the observers
    private int observerID;
    // Will hold reference to the StockGrabber objec
    private Subject stockGrabber;

    public StockObserver(Subject stockGrabber) {
        // Store the reference to the stockGrabber object so
        // I can make calls to its methods
        this.stockGrabber = stockGrabber;
        // Assign an observer ID and increment the static counter
        this.observerID = ++observerIDTracker;
        // Message notifies user of new observer
        System.out.println("New Observer " + this.observerID);
        // Add the observer to the Subjects ArrayList
        stockGrabber.register(this);
    }

    @Override
    public void update(double gmePrice, double tslaPrice, double aaplPrice) {
        this.gmePrice = gmePrice;
        this.tslaPrice = tslaPrice;
        this.aaplPrice = aaplPrice;

        printThePrices();
    }

    public void printThePrices() {
        System.out.println(observerID + "\nAAPL: " + aaplPrice + "\nGME: " + gmePrice + "\nTSLA: " + tslaPrice + "\n");
    }
}

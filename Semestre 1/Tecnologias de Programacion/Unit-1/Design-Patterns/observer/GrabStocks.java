package observer;

public class GrabStocks {
    public static void main(String[] args) {
        StockGrabber stockGrabber = new StockGrabber();

        StockObserver observer1 = new StockObserver(stockGrabber);

        stockGrabber.setAAPLPrice(135.37);
        stockGrabber.setGMEPrice(52.40);
        stockGrabber.setTSLAPrice(816.12);

        Runnable getAAPL = new GetTheStock(stockGrabber, 2, "AAPL", 135.37);
        Runnable getGME = new GetTheStock(stockGrabber, 2, "GME", 52.40);
        Runnable getTSLA = new GetTheStock(stockGrabber, 2, "TSLA", 816.12);

        new Thread(getAAPL).start();
        new Thread(getGME).start();
        new Thread(getTSLA).start();
    }
}

// https://www.youtube.com/watch?v=wiQdrH2YpT4

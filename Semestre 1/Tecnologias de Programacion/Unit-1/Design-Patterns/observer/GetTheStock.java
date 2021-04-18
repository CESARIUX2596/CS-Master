package observer;

import java.text.DecimalFormat;

public class GetTheStock implements Runnable {

    private String stock;
    private double price;

    private Subject stockGrabber;

    public GetTheStock(Subject stockGrabber, int newStartTime, String newStock, double newPrice) {
        this.stockGrabber = stockGrabber;
        stock = newStock;
        price = newPrice;

    }

    @Override
    public void run() {
        for (int i = 1; i < 20; i++) {
            try {
                Thread.sleep(2000);
            } catch (InterruptedException e) {
            }
            double randNum = (Math.random() * (0.06)) - 0.03;
            DecimalFormat df = new DecimalFormat("#.##");

            price = Double.valueOf(df.format((price + randNum)));

            if (stock == "AAPL")
                ((StockGrabber) stockGrabber).setAAPLPrice(price);
            if (stock == "GME")
                ((StockGrabber) stockGrabber).setGMEPrice(price);
            if (stock == "TSLA")
                ((StockGrabber) stockGrabber).setTSLAPrice(price);
            System.out.println(stock + ": " + df.format((price + randNum)) + " " + df.format(randNum));
            System.out.println();

        }
    }
}

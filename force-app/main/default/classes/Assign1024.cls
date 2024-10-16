/**
 * @author            : Priya Soni
 * @last modified on  : 10-07-2024
 * @last modified by  : Priya Soni
**/
public with sharing class Assign1024 {
    
    public static void main() {
        
        List<String> products = new List<String>();
        products.add('1,Product1,10');
        products.add('2,Product2,20');
        products.add('3,Product3,OutOfStock');

        
        List<String> orders = new List<String>();
        orders.add('1,Customer1,1,10');
        orders.add('2,Customer1,2,20');
        orders.add('3,Customer2,1,30');
        orders.add('4,Customer2,2,40');

        
        List<String> outOfStockProducts = new List<String>();

        
        for (String product : products) {
            List<String> prodDetails = product.split(',');

            String productId = prodDetails[0];
            String productName = prodDetails[1];
            String availableQuantity = prodDetails[2];

            if (availableQuantity.equalsIgnoreCase('OutOfStock')) {
                outOfStockProducts.add('Product: ' + productName + ', Product ID: ' + productId + ' Available Quantity: ' + availableQuantity);
            }
        }

        System.debug('Out of Stock Products: ' + outOfStockProducts);
    }
}

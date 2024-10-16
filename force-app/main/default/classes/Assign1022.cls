/**
 * @author            : Priya Soni
 * @last modified on  : 10-07-2024
 * @last modified by  : Priya Soni
**/

// Loop through the orderList and check the available quantity of each product in the productList.
public with sharing class Assign1022 {
    public static void main() {
        list<String> products = new list<String>();
        products.add('ProductId,ProductName,AvailableQuantity');
        products.add('1,Product1,10');
        products.add('2,Product2,20');
        products.add('3,Product3,OutOfStock');
        System.debug(products);

        list<String> orders = new list<String>();
        orders.add('OrderId,CustomerName,ProductId,OrderedQuantity');
        orders.add('1,Customer1,1,10');
        orders.add('2,Customer1,2,20');
        orders.add('3,Customer2,1,30');
        orders.add('4,Customer2,2,40');
        System.debug(orders);

        
        list<String> details = new list<String>();

        for (String product : products) {
            list<String> prodDetails = product.split(',');

            String productId = prodDetails[0];
            String productName = prodDetails[1];
            String availableQuantity = prodDetails[2];

            for (String order : orders) {
                list<String> orderDetails = order.split(',');

                String orderedProductId = orderDetails[2];
                String orderedQuantity = orderDetails[3];
                String customerName = orderDetails[1];
                if(productId.equals(orderedProductId)) {
                    System.debug('Product: ' + productName + ', Customer: ' + customerName + ', Available Quantity: ' + availableQuantity);
                }
            }
        }
    }
}


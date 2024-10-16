/**
 * @author            : Priya Soni
 * @last modified on  : 10-07-2024
 * @last modified by  : Priya Soni
**/

public with sharing class Assign1025 {
    
    public static void main() {
        list<String> products = new list<String>();
        products.add('ProductId,ProductName,AvailableQuantity');
        products.add('1,Product1,10');
        products.add('2,Product2,20');
        products.add('3,Product3,30');

        list<String> orders = new list<String>();
        orders.add('OrderId,CustomerName,ProductId,OrderedQuantity');
        orders.add('1,Customer1,1,10');
        orders.add('2,Customer1,2,20');
        orders.add('3,Customer2,1,30');
        orders.add('4,Customer2,2,40');

        list<String> summaryList = new list<String>();

        for (String order : orders) {
            List<String> orderDetails = order.split(',');
            
            String orderId = orderDetails[0];
            String customerName = orderDetails[1];
            String orderedProductId = orderDetails[2];
            String orderedQuantity = orderDetails[3];

            for (String product : products) {
                list<String> prodDetails = product.split(',');

                String productId = prodDetails[0];
                String productName = prodDetails[1];
                
                if (productId.equals(orderedProductId)) {
                    String summary = 'Customer Name: ' + customerName + ', Product Ordered: ' + productName + ', Quantity: ' + orderedQuantity;
                    summaryList.add(summary);
                }
            }
        }
        
        for (String summary : summaryList) {
            System.debug(summary); 
        }
    }
}

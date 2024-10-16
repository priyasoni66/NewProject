/**
 * @author            : Priya Soni
 * @last modified on  : 10-07-2024
 * @last modified by  : Priya Soni
**/

public with sharing class Assign1023 {


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

        for (String order : orders) {
            List<String> orderDetails = order.split(',');
            String orderedProductId = orderDetails[2];
            Integer orderedQuantity = Integer.valueOf(orderDetails[3]);

            for (String product : products) {
                List<String> prodDetails = product.split(',');
                String productId = prodDetails[0];
                String availableQuantity = prodDetails[2];

                if (productId.equals(orderedProductId)) {
                    Integer availableQty = Integer.valueOf(availableQuantity);
                    if (availableQty >= orderedQuantity) {
                        availableQty -= orderedQuantity;
                        products.set(products.indexOf(product), productId + ',' + prodDetails[1] + ',' + availableQty);
                    }
                }
            }
        }
        System.debug('Updated Product List: ' + products);
    }
}

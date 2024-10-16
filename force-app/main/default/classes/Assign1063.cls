/**
 * @author            : Priya Soni
 * @last modified on  : 10-07-2024
 * @last modified by  : Priya Soni
**/

// Loop through the orderList and check if there is enough stock available for each product in the productList.
public with sharing class Assign1063 {
    public static void main(){
        List<String> productList = new List<String>{
            'ProductId,ProductName,StockQuantity',
            'P101,Product1,10',
            'P102,Product2,20',
            'P103,Product3,30'
        };
        
        List<String> orderList = new List<String>{
            'OrderId,CustomerId,ProductIds',
            '101,1,P101',
            '102,1,P102',
            '103,2,P103',
            '104,3,P102'
        };
        
        List<String> customerList = new List<String>{
            'CustomerId,CustomerName,OrderIds',
            '1,Samay,101',
            '2,Jay,103',
            '3,Sharad,104'
        };

       
        Map<String, Integer> productStockMap = new Map<String, Integer>();


for (Integer i = 1; i < productList.size(); i++) {
    String[] productDetails = productList[i].split(',');
    String productId = productDetails[0];
    Integer stockQuantity = Integer.valueOf(productDetails[2]);
    productStockMap.put(productId, stockQuantity);
}

for (Integer i = 1; i < orderList.size(); i++) {
    String[] orderDetails = orderList[i].split(',');
    String orderId = orderDetails[0];
    String[] productIds = orderDetails[2].split(';');

    for (String productId : productIds) {
        if (productStockMap.containsKey(productId)) {
            Integer availableStock = productStockMap.get(productId);
            if (availableStock > 0) {
                System.debug('Order ID: ' + orderId + ' has sufficient stock for Product ID: ' + productId + '. Available Stock: ' + availableStock);
            } else {
                System.debug('Order ID: ' + orderId + ' does NOT have sufficient stock for Product ID: ' + productId + '. Available Stock: ' + availableStock);
            }
        }
    }
}
    }
}

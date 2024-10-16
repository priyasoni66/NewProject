/**
 * @author            : Priya Soni
 * @last modified on  : 10-08-2024
 * @last modified by  : Priya Soni
**/
public with sharing class Assign1065 {
    public static void main() {

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
            '3,Sharad,104',
            '4,Suresh,null'
        };
        
        Map<String, String> productMap = new Map<String, String>();
        for (String productStr : productList) {
            if (productStr != 'ProductId,ProductName,StockQuantity') {
                String[] productData = productStr.split(',');
                productMap.put(productData[0], productData[1]); 
            }
        }
        
        Map<String, List<String>> orderProductMap = new Map<String, List<String>>();
        for (String orderStr : orderList) {
            if (orderStr != 'OrderId,CustomerId,ProductIds') {
                String[] orderData = orderStr.split(',');
                List<String> products = orderData[2].split(','); 
                orderProductMap.put(orderData[0], products); 
            }
        }
        
        Map<String, List<String>> customerOrderMap = new Map<String, List<String>>();
        for (String customerStr : customerList) {
            if (customerStr != 'CustomerId,CustomerName,OrderIds') {
                String[] customerData = customerStr.split(',');
                List<String> orders = customerData[2] != 'null' ? customerData[2].split(',') : new List<String>();
                customerOrderMap.put(customerData[0], orders); 
            }
        }

        for (String customerStr : customerList) {
            if (customerStr != 'CustomerId,CustomerName,OrderIds') {
                String[] customerData = customerStr.split(',');
                String customerId = customerData[0];
                String customerName = customerData[1];
                List<String> orderIds = customerOrderMap.get(customerId);
                
                System.debug('Customer: ' + customerName);
                if (orderIds.isEmpty()) {
                    System.debug('  No orders.');
                } else {
                    for (String orderId : orderIds) {
                        List<String> productIds = orderProductMap.get(orderId);
                        System.debug('  Order ' + orderId + ': ');
                        for (String productId : productIds) {
                            String productName = productMap.get(productId);
                            System.debug('    Product: ' + productName);
                        }
                    }
                }
            }
        }
    }
}

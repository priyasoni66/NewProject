/**
 * @author            : Priya Soni
 * @last modified on  : 10-07-2024
 * @last modified by  : Priya Soni
**/
// Product List: Contains ProductId, ProductName, AvailableQuantity.
// Order List: Contains OrderId, CustomerName, ProductIds (list of product IDs), OrderedQuantities (list of corresponding quantities).
public with sharing class Assign1021 {
    
    public static void main(){
        List<String> products = new List<String>();
        products.add('ProductId,ProductName,AvailableQuantity');
        products.add('1,Product1,10');
        products.add('2,Product2,20');
        products.add('3,Product3,30');
        System.debug(products);
        List<String> orders = new List<String>();
        orders.add('OrderId,CustomerName,ProductId,OrderedQuantity');
        orders.add('1,Customer1,1,10');
        orders.add('2,Customer1,2,20');
        orders.add('3,Customer2,1,30');
        orders.add('4,Customer2,2,40');
        System.debug(orders);
    }
}
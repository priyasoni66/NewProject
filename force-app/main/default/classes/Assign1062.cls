/**
 * @author            : Priya Soni
 * @last modified on  : 10-07-2024
 * @last modified by  : Priya Soni
**/

// Loop through the customerList and return a list of all orders placed by a specific customer.
public with sharing class Assign1062 {

    public static void main() {
        List<List<String>> productList = new List<List<String>>{
            new List<String>{'ProductId', 'ProductName', 'StockQuantity'},
            new List<String>{'1', 'Product1', '10'},
            new List<String>{'2', 'Product2', '20'},
            new List<String>{'3', 'Product3', '30'}
        };
        
        List<List<String>> orderList = new List<List<String>>{
            new List<String>{'OrderId', 'CustomerId', 'ProductIds'},
            new List<String>{'1', '1', '1'},
            new List<String>{'2', '1', '2'},
            new List<String>{'3', '2', '1'},
            new List<String>{'4', '3', '2'}
        };
        
        List<List<String>> customerList = new List<List<String>>{
            new List<String>{'CustomerId', 'CustomerName', 'OrderIds'},
            new List<String>{'1', 'Samay', '1,2'},
            new List<String>{'2', 'Jay', '3,4'},
            new List<String>{'3', 'Sharad', '3,4'}
        };

        String specificCustomerId = '2';
        List<List<String>> newList = new List<List<String>>();

        for (List<String> order : orderList) {
            if (order[1] == specificCustomerId) {
                newList.add(order);
            }
        }
        for(List<String> newData : newList){
            System.debug(newData[0] + ' ' + newData[1] + ' ' + newData[2]);
    }
}
}
/**
 * @author            : Priya Soni
 * @last modified on  : 10-07-2024
 * @last modified by  : Priya Soni
**/

// Identify customers who haven’t placed any orders and return their details.

public with sharing class Assign1064 {
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
            '3,Sharad,104',
            '4,Suresh,null'
        };

        Map<String, String> customerByIdMap = new Map<String, String>();
        for(String customer : customerList){
            String[] customerRec = customer.split(',');
            if(customerRec[2] == 'null'){
                customerByIdMap.put(customerRec[0], customer);
            }
        }
        system.debug('customerByIdMap: ' + customerByIdMap);
    }
}
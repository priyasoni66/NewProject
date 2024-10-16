/**
 * @author            : Priya Soni
 * @last modified on  : 10-08-2024
 * @last modified by  : Priya Soni
**/
public with sharing class Assign1075 {
    public static void main(){
        List<String> vehicleList = new List<String>();
        vehicleList.add('V1,Toyota,R1');
        vehicleList.add('V2,Maruti,R2');
        vehicleList.add('V3,Hyundai,R3');
        vehicleList.add('V4,Suzuki,R4');
        vehicleList.add('V5,Ford,R5');

        List<String> driverList = new List<String>();
        driverList.add('D1,Suresh,V1');
        driverList.add('D2,Harry,V2');
        driverList.add('D3,John,V3');
        driverList.add('D4,Paul,V4');

        List<String> routeList = new List<String>();
        routeList.add('R1,Ajmer,V1');
        routeList.add('R1,Jaipur,V1');
        routeList.add('R1,Jabalpur,V1');
        routeList.add('R2,Ajmer,V2'); 

        Map<String, List<String>> routesByVehicleId = new Map<String, List<String>>();

       
        for (String routeData : routeList) {
            String[] routeRec = routeData.split(',');
            List<String> tempRouteList = routesByVehicleId.get(routeRec[2]);
            if (tempRouteList == null) {
                tempRouteList = new List<String>();
            }
            tempRouteList.add(routeRec[1]);
            routesByVehicleId.put(routeRec[2], tempRouteList);
        }

        Map<String, String> driversByVehicleId = new Map<String, String>();
        
        for (String driverData : driverList) {
            String[] driverRec = driverData.split(',');
            driversByVehicleId.put(driverRec[2], driverRec[1]); 
        }

        Map<String, List<String>> summaryByRouteId = new Map<String, List<String>>();

        
        for (String vehicleData : vehicleList) {
            String[] vehicleRec = vehicleData.split(',');
            String vehicleId = vehicleRec[0];
            String vehicleName = vehicleRec[1];
            String routeId = vehicleRec[2];
            
            String driverName = driversByVehicleId.get(vehicleId); 

            String summary = 'Vehicle: ' + vehicleName + ', Driver: ' + driverName;

            List<String> tempSummaryList = summaryByRouteId.containsKey(routeId) ? summaryByRouteId.get(routeId) : new List<String>();
            tempSummaryList.add(summary);
            summaryByRouteId.put(routeId, tempSummaryList);
        }

        for (String routeId : summaryByRouteId.keySet()) {
            System.debug('Route ID: ' + routeId);
            System.debug('Vehicles and Drivers: ' + summaryByRouteId.get(routeId));
        }
    }
}

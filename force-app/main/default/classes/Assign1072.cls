/**
 * @author            : Priya Soni
 * @last modified on  : 10-08-2024
 * @last modified by  : Priya Soni
**/
public with sharing class Assign1072 {
    public static void main(){
        List<String> vehicleList = new List<String>();
        // vehicleList.add('vehicleId,vehicleName,routeId'); 
        vehicleList.add('V1,Toyota,R1');
        vehicleList.add('V2,Maruti,R2');
        vehicleList.add('V3,Hyundai,R3');
        vehicleList.add('V4,Suzuki,R4');
        vehicleList.add('V5,Ford,R5');

        List<String> driverList = new List<String>();
        driverList.add('driverId,driverName,assignedVehicleId');
        driverList.add('D1,Suresh,V1');
        driverList.add('D2,Harry,V2');
        driverList.add('D3,John,V3');
        driverList.add('D4,Paul,V4');

        List<String> routeList = new List<String>();
        // routeList.add('routeId,routeName,vehicleId'); 
        routeList.add('R1,Ajmer,V1');
        routeList.add('R1,Jaipur,V1');
        routeList.add('R1,Jabalpur,V1');
        routeList.add('R2,Ajmer,V2'); 

        Map<String, List<String>> routesByVehicleId = new Map<String, List<String>>();

        for (String routeData : routeList) {
            String[] routeRec = routeData.split(',');
            List<String> tempRouteList = new List<String>();
            if (routesByVehicleId.containsKey(routeRec[2])) {
                tempRouteList = routesByVehicleId.get(routeRec[2]);
            }
            tempRouteList.add(routeRec[1]);

            routesByVehicleId.put(routeRec[2], tempRouteList);
        }

        System.debug('routesByVehicleId: ' + routesByVehicleId);

        for (String vehicleData : vehicleList) {
            String[] vehicleRec = vehicleData.split(',');
            System.debug('Vehicle Name: ' + vehicleRec[1]);
            System.debug('Assigned Routes: ' + routesByVehicleId.get(vehicleRec[0]));
        }
    }
}
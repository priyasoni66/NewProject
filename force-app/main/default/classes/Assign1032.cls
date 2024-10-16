/**
 * @author            : Priya Soni
 * @last modified on  : 10-07-2024
 * @last modified by  : Priya Soni
**/

public with sharing class Assign1032 {
    
    public static void main(){
        
        list<String> EmpList = new list<String>();
        EmpList.add('EmpId,Name,DepartmentId');
        EmpList.add('1,Suman,IT101');
        EmpList.add('2,Sharad,HR102');
        EmpList.add('3,Jay,Finance103');

        list<String> DeptList = new list<String>();
        DeptList.add('DepartmentId,DepartmentName,ManagerName');
        DeptList.add('IT101,IT Dept,Sam');
        DeptList.add('HR102,HR,John');
        DeptList.add('Finance103,Finance,Jack');

        list<String> newList = new list<String>();

        for(String emp : EmpList){
            String[] data = emp.split(',');
            if(data[2] == 'HR102'){
                newList.add(emp);
            }
        }
        for(String emp1 : newList){
            System.debug('Employee list for HR department: ' + emp1);
        }
    }
}

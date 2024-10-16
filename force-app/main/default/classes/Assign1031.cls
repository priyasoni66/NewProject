/**
 * @author            : Priya Soni
 * @last modified on  : 10-07-2024
 * @last modified by  : Priya Soni
**/

// Employee List: Contains EmployeeId, Name, DepartmentId.
// Department List: Contains DepartmentId, DepartmentName, ManagerName.
public with sharing class Assign1031 {
    
    public static void main(){
        list<String> EmpList = new list<String>();
        EmpList.add('EmpId,Name,DepartmentId');
        EmpList.add('1,Suman,IT101');
        EmpList.add('2,Sharad,HR102');
        EmpList.add('3,Jay,Finance103');
        System.debug('Employee List: ' + EmpList);
        list<String> DeptList = new list<String>();
        DeptList.add('DepartmentId,DepartmentName,ManagerName');
        DeptList.add('IT101,IT Dept,Sam');
        DeptList.add('HR102,HR,John');
        DeptList.add('Finance103,Finance,Jack');
        System.debug('Department List: ' + DeptList);
    }
}
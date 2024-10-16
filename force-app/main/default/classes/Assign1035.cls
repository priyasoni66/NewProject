/**
 * @author            : Priya Soni
 * @last modified on  : 10-07-2024
 * @last modified by  : Priya Soni
**/
public with sharing class Assign1035 {
    public static void main() {
        list<String> EmpList = new list<String>();
        EmpList.add('1,Suman,IT101');
        EmpList.add('2,Sharad,HR102');
        EmpList.add('3,Jay,Finance103');
        System.debug('Employee List: ' + EmpList);
        
        list<String> DeptList = new list<String>();
        DeptList.add('DepartmentId,DepartmentName,ManagerName');
        DeptList.add('IT101,IT Dept,Sam');
        DeptList.add('HR102,HR,John');
        DeptList.add('Finance103,Finance,Jack');
        
               
        Integer itCount = 0;
        Integer hrCount = 0;
        Integer financeCount = 0;


        for(String dept : DeptList){
            String[] data = dept.split(',');
            if (data[0] == 'IT101') {
                itCount++;
            } else if (data[0] == 'HR102') {
                hrCount++;
            } else if (data[0] == 'Finance103') {
                financeCount++;
            }
        }

        System.debug('IT Dept: ' + itCount + ' employees');
        System.debug('HR Dept: ' + hrCount + ' employees');
        System.debug('Finance Dept: ' + financeCount + ' employees');
    }
}

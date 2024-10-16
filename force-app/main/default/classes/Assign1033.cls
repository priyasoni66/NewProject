/**
 * If an employee is not assigned to any department, assign them to a default department.
**/
public with sharing class Assign1033 {
        
    public static void main() {
        List<String> EmpList = new List<String>();
        EmpList.add('1,Suman,IT101');
        EmpList.add('2,Sharad,HR102');
        EmpList.add('3,Jay,null');  

        List<String> DeptList = new List<String>();
        DeptList.add('IT101,IT Dept,Sam');
        DeptList.add('HR102,HR Dept,John');
        DeptList.add('Finance103,Finance Dept,Jack');

        String defaultDept = 'Finance103';

        for (String emp : EmpList) {
            String[] empData = emp.split(',');

            if (empData.size() == 3 && empData[2] =='null') {
                empData[2] = defaultDept;  
                System.debug('Employee ' + empData[1] + ' Assigned to Department: ' + empData[2]);
            }
        }
    }
}

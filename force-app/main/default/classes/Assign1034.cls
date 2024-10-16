/**
 * @author            : Priya Soni
 * @last modified on  : 10-07-2024
 * @last modified by  : Priya Soni
**/
// Return a list of unique department managers from the departmentList.

public with sharing class Assign1034 {
    
    public static void main() {
        List<String> EmpList = new List<String>();
        EmpList.add('1,Suman,IT101');
        EmpList.add('2,Sharad,HR102');
        EmpList.add('3,Jay,null');  

        List<String> DeptList = new List<String>();
        DeptList.add('IT101,IT Dept,Sam');
        DeptList.add('HR102,HR Dept,John');
        DeptList.add('Finance103,Finance Dept,Jack');

        Set<String> uniDeptMan = new Set<String>();
        for(String dept : DeptList) {
            String[] data = dept.split(',');
            uniDeptMan.add(data[2]);
        }
        System.debug('Unique Department Managers: ' + uniDeptMan);
    }
}
/**
 * @author            : Priya Soni
 * @last modified on  : 10-07-2024
 * @last modified by  : Priya Soni
**/
public with sharing class Assign1013 {
    
    public static List<String> list1(){
        List<String> student = new List<String>();
        student.add('StudentId,Name,Email,CourseId');  
        student.add('1,Ajay,ajay@gmail.com,101');
        student.add('2,Aman,aman@gmail.com,102');
        student.add('3,Bhavya,bhavya@gmail.com,101');
        student.add('4,Pragya,pragya@gmail.com,');
        student.add('5,Suman,suman@gmail.com,'); 
        return student;
    }

    public static List<String> studentsWithNoEnrollment() {
        List<String> studentsWithNoEnrollment = new List<String>(); 
        List<String> studentList = list1(); 

        for (Integer i = 1; i < studentList.size(); i++) {
            String studentRecord = studentList[i];
            String[] studentDetails = studentRecord.split(',');

            if (studentDetails.size() < 4 || studentDetails[3].trim() == '') {
                studentsWithNoEnrollment.add(studentDetails[1] + ' (' + studentDetails[2] + ')');
            }
        }

        return studentsWithNoEnrollment; 
    }

    public static void main(){
        List<String> studentsWithNoEnrollment = studentsWithNoEnrollment();
        System.debug('Students with no course enrollment: ' + studentsWithNoEnrollment);
    }
}

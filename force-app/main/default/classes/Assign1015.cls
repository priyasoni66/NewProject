/**
 * @author            : Priya Soni
 * @last modified on  : 10-07-2024
 * @last modified by  : Priya Soni
**/

public with sharing class Assign1015 {
    
    public static void main() {
        
        List<String> student = new List<String>();
        student.add('1,Ajay,ajay@gmail.com,101');
        student.add('2,Aman,aman@gmail.com,102');
        student.add('3,Bhavya,bhavya@gmail.com,101');
        student.add('4,Pragya,pragya@gmail.com,102');
        student.add('5,Suman,suman@gmail.com,103');
        System.debug('Student list: ' + student);


        List<String> course = new List<String>();
        course.add('101,Salesforce Development,Sanjay');
        course.add('102,Salesforce Business Analyst,Abhay');
        course.add('103,Introduction to Salesforce,Ramesh');
        System.debug('Course list: ' + course);

    
        List<String> studentWithCourse = new List<String>();

        for (String record : student) {
            List<String> studentDetails = record.split(',');
            String studentName = studentDetails[1];
            String courseId = studentDetails[3];
            String courseName = '';

            
            for (String record1 : course) {
                List<String> courseDetails = record1.split(',');
                if (courseDetails[0] == courseId) {
                    courseName = courseDetails[1];
                    break;  
                }
            }
            studentWithCourse.add(studentName + ' is enrolled in ' + courseName);
        }
        System.debug('Student with course list: ' + studentWithCourse);
    }
}

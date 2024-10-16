/**
 * @author            : Priya Soni
 * @last modified on  : 10-07-2024
 * @last modified by  : Priya Soni
**/
public with sharing class Assign1011 {
    
    public static void main(){
        List<String> student = new List<String>();
        student.add('StudentId,Name,Email,CourseId');
        student.add('1,Ajay,ajay@gmail.com,101');
        student.add('2,Aman,aman@gmail.com,102');
        student.add('3,Bhavya,bhavya@gmail.com,101');
        student.add('4,Pragya,pragya@gmail.com,102');
        student.add('5,Suman,suman@gmail.com,103');
        System.debug('Student list: ' + student);
        List<String> course = new list<String>();
        course.add('CourseId,CourseName,Instructor');
        course.add('101,Salesforce Development,Sanhjay');
        course.add('102,Salesforce Business Analyst,Abhay');
        course.add('103,Introduction to Salesforce,Ramesh');
        system.debug('course list:-'+ course);
    }
}

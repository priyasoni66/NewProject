/**
 * @author            : Priya Soni
 * @last modified on  : 10-07-2024
 * @last modified by  : Priya Soni
**/
public with sharing class Assign1012 {
    
    public static List<String> list1(){
        List<String> student = new List<String>();
        student.add('StudentId,Name,Email,CourseId');
        student.add('1,Ajay,ajay@gmail.com,101');
        student.add('2,Aman,aman@gmail.com,102');
        student.add('3,Bhavya,bhavya@gmail.com,101');
        student.add('4,Pragya,pragya@gmail.com,102');
        student.add('5,Suman,suman@gmail.com,103');
        return student;
    }
    public static List<String> list2(){
        List<String> course = new List<String>();
        course.add('CourseId,CourseName,Instructor');
        course.add('101,Salesforce Development,Sanhjay');
        course.add('102,Salesforce Business Analyst,Abhay');
        course.add('103,Introduction to Salesforce,Ramesh');
        return course;
    }
    public static List<String> studentCourse(String courseName) {
        List<String> studentCourse = new List<String>();
        List<String> studentList = list1();
        List<String> courseList = list2();
        
        String addCourseId = '';
        for (String courseRecord : courseList) {
            String[] courseDetails = courseRecord.split(',');
            if (courseDetails[1] == courseName) {
                addCourseId = courseDetails[0];
                break;
            }
        }
        
        for (String studentRecord : studentList) {
            String[] studentDetails = studentRecord.split(',');
            if (studentDetails[3] == addCourseId) {
                studentCourse.add(studentDetails[1]); 
            }
        }

        return studentCourse;
    }
    public static void main(){
        List<String> studentsInSalesforceDev = studentCourse('Salesforce Development');
        System.debug('Students in Salesforce Development: ' + studentsInSalesforceDev);
    }
}

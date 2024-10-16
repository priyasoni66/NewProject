/**
 * @author            : Priya Soni
 * @last modified on  : 10-07-2024
 * @last modified by  : Priya Soni
**/
public with sharing class Assign1055 {
    public static void main(){
        List<List<String>> StudentList = new List<List<String>>{
            new List<String>{'StudentId', 'Name', 'CourseIds'},
            new List<String>{'1', 'Aman', '101,102'},
            new List<String>{'2', 'Abhay', 'null'},
            new List<String>{'3', 'Chetan', '101,103'}
        };

        List<List<String>> CourseList = new List<List<String>>{
            new List<String>{'CourseId', 'CourseName', 'InstructorId'},
            new List<String>{'101', 'Salesforce Development', '1'},
            new List<String>{'102', 'Introduction to Salesforce', '2'},
            new List<String>{'103', 'Salesforce Business Analysis', '3'}
        };

        List<List<String>> InstructorList = new List<List<String>>{
            new List<String>{'InstructorId', 'InstructorName', 'Specialization'},
            new List<String>{'1', 'Sharad', 'Salesforce Development'},
            new List<String>{'2', 'Naman', 'Salesforce Business Analysis'},
            new List<String>{'3', 'Samay', 'null'}
        };

        for (List<String> instructor : InstructorList) {
            String instructorId = instructor[0];
            String instructorName = instructor[1];
            System.debug('Instructor: ' + instructorName);

            for (List<String> course : CourseList) {
                if (course[2] == instructorId) {
                    String courseId = course[0];
                    String courseName = course[1];
                    System.debug('  Course: ' + courseName);

                    List<String> enrolledStudents = new List<String>();
                    for (List<String> student : StudentList) {
                        List<String> studentCourses = student[2].split(',');
                        if (studentCourses.contains(courseId)) {
                            enrolledStudents.add(student[1]); 
                        }
                    }

                    System.debug('    Students: ' + enrolledStudents);
                    // if (enrolledStudents.isEmpty()) {
                    //     System.debug('    No students enrolled');
                    // } else {
                    //     System.debug('    Students: ' + enrolledStudents);
                    // }
                }
            }
        }
    }
}

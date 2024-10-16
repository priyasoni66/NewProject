/**
 * @author            : Priya Soni
 * @last modified on  : 10-05-2024
 * @last modified by  : Priya Soni
**/

// Student List: Contains StudentId, Name, CourseIds (list of course IDs the student is enrolled in).
// Course List: Contains CourseId, CourseName, InstructorId.
// Instructor List: Contains InstructorId, InstructorName, Specialization.

public with sharing class Assign1051 {
    public static void main(){
        List<List<String>> StudentList = new List<List<String>>{
            new List<String>{'StudentId', 'Name', 'CourseIds'},
            new List<String>{'1', 'Aman', '101,102'},
            new List<String>{'2', 'Abhay', '103'},
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

        System.debug('Student List: ' + StudentList);
        System.debug('Course List: ' + CourseList);
        System.debug('Instructor List: ' + InstructorList);
    }
}
   
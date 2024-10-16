/**
 * @author            : Priya Soni
 * @last modified on  : 10-07-2024
 * @last modified by  : Priya Soni
**/
public with sharing class Assign1054 {
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

        String defaultCourseId = '102';
        String defaultInstructorId = '2'; 

        for (List<String> student : StudentList) {
            if (student[2] == 'null') {
                student[2] = defaultCourseId; 
                System.debug('Student ' + student[1] + ' default course: ' + defaultCourseId);
            }
        }
    }
}
    
   
    
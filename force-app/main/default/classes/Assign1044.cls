/**
 * @author            : Priya Soni
 * @last modified on  : 10-05-2024
 * @last modified by  : Priya Soni
**/

// If an attendee is not registered for any event, assign them to a default event (if space is available).
public with sharing class Assign1044 {
    public Assign1044() {

    }
    public static void main(){
        List<List<String>> EventList = new List<List<String>>{
            new List<String>{'EventId', 'EventName', 'MaxCapacity', 'AttendeeCount'},
            new List<String>{'1', 'Event1', '100', '20'},
            new List<String>{'2', 'Event2', '200', '40'},
            new List<String>{'3', 'Event3', '300', '80'}
        };

        List<List<String>> AttendeeList = new List<List<String>>{
            new List<String>{'AttendeeId', 'Name', 'RegisteredEventIds'},
            new List<String>{'1', 'Suman', '2'},
            new List<String>{'2', 'Sharad', '1'},
            new List<String>{'3', 'Jay','null'}
        };
        String defaultEventId = '1';
        
        
        List<String> defaultEvent = null;
        for (List<String> event : EventList) {
            if (event[0] == defaultEventId) {
                defaultEvent = event;
                break;
            }
        }

        if (defaultEvent != null) {
            Integer maxCapacity = Integer.valueOf(defaultEvent[2]);
            Integer currentCount = Integer.valueOf(defaultEvent[3]);

            for (List<String> attendee : AttendeeList) {
                if (attendee[2] == 'null') { 
                    if (currentCount < maxCapacity) {
                        attendee[2] = defaultEventId; 
                        currentCount++; 
                        defaultEvent[3] = String.valueOf(currentCount); 
                        System.debug(attendee[1] + ' assigned to Event ' + defaultEvent[1]);
                    } else {
                        System.debug('No space available for ' + attendee[1]);
                    }
                }
            }
        }

        System.debug('Updated Attendee List: ' + AttendeeList);
    }
}
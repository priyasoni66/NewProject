/**
 * @author            : Priya Soni
 * @last modified on  : 10-05-2024
 * @last modified by  : Priya Soni
**/
public with sharing class Assign1045 {
    public Assign1045() {

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

        Map<String, Integer> eventAttendeeCount = new Map<String, Integer>();

      
        for (List<String> event : EventList) {
            eventAttendeeCount.put(event[0], 0);
        }

        
        for (List<String> attendee : AttendeeList) {
            String registeredEventId = attendee[2];
            if (registeredEventId != null) {  
                if (eventAttendeeCount.containsKey(registeredEventId)) {
                    eventAttendeeCount.put(registeredEventId, eventAttendeeCount.get(registeredEventId) + 1);
                }
            }
        }

        
        System.debug('Event Name and Attendee Count:');
        for (List<String> event : EventList) {
            String eventId = event[0];
            String eventName = event[1];
            Integer count = eventAttendeeCount.get(eventId);
            System.debug(eventName + ': ' + count);
        }
    }
}
/**
 * @author            : Priya Soni
 * @last modified on  : 10-07-2024
 * @last modified by  : Priya Soni
**/

// Return a list of attendees for a specific event.
public with sharing class Assign1043 {
   
    public static void main() {
        String eventId = '2';

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
            new List<String>{'3', 'Jay', '2;3'}
        };

        Set<String> attendeesForEvent = new Set<String>();

        for (List<String> attendeeDetails : AttendeeList) {
            List<String> registeredEvents = attendeeDetails[2].split(';');
            if (registeredEvents.contains(eventId)) {
                attendeesForEvent.add(attendeeDetails[1]);
            }
        }

        System.debug('Attendees for Event ID ' + eventId + ': ' + attendeesForEvent);
    }
}

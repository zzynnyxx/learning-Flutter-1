class Event {
  final String name;
  int availableSeats;

  Event(this.name, this.availableSeats);
}

class User {
  final String name;
  final int age;

  User(this.name, this.age);
}

// Data
var events = [
  Event('BusinessTrip', 3),
  Event('PoolParty', 0),
  Event('EducationalTrip', 2),
];

var users = [
  User('Akinyi', 30),
  User('Booboo', 16),
  User('John', 23),
];

void main() {
  // Stores bookings per user
  final Map<String, List<String>> userBookings = {};

  for (var user in users) {
    print('\nProcessing bookings for ${user.name}');

    if (user.age < 18) {
      print('Too young to go for events.');
      continue;
    }

    int bookingCount = 0;
    userBookings[user.name] = [];

    for (var event in events) {
      print('Available seats for ${event.name}: ${event.availableSeats}');
      if (bookingCount == 2) {
        break; // booking limit reached
      }

      if (event.availableSeats <= 0) {
        print('${event.name} is full.');
        continue;
      }

      // Book event
      event.availableSeats--;
      bookingCount++;
      userBookings[user.name]!.add(event.name);

      print('${user.name} booked ${event.name}');
      print('Remaining seats for ${event.name}: ${event.availableSeats}');
    }

    if (bookingCount == 0) {
      print('${user.name} could not book any events.');
    }

    // Check if all events are full
    bool allFull = true;
    for (var event in events) {
      if (event.availableSeats > 0) {
        allFull = false;
        break;
      }
    }

    if (allFull) {
      print('\nAll events are fully booked. Stopping processing.');
      break;
    }
  }

  // Summary
  print('\n--- Booking Summary ---');
  userBookings.forEach((user, events) {
    print('$user booked: ${events.isEmpty ? "Nothing" : events.join(", ")}');
  });
}

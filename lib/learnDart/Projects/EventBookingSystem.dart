
// Data models
class Event{
  final String name;
  final int availableSeats;

  Event (this.name,this.availableSeats);
}

class User{
  final String name;
  final int age;

  User (this.name,this.age);
}

// Data
var events =[
  Event('Tech Conference',3),
  Event('Music Festival',0),
   Event('Startup',10),
];

var users =[
  User('Alice',22),
  User('Bob',16),
  User('Charlie',30),
];

// Booking Logic (Loops in Action )
void main(){
  for(var user in users){
    print('\n Processing bookings for ${user.name}');


    if(user.age < 18){
      print('Too young to book events.');
      continue;
    }

    for(var event in events ){

      if(event.availableSeats<=0){
        print('${event.name} is full.');
        continue;
      }

      print('${user.name} booked ${event.name}');
        
    
      
      }

      // break;//user books only one evnt
    }
      }

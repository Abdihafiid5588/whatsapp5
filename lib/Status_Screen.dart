import 'package:flutter/material.dart';
import 'package:whatsapp5/colors.dart';

class User {
  final String name;
  final String status;
  final String imageUrl;
  final bool isCurrentUser;

  User({required this.name, required this.status, required this.imageUrl, this.isCurrentUser = false});
}

void main() {
  runApp(StatusList());
}

class StatusList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StatusScreen(),
    );
  }
}

class StatusScreen extends StatelessWidget {
  final List<User> users = [
    User(name: 'My Status', status: 'Add Whatsapp Status', imageUrl: 'assets/desktop-wallpaper-kiyotaka-ayanokoji-genius-glowingeyes-art-cartoon-redsuit-classroomoftheelite-anime.jpg'),
    User(name: 'Caano', status: '4 minutes ago', imageUrl: 'assets/HD-wallpaper-anime-boy-aesthetic-anime-boys-creepy-creepy-anime-boy-sad-anime-boy-sad-anime-boys.jpg'),
    User(name: 'Zack', status: 'today, 10 minutes ago', imageUrl: 'assets/HD-wallpaper-anime-boy-aesthetic-anime-boys-creepy-creepy-anime-boy-sad-anime-boy-sad-anime-boys.jpg'),
    User(name: 'Stone', status: 'today, 10 minutes ago', imageUrl: 'assets/HD-wallpaper-anime-boy-aesthetic-anime-boys-creepy-creepy-anime-boy-sad-anime-boy-sad-anime-boys.jpg'),
    User(name: 'Kaxda', status: 'today, 10 minutes ago', imageUrl: 'assets/HD-wallpaper-anime-boy-aesthetic-anime-boys-creepy-creepy-anime-boy-sad-anime-boy-sad-anime-boys.jpg'),
    User(name: 'Lover', status: 'today, 10 minutes ago', imageUrl: 'assets/HD-wallpaper-anime-boy-aesthetic-anime-boys-creepy-creepy-anime-boy-sad-anime-boy-sad-anime-boys.jpg'),
    User(name: 'Tiitow', status: 'today, 10 minutes ago', imageUrl: 'assets/HD-wallpaper-anime-boy-aesthetic-anime-boys-creepy-creepy-anime-boy-sad-anime-boy-sad-anime-boys.jpg'),
    // Add more users as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
    
      body: ListView.builder(
        itemCount: users.length + 1, // Add 1 for the empty container
        itemBuilder: (context, index) {
          if (index == 0) {
            // Return an empty container for the first item
            return Container(height: 16.0);
          } else {
            // Adjust the index to account for the empty container
            final user = users[index - 1];

            return ListTile(
              leading: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color:  Colors.green ,
                        width: 3.0,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(user.imageUrl),
                    ),
                  ),
                  
                  if (index == 1)
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 12,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                ],
              ),
              title: Text(user.name,
              style: TextStyle(color: Colors.white)),
  subtitle: Text(
    user.status,
   
    style: TextStyle(
      color: Color.fromARGB(255, 239, 243, 246), // Change the color to your desired color
    ),
  ),
              
              onTap: () {
                // Handle the tap on a user
                // You can navigate to a chat screen or do something else
              },
            );
          }
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 99),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color.fromARGB(255, 160, 155, 155),
          child: const Icon(
            Icons.edit,
            color: Colors.white,
          ),
        ),
    ),
    );
  }
}

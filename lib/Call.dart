import 'package:flutter/material.dart';
import 'package:whatsapp5/colors.dart';

class Call {
  final String name;
  final String time;
  final bool isVideoCall;
  final bool isMissed;

  Call({
    required this.name,
    required this.time,
    required this.isVideoCall,
    required this.isMissed,
  });
}

void main() {
  runApp(callscreen());
}

class callscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CallSectionScreen(),
    );
  }
}

class CallSectionScreen extends StatelessWidget {
  final List<Call> callHistory = [
    Call(name: 'John Doe', time: 'Today, 10:30 AM', isVideoCall: true, isMissed: false),
    Call(name: 'Jane Smith', time: 'Yesterday, 8:45 PM', isVideoCall: false, isMissed: true),
    // Add more Call entries as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text('Calls',style: TextStyle(color: Colors.white),),
      ),
      body: ListView.builder(
        itemCount: callHistory.length,
        itemBuilder: (context, index) {
          final call = callHistory[index];

          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/HD-wallpaper-anime-boy-aesthetic-anime-boys-creepy-creepy-anime-boy-sad-anime-boy-sad-anime-boys.jpg'), // Replace with the path to your profile image
            ),
            title: Text(call.name,
            style: TextStyle(color: Colors.white),
            ),

            subtitle: Row(
              children: [
                Icon(
                  call.isMissed ? Icons.call_missed : Icons.call_received,
                  color: call.isMissed ? Colors.red : Theme.of(context).primaryColor,
                ),
                SizedBox(width: 4),
                Text(call.time,
                style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            trailing: Icon(
              call.isVideoCall ? Icons.videocam : Icons.call,
              color: Theme.of(context).primaryColor,
            ),
            onTap: () {
              // Handle tap, e.g., navigate to call details screen
            },
          );
        },
      ),
       floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: tabColor,
          child: const Icon(
            Icons.add_call,
            color: Colors.white,
          ),
        ),
    ),
    );
  }
}

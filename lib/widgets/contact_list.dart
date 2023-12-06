import 'package:flutter/material.dart';
import 'package:whatsapp5/colors.dart';
import 'package:whatsapp5/info.dart';
import 'package:whatsapp5/screen/mobile_chat_screen.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: info.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                     Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MobileChatScreen(),
                    ),
                  );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(
                        info[index]['name'].toString(),
                        style: const TextStyle(fontSize: 15),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          info[index]['message'].toString(),
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          info[index]['profilePic'].toString(),
                          
                        ),
                        radius: 25,
                      ),
                      trailing: Text(
                        info[index]['time'].toString(),
                        style: const TextStyle(fontSize: 13,
                        color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const Divider(color: dividerColor,)
        ],
      ),
    );
  }
}

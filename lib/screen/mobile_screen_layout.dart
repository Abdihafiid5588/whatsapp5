import 'package:flutter/material.dart';
import 'package:whatsapp5/Call.dart';
import 'package:whatsapp5/Status_Screen.dart';
import 'package:whatsapp5/colors.dart';
import 'package:whatsapp5/widgets/contact_list.dart';

class mobileSceenLayout extends StatefulWidget {
  const mobileSceenLayout({Key? key}) : super(key: key);

  @override
  _MobileScreenLayoutState createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<mobileSceenLayout> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        elevation: 0,
        title: Text(
          'Whatsapp',
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt_outlined, color: Colors.grey),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.grey),
          ),
          PopupMenuButton(
            
            
            icon: Icon(Icons.more_vert, color: Colors.grey),
            itemBuilder: (BuildContext context) => [
              
              PopupMenuItem(
               
                child: Text('New Group'),
                value: 'new_group',
              ),
              PopupMenuItem(
                child: Text('New Broadcast'),
                value: 'new_broadcast',
              ),
              PopupMenuItem(
                child: Text('Linked Device'),
                value: 'linked_device',
              ),
              PopupMenuItem(
                child: Text('Starred Messages'),
                value: 'starred_messages',
              ),
              PopupMenuItem(
                child: Text('Settings'),
                value: 'settings',
              ),
            ],
            onSelected: (value) {
              // Handle menu item selection
              switch (value) {
                case 'new_group':
                  // Handle "New Group" action
                  break;
                case 'new_broadcast':
                  // Handle "New Broadcast" action
                  break;
                case 'linked_device':
                  // Handle "Linked Device" action
                  break;
                case 'starred_messages':
                  // Handle "Starred Messages" action
                  break;
                case 'settings':
                  // Handle "Settings" action
                  break;
              }
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: tabColor,
          indicatorWeight: 4,
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: tabColor,
          unselectedLabelColor: Colors.grey,
          labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          tabs: [
            Tab(text: 'Chats'),
            Tab(text: 'Status'),
            Tab(text: 'Call'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Chats Tab
          ContactsList(),

          // Status Tab
        StatusList(),

          // Call Tab
          callscreen(),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: tabColor,
          child: const Icon(
            Icons.comment,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

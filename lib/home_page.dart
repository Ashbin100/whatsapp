import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 4,
       child: Scaffold(
      appBar: AppBar(
         actions: [const
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.search),
          ),
          PopupMenuButton(
            itemBuilder: (context)=>[
            const PopupMenuItem(
              value: 1,
              child: Text('New Group')),
              const PopupMenuItem(
                value: 2,
                child: Text('Settings')),
                const PopupMenuItem(
                  value: 3,
                  child: Text('Logout'))
          ]),
        ],
        title: const Text('Whatsapp'),
        bottom: const TabBar(tabs: [
          Icon(Icons.camera_alt),
          Text('Chats'),
          Text('Status'),
          Text('Call'),
        ]),
       
      ),
      body:  TabBarView(
        children: [
           const Text('Camera'),
          ListView.builder(
            itemCount: 100,
            itemBuilder:(context,index)
          {
            return ListTile(
              leading: Container(
                decoration:  BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all()
                ),
                child: const CircleAvatar(backgroundImage: NetworkImage('https://images.pexels.com/photos/19291404/pexels-photo-19291404/free-photo-of-moca-museum-bangkok.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),)
              ),
              title:const  Text('Happy Customer'),
              subtitle: const Text('You missed a call'),
              trailing: IconButton(onPressed: (){
                
              }, icon: const Icon(Icons.video_call)),
            );
          }),
          ListView.builder(itemBuilder: (context, index){
            return const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://images.pexels.com/photos/19291404/pexels-photo-19291404/free-photo-of-moca-museum-bangkok.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
                
              ),
              title: Text('Iron Man'),
              subtitle: Align(
                alignment: Alignment.topLeft,
                child: Icon(Icons.phone)),
                trailing: Text('11:45 am'),
            );
          }
          
          ),
          ListView.builder(
            itemCount: 100,
            itemBuilder: (context,index){
            return   ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage('https://images.pexels.com/photos/19291404/pexels-photo-19291404/free-photo-of-moca-museum-bangkok.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
                
              ),
              title: const Text('Iron Man'),
              subtitle: Text(index/2==1? 'Missed audio call':'missed video call'),
                trailing: Icon(index/2==1?Icons.phone : Icons.video_call),
            );
          })
        ]
        ),
    ),
    );
       
  }
}
import 'package:flutter/material.dart';

import 'package:flutter_application_group/pages/login.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Iage ="https://teqip.in/wp-content/uploads/2022/11/Photo-by-Aman-Gupta-on-January-22-2022_61ffafd14f1e7-1.png";
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        titleTextStyle: TextStyle(),
        title: Text("Dashboard",style: TextStyle(
          
        ),),
      ),
      drawer: Drawer(
        
        backgroundColor: Colors.black,
        
          child: ListView(
            children: 
            [
            DrawerHeader(child: 
            
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepOrange),
                
                margin: EdgeInsets.zero,
                accountName: Text(""),accountEmail:Text("") ,
                currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(Iage),)
                ,
              )
            )
            ],
          ),
        ),
      
    );
  }
}

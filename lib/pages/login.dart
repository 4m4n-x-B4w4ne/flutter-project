import 'package:flutter/material.dart';
import 'package:flutter_application_group/pages/home.dart';
import 'package:flutter_application_group/utils/routes.dart';

class LoginPage
 extends StatefulWidget {
  
  
  


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name ="";
  
  @override
  Widget build(BuildContext context) {
    final imageUrl="https://portal.selfmade.ninja/files/Logo%20Dark.png";
    
    return 
      Material(
            
        child:Column(
          children: [
            SizedBox(
              height:100
            ),
            Image.network(imageUrl),
            SizedBox(
             height: 50,
             
            ),
            Text("Welcome $name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.ltr,),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,horizontal: 32.0,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Username",
                  hintText: "Enter Your Username",
                  
            
                ),
                onChanged: (value){
                  name = value;
                  setState(() {});

                },
                
              ),
            ),
              Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,horizontal: 32.0,
              ),
              child: TextFormField(
                obscureText: true,
                
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter Your Password",
            
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            
          Material(
              child: InkWell(
                onHover:(value) {
                  Colors.black;
                },
                onTap: (){
                 Navigator.pushNamed(context,MyRoutes.homeRoute );
                },
                child: Container(
                  color: Colors.deepOrange,
                  height: 40,
                  width:100,
                  alignment: Alignment.center,
                  child: Text("Login",textDirection: TextDirection.ltr,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  
                ),
              ),
            ),
            
          ],
        ) );
  }
}
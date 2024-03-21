import 'package:flutter/material.dart';
import 'package:test5/home_screen.dart';

void main (){
  runApp ( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: HomeScreen(

      ),


    );
  }
}

//THE FILE SCREEN 1


import 'package:flutter/material.dart';
import 'package:test5/Screen_tow.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('hi'),
        backgroundColor: Colors.blue,
      ),
      
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          TextButton(
              onPressed: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>ScreenTow())
                );
              }, 
              child: Text('Screen 1'))
          
        ],
      ),
    );
  }
}

//THE FILE THE SCOUND FILE THE 2ND SCREEN





import 'package:flutter/material.dart';
import 'package:test5/home_screen.dart';

class ScreenTow extends StatefulWidget {
  const ScreenTow({super.key});

  @override
  State<ScreenTow> createState() => _ScreenTowState();
}

class _ScreenTowState extends State<ScreenTow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('WELCOME TO MY APP '),
        backgroundColor: Colors.blue,
      ),

      drawer: Drawer(

        child: ListView(
          children: [
            DrawerHeader(child: Text('WELCOME THE APP DRAWER BUTOON')),
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,


              ),
                currentAccountPicture: Image(image:NetworkImage('https://picsum.photos/250?image')),
                accountName: Text('RISHI KUMAR '), accountEmail: Text('krishi00589gmail.com')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('HOME PAGE'),

              onTap: () {
               // Navigator.pushNamed(context,ScreenTow.id);
               // Navigator.pushNamed(context, ScreenTow.id);
              }

            ),

            ListTile(
                leading: Icon(Icons.calculate),
                title: Text('HOME PAGE'),

                onTap: () {
                  // Navigator.pushNamed(context,ScreenTow.id);
                  //Navigator.pushNamed(context,HomeScreen.id );
                }

            ),


          ],
        ),

      ),


      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(

      child:     TextButton(
              onPressed: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>ScreenTow())
                );
              },
              child: Text('Screen 2')

      )
          ),
        ],
      ),
    );
  }
}


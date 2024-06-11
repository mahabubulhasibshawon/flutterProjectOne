// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.red),
        darkTheme: ThemeData(primarySwatch: Colors.indigo),
        color: Colors.blue,
        debugShowCheckedModeBanner: false,
        home: HomeActivity());
  }

}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  MySnackBar(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }



  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        padding: EdgeInsets.all(25),
        backgroundColor: Colors.orangeAccent,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))
        )

    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        titleSpacing: 10,
        centerTitle: false,
        toolbarHeight: 50,
        toolbarOpacity: 0.9,
        elevation: 50,
        backgroundColor: Colors.red,
        actions: [
          IconButton(onPressed: (){MySnackBar("Comments", context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){MySnackBar("search", context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("Account", context);}, icon: Icon(Icons.account_circle_outlined)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
        onPressed: (){
          MySnackBar("I'm floating action button", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_phone),label: "contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2),label: "profile"),
        ],
        onTap: (int index){
          if(index == 0){
            MySnackBar("Home Menu", context);
          }
          if(index == 1) {
            MySnackBar("contact Menu", context);
          }
          if(index == 2){
            MySnackBar("profile Menu", context);
          }
        },

      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.black54),
                  accountName: Text("Hasib"),
                  accountEmail: Text("hasib@gmail.com"),
                  currentAccountPicture: Image.network("https://media.licdn.com/dms/image/C5603AQH5w_IAWgu_-g/profile-displayphoto-shrink_800_800/0/1595098814626?e=1723680000&v=beta&t=Eb-4iG2egaI6Uvl5GMzhzWkAgrXTcEkrC52Yzq5GXSY"),
                  onDetailsPressed: (){MySnackBar("This is profile", context);},
            )),
            ListTile(title: Text("Home"),leading: Icon(Icons.home), onTap: (){MySnackBar("home", context);}),
            ListTile(title: Text("Contact"),leading: Icon(Icons.contact_phone), onTap: (){MySnackBar("contact", context);}),
            ListTile(title: Text("Email"),leading: Icon(Icons.email), onTap: (){MySnackBar("email", context);}),
            ListTile(title: Text("Profile"),leading: Icon(Icons.person_2_sharp), onTap: (){MySnackBar("profile", context);})
          ],
        ),
      ),
      // body: Container(
      //   height: 250,
      //   width: 250,
      //   alignment: Alignment.center,
      //   margin: EdgeInsets.all(30),
      //   padding: EdgeInsets.all(40),
      //   child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuxQ0_GzuJD5UEoe5n641lIZwxFOcmUBs4jQ&s"),
      //   decoration: BoxDecoration(
      //     color: Colors.blue,
      //         border: Border.all(color: Colors.black54, width: 5)
      //   ),
      // )
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
            TextButton(onPressed: (){MySnackBar("Button clicked", context);}, child: Text("Button")),
            ElevatedButton(onPressed: (){MySnackBar("Elevated btn", context);}, child: Text("Elv btn"),style: buttonStyle,),
            OutlinedButton(onPressed: (){MySnackBar("outltined btn", context);}, child: Text("Out btn"),style: buttonStyle,)
          ],
      ),
      
    );
  }
  
}
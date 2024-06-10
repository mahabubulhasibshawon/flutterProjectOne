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
      body: Text("Hello Flutter!!!")
    );
  }
  
}
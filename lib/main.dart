import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeActivity(),);
  }

}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});


  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 60),
      padding: EdgeInsets.all(10),


    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),

      ),
      body: Column(
        mainAxisAlignment:MainAxisAlignment.start,
        children: [

             ElevatedButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder:(context)=>HomeActivity1("This home activity 1")));
             },
               child: Text("Myapp1"),style: buttonStyle,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeActivity2("This is home activity2")));
          },
              child: Text("Myapp2"),style: buttonStyle,)

        ],

      ),
    );

  }

}
class HomeActivity1 extends StatelessWidget{
   String msg;
   HomeActivity1(
       this.msg,
       {super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),

      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeActivity2("This activity 1 to 2")));
        },child: Text("Myapp2"),),
      ),
    );

  }

}
class HomeActivity2 extends StatelessWidget{
  String msg;
   HomeActivity2(
       this.msg,
       {super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),

      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeActivity1("This activity 2 to 1")));

        },child: Text("Myapp1"),),
      ),

    );

  }

}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ImageCanvas(),
    );
  }
}


class ImageCanvas extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     
    return Scaffold(

       body: 

         Align(alignment: Alignment.center, 
         child: VizitContainer(), 
         
         ),
       appBar: AppBar( title: const Text("Визитка"),),
    );
  }
}

class VizitContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     
    return Container(
      padding: EdgeInsets.only(top:100, left:10),
      color: Colors.white,
      
       child: Column(children: <Widget>[
      //  Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEUDE6-PDdkNcAG10PcudDCjhViFuWuyPBIg&usqp=CAU', 
      //  width: 180, fit: BoxFit.fitWidth),
        Container( 
          margin: const EdgeInsets.all(25.0),
          padding: const EdgeInsets.all(3.0),
          child: Image.asset('img/ava3.jpg', width: 220, height: 240, fit: BoxFit.fitWidth),),


Container(
 margin: const EdgeInsets.only(bottom: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
    border: Border.all(color: Colors.blueAccent, 
    
    width: 5.0, 
    ),
      color: Colors.blueGrey[100],
  ),

  child: 
RichText(
      textDirection: TextDirection.ltr,
        text: TextSpan(
          text: "       тел. (096) 150-94-99      ",
          style: TextStyle(color: Colors.black, fontSize: 20,
      )
     ),
),),

Container(

    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
    border: Border.all(color: Colors.blueAccent, 
    
    width: 5.0, 
    ),
    color: Colors.grey[300],
  ),
  child: 
RichText(
      textDirection: TextDirection.ltr,
        text: TextSpan(
          text: "  shtirlits1972@gmail.com   ",
          style: TextStyle(color: Colors.black, fontSize: 20,
      )
     ),
),),

       ],
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.start,
               textDirection: TextDirection.ltr,
       ),
    );
  }
}

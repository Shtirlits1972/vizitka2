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
       Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEUDE6-PDdkNcAG10PcudDCjhViFuWuyPBIg&usqp=CAU', 
       width: 180, fit: BoxFit.fitWidth),
        // Container(child: Image.asset('assets/ava3.jpg', width: 220, height: 140, fit: BoxFit.fitWidth),),

          Text('(096) 150-94-99)',
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,  
              style: TextStyle(color: Colors.black,   
            fontSize: 20,                       
            backgroundColor: Colors.white,   
        ), ),
          Text('shtirlits1972@gmail.com',
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.center,  
                      style: TextStyle(color: Colors.black,   
            fontSize: 20,                       
            backgroundColor: Colors.white,    
        ),),

       ],
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.start,
               textDirection: TextDirection.ltr,
       ),
    );
  }
}

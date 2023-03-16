import 'package:flutter/material.dart';
void main() {
    runApp(MaterialApp(home:Gla(),debugShowCheckedModeBanner: false,));
  }
class Gla extends StatelessWidget {
  const Gla({Key? key}) : super(key: key);
  
  
  //var stylus2=

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              child: Center(child: Image.asset('assets/images/gla logo.png',height: 500,width: 500,)),
            ),
            Container(
              child: Center(child: Text('GLA',style: TextStyle(color:Colors.green,fontSize: 50,fontWeight: FontWeight.bold),)),
            ),
            Container(
              child:Center(child:Text('UNIVERSITY',style:TextStyle(fontSize: 40,color:Colors.green,fontWeight: FontWeight.bold),)),
            ),
            Container(
              child: Center(child: Text('MATHURA',style:TextStyle(color:Colors.green,fontWeight: FontWeight.bold,fontSize: 35),)),
            ),
            Container(
              child: Center(child: Text('Established vide U.P.Act 21 of 2010.',style: TextStyle(color:Colors.green,fontWeight: FontWeight.bold,fontSize: 15),)),
            ),
          ],
        ));
  }
}

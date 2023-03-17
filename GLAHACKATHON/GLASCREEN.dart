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
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: 120,),
              Container(
                child:Image.asset('assets/images/glalogo.png',height: 300,width:300,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 75),
                child: Container(
                  child: Align(child: 
                  Text('GLA',
                  //textHeightBehavior: TextHeightBehavior(),
                  textAlign: TextAlign.right,style: TextStyle(color:Color.fromARGB(255, 24, 111, 44),fontSize:78,fontWeight: FontWeight.w400,),),alignment: Alignment.centerLeft,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:71),
                child: Container(
                  child:Align(child:Text('UNIVERSITY',style:TextStyle(fontSize:42,color:Color.fromARGB(255,24,111,44),fontWeight: FontWeight.w400),),alignment: Alignment.centerLeft,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:71),
                child: Container(
                  child: Align(child: Text('MATHURA',style:TextStyle(color:Color.fromARGB(255,24,111,44),fontWeight: FontWeight.w400,fontSize:38),),alignment: Alignment.centerLeft,),
                ),
              ),
              SizedBox(width: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 71),
                child: Container(
                  child: Align(child: 
                  Text('Established vide U.P. Act of 2010',
                  style: 
                  TextStyle(color:Color.fromARGB(255,24,111,44),
                  fontWeight: FontWeight.w400,fontSize: 15),),alignment: Alignment.centerLeft,),
                ),
              ),
              SizedBox(height: 120,),
            ],
          ),
        ));
  }
}

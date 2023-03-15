import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.red,
      appBar:AppBar(
        title:const Text('Business Card'),
        backgroundColor:Colors.black,
        titleTextStyle:const TextStyle(
          color:Colors.white,
          fontWeight:FontWeight.bold
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius:80.0,
              backgroundImage:AssetImage('assets/images/p1.png'),
            ),
            const SizedBox(
              height:10.0,
            ),
            const Text('Abdo Mansour',style:TextStyle(
              fontWeight:FontWeight.bold
            ),),
            const SizedBox(
              height:10.0,
            ),
            const Text('Software Engineer',style:TextStyle(
                fontWeight:FontWeight.bold
            ),),
            const SizedBox(
              height:10.0,
            ),
            Container(
              decoration:const BoxDecoration(
                color:Colors.white
              ),
              child:
              Row(
                children: const [
                  Icon(Icons.call),
                  SizedBox(width:15.0,),
                  Text('01280541615'),
                ],
              ),
            ),
            const SizedBox(
              height:10.0,
            ),
            Container(
              decoration:const BoxDecoration(
                  color:Colors.white
              ),
              child:
              Row(
                children: const [
                  Icon(Icons.email),
                  SizedBox(width:15.0,),
                  Text('ammar@gmail.com'),
                ],
              ),
            ),
          ],

        ),
      ),
    );
  }
}

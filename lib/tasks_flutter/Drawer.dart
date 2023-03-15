import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[800],
        width: double.infinity,
        height: 200,
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(

                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: const [
                      CircleAvatar(radius:80.0,
                        backgroundColor:Colors.deepPurple,
                      ),
                      SizedBox(height:15.0,),
                      Text('Abdo mansour',
                        style: TextStyle(fontSize: 18,color:Colors.white),
                      ),
                      Text('abdo123@gmail.com',style:TextStyle(color:Colors.white),)
                    ],
                  )
              ), //DrawerHeader
            ],
            ),
        );
    }
}
import 'package:flutter/material.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text('WhatsApp Chats'),
        centerTitle:false,
        actions: const [
          Icon(Icons.search),
          SizedBox(width:10.0,),
          Icon(Icons.message),
          SizedBox(width:10.0,),
        ],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child:Container(
            child: Column(
              children: [
                MyHeaderDrawer(),

              ],
            ),
          ) ,
        ),
      ),
      body:Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context,state)=>message(),
              separatorBuilder:(context,state)=>Padding(
                padding:  const EdgeInsetsDirectional.only(
                  start:90.0,
                  end:10.0,
                ),
                child: Container(
                  height:1.0,
                  color:Colors.teal.withOpacity(0.3),
                ),
              ),
              itemCount: 20,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() {},
        child: Icon(
          Icons.camera_alt_outlined,
        ),
      ),
    );
  }
}


Widget message()=>Container(
  height:70.0,
  child:Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
          children: [
            const CircleAvatar(
              radius:35.0,
              backgroundImage:AssetImage('assets/images/p1.png'),
            ),
            const SizedBox(width: 10.0,),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children:const [
                Text('Name of person',
                  overflow:TextOverflow.ellipsis,
                  maxLines:1,
                  style:TextStyle(fontWeight:FontWeight.bold),
                ),
                Text('message',overflow:TextOverflow.ellipsis,maxLines:1,),
              ],
            ),
            const Spacer(),
            const Text('date'),
          ],
         ),
     ),
);

Widget MyHeaderDrawer (){
  return Container();
}
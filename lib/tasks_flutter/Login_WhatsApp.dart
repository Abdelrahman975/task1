

import 'package:flutter/material.dart';

import 'WhatsApp_Chat.dart';



class LoginWhatsApp extends StatefulWidget {
  const LoginWhatsApp({Key? key}) : super(key: key);

  @override
  State<LoginWhatsApp> createState() => _LoginWhatsAppState();
}

class _LoginWhatsAppState extends State<LoginWhatsApp> {
  @override
  Widget build(BuildContext context) {
    bool isPassword=true;
    var formKey=GlobalKey<FormState>();
    IconData? suffix=Icons.visibility;
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Log In  '),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key:formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller:emailController,
                      keyboardType:TextInputType.emailAddress,
                      decoration:InputDecoration(
                        label:const Text('Email',
                          style:TextStyle(
                            color:Colors.blue,
                          ),
                        ),
                        prefixIcon:const Icon(Icons.email),
                        prefixIconColor:Colors.blue,
                        border:OutlineInputBorder(
                          borderRadius:BorderRadius.circular(20.0),
                        ),
                      ),
                      validator:(String? value)
                      {if(value!.isEmpty) {
                        return ('invalid data');
                      }
                      return null;
                      },
                    ),
                    const SizedBox(height: 15.0,),
                    TextFormField(
                      controller:passController,
                      keyboardType:TextInputType.visiblePassword,
                      obscureText:true,
                      decoration:InputDecoration(
                        label:const Text('Password',
                          style:TextStyle(
                            color:Colors.blue,
                          ),
                        ),
                        prefixIcon:const Icon(Icons.lock),
                        prefixIconColor:Colors.blue,
                        border:OutlineInputBorder(
                          borderRadius:BorderRadius.circular(20.0),
                        ),
                        suffixIcon:IconButton(onPressed: ()
                        {
                          setState(() {
                            isPassword=!isPassword;
                            suffix=isPassword? Icons.visibility_outlined:Icons.visibility_off_outlined;
                          });
                        },
                          icon:Icon(suffix),
                        ),
                        suffixIconColor:Colors.red,
                      ),
                      validator:(String? value)
                      {if(value!.isEmpty||value.length<6) {
                        return ('invalid data');
                      }
                      return null;
                      },
                    ),
                    const SizedBox(height: 20.0,),
                    MaterialButton(
                      color:Colors.teal,
                      child:const Text('Login'),
                      onPressed:()
                      {
                        if(formKey.currentState!.validate())
                        {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>WhatsApp()));
                        }
                      },
                    )

                  ],
                ),
              ),
            ),
            ),
        );
    }
}
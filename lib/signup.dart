import 'package:college_management_system/myprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/register.png'),
          fit: BoxFit.cover,
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 100),
              child: Container(
                child: Text('Create\nAccount',style: TextStyle(fontSize: 40,color: Colors.white),),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height*0.35,
                left: 35,
                right:35,
              ),
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      TextField(
                        style:TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText:'Name',
                            hintStyle: TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(color: Colors.lightBlueAccent),
                            )
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      TextField(
                        style:TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText:'Official E-Mail',
                            hintStyle: TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(color: Colors.lightBlueAccent),
                            )
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      TextField(
                        style:TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText:'Roll No.',
                            hintStyle: TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(color: Colors.lightBlueAccent),
                            )
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      TextField(
                        style:TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText:'Phone Number',
                            hintStyle: TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(color: Colors.lightBlueAccent),
                            )
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Sign Up',style: TextStyle(fontSize: 27,fontWeight: FontWeight.w500,color: Colors.white),),
                          // TextButton(onPressed: (){
                          //   Navigator.push(context, MaterialPageRoute(builder: (context)=> MyProfileScreen()));
                          // }, child:Text('Sign Up',style: TextStyle(fontSize: 27,
                          //   decoration: TextDecoration.underline,
                          //   color: Colors.white,
                          // ),),
                          // ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xff4c505b),
                            child: IconButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> MyProfileScreen()));
                            }, icon: Icon(Icons.arrow_forward),
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
    ),
    );
  }

}
import 'package:college_management_system/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // we have used a container as scanffold doesnot have
    // option to fit in a whole image
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/login.png'),fit:BoxFit.cover)
      ),
      // since we want to make all the content on this container
      // we are making scaffold as its child
      child: Scaffold(
        // by default scaffold has its color white so we have set it
        // transparent
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 150),
              child: Container(
                child: Text('Welcome\nBack',style: TextStyle(fontSize: 40,color: Colors.white),),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.45,
                  left: 35,
                  right:35,
              ),
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                          )
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                            )
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Sign Up',style: TextStyle(fontSize: 27,fontWeight: FontWeight.w500),),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xff4c505b),
                            child: IconButton(onPressed: (){
                            }, icon: Icon(Icons.arrow_forward),
                            color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(onPressed: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                          }, child:Text('Sign Up',style: TextStyle(fontSize: 18,
                              decoration: TextDecoration.underline,
                            color: Color(0xff4c505b),
                          ),),
                          ),
                          TextButton(onPressed: (){
                        
                          }, child:Text('Forgot Password',style: TextStyle(
                              fontSize: 18,
                            decoration: TextDecoration.underline,
                            color: Color(0xff4c505b),
                          ),),
                          )
                        ],
                      )
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

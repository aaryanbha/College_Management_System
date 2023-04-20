import 'package:college_management_system/widgets/circlebuttom.dart';
import 'package:college_management_system/widgets/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants/color.dart';
import 'models/category.dart';

class DashBoard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Column(
          children: const [
            AppBar(),
            Body(),
          ],
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 0.5],
          colors: [
            Color(0xFF456DBD),
            Color(0xFF456DBD),
          ],
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello,\nGood Morning",
                style: Theme
                    .of(context)
                    .textTheme
                    .titleLarge,
              ),
              CircleButton(
                icon: Icons.notifications,
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const SearchTextField()
        ],
      ),
    );
  }
}
class Body extends StatelessWidget{
  const Body({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        // announcement slider
        Row(
          children: [
            Text('Annoucments',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
          ],
        ),
        // sized box for gap
        SizedBox(
          height: 20,
        ),
         Row(
           children: [
             Container(9
               margin: EdgeInsets.all(2),
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(
                     bottomRight: Radius.circular(40),
                     bottomLeft: Radius.circular(40),
                   )
               ),
               child: Row(
                 children: [
                   // image
                   Container(
                     width: 100,
                     height: 100,
                     decoration: BoxDecoration(
                         image: DecorationImage(image: AssetImage('assets/images/student_profile.jpeg'),fit:BoxFit.cover)
                     ),
                   ),
                   SizedBox(
                     width: 10,
                   ),
                   Container(
                     width: 80,
                     height: 100,
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       // mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text('TECHNITI',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                         Text('2022',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                         TextButton(onPressed: (){

                         },
                             child: Text('Click here',style: TextStyle(fontSize: 14),),

                         )
                       ],
                     ),
                   )
                 ],
               )
             )
           ],
         ),
        // options
        Container(
          height: 300,
          // color: Colors.black,
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,),
            children: [
              Container(
                child: Column(
                  children: const [
                    CircleAvatar(
                      child: Icon(Icons.search,size: 18,color: Colors.white),
                      backgroundColor: Color(0xFF345FB4),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Welcome',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                  ],

                ),
              ),
              Container(
                child: Column(
                  children: const [
                    CircleAvatar(
                      child: Icon(Icons.notes,size: 18,color: Colors.white),
                      backgroundColor: Color(0xFF345FB4),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Welcome',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                  ],

                ),
              ),
              Container(
                child: Column(
                  children: const [
                    CircleAvatar(
                      child: Icon(Icons.assessment,size: 18,color: Colors.white),
                      backgroundColor: Color(0xFF345FB4),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Welcome',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                  ],

                ),
              ),
              Container(
                child: Column(
                  children: const [
                    CircleAvatar(
                      child: Icon(Icons.attach_email,size: 18,color: Colors.white),
                      backgroundColor: Color(0xFF345FB4),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Welcome',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                  ],

                ),
              ),
              Container(
                child: Column(
                  children: const [
                    CircleAvatar(
                      child: Icon(Icons.question_answer,size: 18,color: Colors.white),
                      backgroundColor: Color(0xFF345FB4),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Welcome',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                  ],

                ),
              ),
              Container(
                child: Column(
                  children: const [
                    CircleAvatar(
                      child: Icon(Icons.mark_as_unread,size: 18,color: Colors.white),
                      backgroundColor: Color(0xFF345FB4),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Welcome',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                  ],

                ),
              ),
            ],
          )
        ),
      ],
    );
  }
}


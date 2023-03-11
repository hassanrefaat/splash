import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components.dart';

class Note_Pad extends StatelessWidget {
   var SearchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Padding(
       padding: const EdgeInsets.all(20.0),
       child: SingleChildScrollView(

         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,

           children: [


             Text('Notepad',
               style: TextStyle(
                 fontSize: 32,
                 fontWeight: FontWeight.bold,

             ),),
             SizedBox(
               height: 15,
             ),
             defaultFormField(
                 controller: SearchController,
                 type: TextInputType.text,
                 validator: null,
                 lable: 'Search notes',
                 prefix: Icons.search,
             ),
             SizedBox(
               height: 20,
             ),
             Container(

               width: double.infinity,
               height: 60,
               color: Colors.greenAccent,
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text('Todays grocery list ',
                       style
                           :TextStyle(
                         fontSize: 16,
                       ) ,),
                     Text('June 26,2022 08:05 PM'
                     ,style: TextStyle(
                         fontSize: 12
                       ),
                     ),
                   ],
                 ),
               ),
             ),
             SizedBox(
               height: 20,
             ),
             Container(
               width: double.infinity,
               height: 60,
               color: Colors.yellowAccent,
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text('Rich dad Poor dad Quotes ',
                       style
                           :TextStyle(
                         fontSize: 16,
                       ) ,),
                     Text('June 22,2022 05:00 PM'
                       ,style: TextStyle(
                           fontSize: 12
                       ),
                     ),
                   ],
                 ),
               ),
             ),
             SizedBox(
               height: 500,
             ),
             Row(
               crossAxisAlignment: CrossAxisAlignment.end,
               mainAxisAlignment: MainAxisAlignment.end,
               children: [

                 FloatingActionButton(
                     child: Icon(Icons.add),
                     onPressed: (){}),
               ],
             )



           ],
         ),
       ),
     ),
   );
  }
}


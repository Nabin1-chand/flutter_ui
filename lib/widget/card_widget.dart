import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.text, required this.onTap});
  final String text;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5.0),
      child: GestureDetector(
        onTap: () => onTap(),
        child: Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0),
          )),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Text(text),
          ),
        ),
      ),
    );
  }
}
// Container(
//                     height: 490,
//                     decoration: BoxDecoration(
//                       color: Colors.pink[100],
//                       borderRadius: BorderRadius.circular(35),
//                     ),
//                     child: Padding(
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text('Jan, 16th 2023\n1:00 PM - 3:00 PM'),
//                               Container(
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(30),
//                                       color: Colors.white),
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Text(
//                                       'Recap ready!',
//                                       style: TextStyle(color: Colors.red),
//                                     ),
//                                   )),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                             'Kickoff meeting - kendates Projects',
//                             style: TextStyle(
//                                 fontSize: 16, fontWeight: FontWeight.w500),
//                           ),
//                           GestureDetector(
//                               onTap: () {
//                                 print('Hello');
//                               },
//                               child: Text('Romario meeting room'))
//                         ],
//                       ),
//                     ),
//                   ),
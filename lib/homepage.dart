// import 'package:flutter/material.dart';

// class Homepage extends StatelessWidget {
//   const Homepage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         body: Column(
//           children: [
//             Stack(
//               children: [
//                 Container(
//                     height: MediaQuery.of(context).size.height * 0.85,
//                     child: Image.network(
//                       "https://images.pexels.com/photos/5546886/pexels-photo-5546886.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
//                       fit: BoxFit.fitHeight,
//                     )),
//                 Positioned(
//                     bottom: 1,
//                     right: 1,
//                     child: Container(
//                       child: Image.asset(
//                         "assets/images/pic.png",
//                         fit: BoxFit.fill,
//                       ),
//                     ))
//               ],
//             ),
//             Container(
//               padding: EdgeInsets.all(20),
//               child: Column(
//                 children: [
//                   Text(
//                     "Welcome to our store",
//                     style: TextStyle(
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ));
//   }
// }

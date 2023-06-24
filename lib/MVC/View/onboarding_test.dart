// import 'package:flutter/material.dart';
//
//
// class MyLogind extends StatefulWidget {
//   const MyLogind({Key? key}) : super(key: key);
//
//   @override
//   _MyLoginState createState() => _MyLoginState();
// }
//
// class _MyLoginState extends State<MyLogind> {
//   //Password Field obscureText  Handler
//   bool _isHidden = true;
//   void _toggleVisibility() {
//     setState(() {
//       _isHidden = !_isHidden;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage(
//               'images/test1.png',
//             ),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Scaffold(
//           backgroundColor: Colors.white,
//           body: Stack(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     padding: const EdgeInsets.only(
//                       top: 60.0,
//                     ),
//                     child: const Text(
//                       'LOGIN',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 40.0,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SingleChildScrollView(
//                 child: Container(
//                   padding: EdgeInsets.only(
//                     top: MediaQuery.of(context).size.height * 0.5,
//                     left: 35,
//                     right: 35,
//                   ),
//                   child: Column(
//                     children: [
//                       TextField(
//                         decoration: InputDecoration(
//                           labelText: 'Email',
//                           prefixIcon:const Icon(Icons.email_outlined),
//                           fillColor: Colors.grey.shade100,
//                           filled: true,
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 30.0),
//                       TextFormField(
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please enter the password';
//                           } else if (value.length <= 6) {
//                             return 'Password must be greater than 6 digits';
//                           }
//                         },
//                         obscureText: true,
//                         decoration: InputDecoration(
//                           labelText: 'Password',
//                           fillColor: Colors.grey.shade100,
//                           prefixIcon:const Icon(Icons.lock),
//                           suffixIcon: IconButton(
//                             onPressed: _toggleVisibility,
//                             icon: _isHidden
//                                 ?const Icon(Icons.visibility)
//                                 :const Icon(Icons.visibility_off),
//                           ),
//                           filled: true,
//                           // hintText: 'Password',
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 30.0),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           ElevatedButton(
//                               style: ElevatedButton.styleFrom(
//                                 maximumSize:const  Size(170.0, 90.0),
//                                 minimumSize:const  Size(170.0, 60.0),
//                                 primary: Colors.black,
//                                 shape: StadiumBorder(),
//                               ),
//                               onPressed: () {},
//                               child: const Row(
//                                 mainAxisAlignment:
//                                 MainAxisAlignment.spaceBetween,
//                                 //crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Text('LOG IN'),
//                                   Icon(
//                                     Icons.lock,
//                                     color: Colors.white,
//                                   ),
//                                 ],
//                               )),
//                         ],
//                       ),
//                       const SizedBox(height: 30.0),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           TextButton(
//                             onPressed: () {
//                               Navigator.pushNamed(context, 'register');
//                             },
//                             child: const Text(
//                               'Register',
//                               style: TextStyle(color: Colors.black),
//                             ),
//                           ),
//                           TextButton(
//                             onPressed: () {
//                               Navigator.pushNamed(context, 'forgot');
//                             },
//                             child: const Text(
//                               'Forgot password?',
//                               style: TextStyle(color: Colors.black),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

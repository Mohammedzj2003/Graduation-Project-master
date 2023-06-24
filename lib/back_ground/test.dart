// import 'package:flutter/material.dart';
// class srdhsgs extends StatefulWidget {
//
//   const srdhsgs({Key? key}) : super(key: key);
//
//
//   @override
//   State<srdhsgs> createState() => _srdhsgsState();
// }
//
// class _srdhsgsState extends State<srdhsgs> {
//   bool _stateLogin = false;
//
//   Widget _buildSwitchListTile(
//       String title,
//       String description,
//       bool currentValue,
//       Function updateValue,
//       ) {
//     return SwitchListTile(
//       title: Text(title),
//       value: currentValue,
//       subtitle: Text(
//         description,
//       ),
//       onChanged: (value) => updateValue,
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(),
//         body: SafeArea(
//           child: _buildSwitchListTile('Autorize', 'test', _stateLogin, (value) {
//             setState(
//                   () {
//                 _stateLogin = value;
//               },
//             );
//           }),
//         ));
//   }
// }
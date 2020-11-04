// import 'package:flutter/material.dart';

// class AddProduct extends StatefulWidget {
//   @override
//   _AddProductState createState() => _AddProductState();
// }

// class _AddProductState extends State<AddProduct> {



//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: <Widget>[
//           Text('Available Sizes'),
//           SingleChildScrollView(
//             child: Row(
//               children: <Widget>[
//                 Checkbox(
//                     value: selectedSizes.contains('XS'),
//                     onChanged: (value) => changeSelectedSize('XS')),
//                 Text(
//                   'XS',
//                   style: TextStyle(fontSize: 10),
//                 ),
//                 Checkbox(
//                     value: selectedSizes.contains('S'),
//                     onChanged: (value) => changeSelectedSize('S')),
//                 Text(
//                   'S',
//                   style: TextStyle(fontSize: 10),
//                 ),
//                 Checkbox(
//                     value: selectedSizes.contains('M'),
//                     onChanged: (value) => changeSelectedSize('M')),
//                 Text(
//                   'M',
//                   style: TextStyle(fontSize: 10),
//                 ),
//                 Checkbox(
//                     value: selectedSizes.contains('L'),
//                     onChanged: (value) => changeSelectedSize('L')),
//                 Text(
//                   'L',
//                   style: TextStyle(fontSize: 10),
//                 ),
//                 Checkbox(
//                     value: selectedSizes.contains('XL'),
//                     onChanged: (value) => changeSelectedSize('XL')),
//                 Text(
//                   'XL',
//                   style: TextStyle(fontSize: 10),
//                 ),
//                 Checkbox(
//                     value: selectedSizes.contains('XXL'),
//                     onChanged: (value) => changeSelectedSize('XXL')),
//                 Text(
//                   'XXL',
//                   style: TextStyle(fontSize: 10),
//                 ),
//               ],
//             ),
//           ),
//           Row(
//             children: <Widget>[
//               Checkbox(
//                   value: selectedSizes.contains('28'),
//                   onChanged: (value) => changeSelectedSize('28')),
//               Text(
//                 '28',
//                 style: TextStyle(fontSize: 10),
//               ),
//               Checkbox(
//                   value: selectedSizes.contains('30'),
//                   onChanged: (value) => changeSelectedSize('30')),
//               Text(
//                 '30',
//                 style: TextStyle(fontSize: 10),
//               ),
//               Checkbox(
//                   value: selectedSizes.contains('32'),
//                   onChanged: (value) => changeSelectedSize('32')),
//               Text(
//                 '32',
//                 style: TextStyle(fontSize: 10),
//               ),
//               Checkbox(
//                   value: selectedSizes.contains('34'),
//                   onChanged: (value) => changeSelectedSize('34')),
//               Text(
//                 '34',
//                 style: TextStyle(fontSize: 10),
//               ),
//               Checkbox(
//                   value: selectedSizes.contains('36'),
//                   onChanged: (value) => changeSelectedSize('36')),
//               Text(
//                 '36',
//                 style: TextStyle(fontSize: 10),
//               ),
//               Checkbox(
//                   value: selectedSizes.contains('38'),
//                   onChanged: (value) => changeSelectedSize('38')),
//               Text(
//                 '38',
//                 style: TextStyle(fontSize: 10),
//               ),
//             ],
//           ),
//           Row(
//             children: <Widget>[
//               Checkbox(
//                   value: selectedSizes.contains('40'),
//                   onChanged: (value) => changeSelectedSize('40')),
//               Text(
//                 '40',
//                 style: TextStyle(fontSize: 10),
//               ),
//               Checkbox(
//                   value: selectedSizes.contains('42'),
//                   onChanged: (value) => changeSelectedSize('42')),
//               Text(
//                 '42',
//                 style: TextStyle(fontSize: 10),
//               ),
//               Checkbox(
//                   value: selectedSizes.contains('44'),
//                   onChanged: (value) => changeSelectedSize('44')),
//               Text(
//                 '44',
//                 style: TextStyle(fontSize: 10),
//               ),
//               Checkbox(
//                   value: selectedSizes.contains('46'),
//                   onChanged: (value) => changeSelectedSize('46')),
//               Text(
//                 '46',
//                 style: TextStyle(fontSize: 10),
//               ),
//               Checkbox(
//                   value: selectedSizes.contains('48'),
//                   onChanged: (value) => changeSelectedSize('48')),
//               Text(
//                 '48',
//                 style: TextStyle(fontSize: 10),
//               ),
//               Checkbox(
//                   value: selectedSizes.contains('50'),
//                   onChanged: (value) => changeSelectedSize('50')),
//               Text(
//                 '50',
//                 style: TextStyle(fontSize: 10),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   void changeSelectedSize(String size) {
//     if (selectedSizes.contains(size)) {
//       setState(() {
//         selectedSizes.remove(size);
//           print(selectedSizes);
//       });
//     } else {
//       setState(() {
//         selectedSizes.insert(0, size);
//           print(selectedSizes);
//       });
//     }
//   }

//   noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
// }

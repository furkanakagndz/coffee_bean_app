import 'package:flutter/material.dart';
import 'package:coffee_bean/home.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

// class Rows extends StatelessWidget {
//   const Rows({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Columns"),
//         backgroundColor: Colors.grey,
//       ),
//       body: Row(
//         // crossAxisAlignment: CrossAxisAlignment.stretch,
//         mainAxisAlignment: MainAxisAlignment.center,
//         // crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//             height: 100,
//             color: Colors.red,
//             child: const Text("One")
//           ),
//           Container(
//             height: 200,
//             color: Colors.green,
//             child: const Text("Two")
//           ),
//           Container(
//             height: 300, 
//             color: Colors.blue,
//             child: const Text("Three")
//           ),
//         ]
        
//       ),
//     );
//   }
// }


// class Columns extends StatelessWidget {
//   const Columns({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Columns"),
//         backgroundColor: Colors.grey,
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             width: 100,
//             color: Colors.red,
//             child: const Text("One")
//           ),
//           Container(
//             width: 200,
//             color: Colors.green,
//             child: const Text("Two")
//           ),
//           Container(
//             width: 300,
//             color: Colors.blue,
//             child: const Text("Three")
//           ),
//         ]
        
//       ),
//     );
//   }
// }
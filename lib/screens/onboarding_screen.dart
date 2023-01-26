// import 'package:bloodbank_app/constants/onboarding_data.dart';
// import 'package:flutter/material.dart';

// class MyOnboardingPage extends StatelessWidget {
//   const MyOnboardingPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: InkWell(
//           onTap: () => {
//             Navigator.pop(context),
//           },
//           child: Container(
//             color: Colors.red,
//             child: ListView(
//               // mainAxisAlignment: MainAxisAlignment.center,
//               children: onboardingData
//                   .map(
//                     (onboardingSingleData) => onboardingWidget(
//                       onboardingSingleData["text"]!,
//                       imageUrl: onboardingSingleData["image_url"],
//                     ),
//                   )
//                   .toList(),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';

import 'package:memo_furniture/constant.dart';
import 'package:memo_furniture/core/routers/routers.dart';
import 'package:memo_furniture/features/signin/view.dart';

part 'units/next_button.dart';
part 'units/photo.dart';
part 'units/onboard.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kRedClr,
        child: OnBoardunits(),
      ),
    );
  }
}






// import 'dart:async';

// import 'package:flutter/material.dart';

// import '../../core/routers/routers.dart';
// import '../register/view.dart';
// import '../signin/view.dart';
// import 'view2.dart';

// import '../../constant.dart';
// import '../../widgets/button.dart';
// import '../../widgets/textbutton.dart';

// part 'units/buttons_unit.dart';
// part 'units/image_units.dart';

// class SplashView extends StatefulWidget {
//   @override
//   State<SplashView> createState() => _SplashViewState();
// }

// class _SplashViewState extends State<SplashView> {
//   @override
//   void initState() {
//     Timer(Duration(seconds: 5), () {
//       MagicRoute.navigateAndReplacement(SplashView2());
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: kRedClr,
//       ),
//       body: Container(
//         width: double.infinity,
//         color: kRedClr,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             ImageUnit(),
//             ButtonsUnits(),
//           ],
//         ),
//       ),
//     );
//   }
// }
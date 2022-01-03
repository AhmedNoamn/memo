import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:memo_furniture/constant.dart';
import 'package:memo_furniture/core/routers/routers.dart';
import 'package:memo_furniture/features/signin/view.dart';

part 'units/photo.dart';

class SplashView extends StatelessWidget {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kRedClr,
        child: OnBoard(
            pageController: _pageController,
            onSkip: () {},
            onDone: () {},
            onBoardData: onBoardData,
            titleStyles: buttonStyle.copyWith(fontSize: 25),
            descriptionStyles: bodyStyle2,
            pageIndicatorStyle: const PageIndicatorStyle(
              width: 100,
              inactiveColor: kGreyClr,
              activeColor: kWhiteClr,
              inactiveSize: Size(8, 8),
              activeSize: Size(12, 12),
            ),
            skipButton: TextButton(
              onPressed: () {},
              child: const Text(
                "Skip",
                style: TextStyle(color: kRedClr),
              ),
            ),
            nextButton: OnBoardConsumer(
              builder: (context, ref, child) {
                final state = ref.watch(onBoardStateProvider);
                return InkWell(
                  onTap: () => _onNextTap(state),
                  child: Container(
                    width: 230,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: const LinearGradient(
                        colors: [kRedClr, kGreyClr],
                      ),
                    ),
                    child: Text(
                      state.isLastPage ? "Done" : "Next",
                      style: bodyStyle,
                    ),
                  ),
                );
              },
            )),
      ),
    );
  }

  void _onNextTap(OnBoardState onBoardState) {
    if (!onBoardState.isLastPage) {
      _pageController.animateToPage(
        onBoardState.page + 1,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOutSine,
      );
    } else {
      MagicRoute.navigateAndReplacement(SignInView());
    }
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
part of '../view.dart';

class OnBoardunits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OnBoard(
        pageController: NextButtonUnit.pageController,
        onSkip: () {},
        onDone: () {},
        imageWidth: sizeWidth(context, 1.5),
        imageHeight: sizeHeight(context, 10),
        onBoardData: onBoardData,
        titleStyles: bodyStyle.copyWith(fontSize: 25),
        descriptionStyles: bodyStyle.copyWith(fontSize: 25),
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
        nextButton: NextButtonUnit());
  }
}

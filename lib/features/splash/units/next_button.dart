part of '../view.dart';

class NextButtonUnit extends StatelessWidget {
  static PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return OnBoardConsumer(
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
    );
  }

  void _onNextTap(OnBoardState onBoardState) {
    if (!onBoardState.isLastPage) {
      pageController.animateToPage(
        onBoardState.page + 1,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOutSine,
      );
    } else {
      MagicRoute.navigateAndReplacement(SignInView());
    }
  }
}

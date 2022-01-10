part of '../view.dart';

class _ButtonsUnits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          onTap: () {},
          label: 'REGISTER',
          style: buttonStyle.copyWith(color: kWhiteClr),
          buttonColor: kRedClr,
        ),
        CustomTextButton(
            onPressed: () => MagicRoute.navigateAndPopAll(SignInView()),
            text: Text(
              'already have an Account?',
              style: bodyStyle.copyWith(color: kGreyClr),
            )),
      ],
    );
  }
}

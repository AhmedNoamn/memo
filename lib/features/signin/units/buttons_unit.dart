part of '../view.dart';

class _ButtonsUnits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: CustomTextButton(
              onPressed: () => MagicRoute.navigateTo(ForgotPassView()),
              text: Text(
                'Forgot Password?',
                style: bodyStyle.copyWith(color: kGreyClr),
              )),
        ),
        SizedBox(height: 30),
        CustomButton(
          onTap: () {},
          label: 'SIGN IN',
          style: buttonStyle.copyWith(color: kWhiteClr),
          buttonColor: kRedClr,
        ),
        CustomTextButton(
            onPressed: () => MagicRoute.navigateTo(RegisterView()),
            text: Text(
              'or Register ',
              style: bodyStyle.copyWith(color: kRedClr),
            )),
      ],
    );
  }
}

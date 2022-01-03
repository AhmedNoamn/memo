part of '../view.dart';

class SendCodeUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButton(
          onTap: () {},
          label: 'VERIFY OTP',
          style: buttonStyle.copyWith(color: kWhiteClr),
          buttonColor: kRedClr,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '00:00',
              style: TextStyle(color: kGreyClr),
            ),
            CustomTextButton(
              onPressed: () {},
              text: Text(
                'Resend OTP',
                style: buttonStyle.copyWith(color: kDarkClr),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

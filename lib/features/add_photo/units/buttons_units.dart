part of '../view.dart';

class ButtonsUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          onTap: () {},
          label: 'UPLOAD PICTURE',
          style: buttonStyle.copyWith(fontSize: 20),
          buttonColor: kWhiteClr,
          height: 50,
          width: 250,
        ),
        CustomTextButton(
          onPressed: () {},
          text: Text(
            'SKIP',
            style: bodyStyle,
          ),
        ),
      ],
    );
  }
}

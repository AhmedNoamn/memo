part of '../view.dart';

class ImageUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/coo.jpg'),
          radius: 50,
        ),
        CustomButton(
          onTap: () {},
          label: 'Change Profile Picture',
          style: buttonStyle.copyWith(fontSize: 13),
          buttonColor: kWhiteClr,
          height: 40,
          width: 200,
        )
      ],
    );
  }
}

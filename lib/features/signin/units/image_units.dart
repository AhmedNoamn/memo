part of '../view.dart';

class _ImageUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/coo.jpg'),
          radius: 45,
        ),
        SizedBox(height: 10),
        Text(
          'Ramni',
          style: bodyStyle.copyWith(fontSize: 25),
        ),
      ],
    );
  }
}

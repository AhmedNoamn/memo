part of '../view.dart';

class _InfoUnit extends StatelessWidget {
  const _InfoUnit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/coo.jpg'),
            radius: 50,
          ),
          SizedBox(height: 10),
          Text(
            'Ahmed Noaman',
            style: bodyStyle,
          ),
          Text(
            'ahmednoaman@gmail.com',
            style: bodyStyle.copyWith(fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}

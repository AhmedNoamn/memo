part of '../view.dart';

class _SliderUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            viewportFraction: 0.999,
          ),
          items: [
            Image.asset('assets/images/item.png'),
            Image.asset('assets/images/spl1.png'),
            Image.asset('assets/images/item.png'),
          ],
        ),
        Row(children: [
          Text('Ramni chair', style: headingStyle),
          SizedBox(width: 20),
          Icon(
            Icons.star_border,
            color: Colors.yellowAccent,
          ),
          Text('4.5'),
          Spacer(),
          Text('\$ 1700', style: buttonStyle)
        ]),
      ],
    );
  }
}

part of '../view.dart';

class _Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: kRedClr,
            borderRadius: BorderRadius.circular(25),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            CustomIconButton(
              onTap: () {},
              icon: Icon(Icons.add, color: kRedClr),
            ),
            Text('1', style: bodyStyle),
            CustomIconButton(
              onTap: () {},
              icon: Icon(Icons.remove, color: kRedClr),
            )
          ]),
        ),
        CustomButton(
          onTap: () {},
          label: 'Add to Cart',
          style: bodyStyle,
          buttonColor: kRedClr,
          height: 50,
          width: 150,
        ),
      ],
    );
  }
}

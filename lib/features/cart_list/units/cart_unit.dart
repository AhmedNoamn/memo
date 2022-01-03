part of '../view.dart';

class _CartUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(4, (index) => Cart()),
    );
  }
}

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: kWhiteClr,
          border: Border.all(color: kBabyBlueClr, width: 2.5)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.asset(
              'assets/images/item.png',
              width: 150,
            ),
          ),
          SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('name', style: textStyle5),
              Text('\$1700', style: bodyStyle2),
              Row(
                children: [
                  CustomIconButton(
                      buttonColor: kBabyBlueClr,
                      onTap: () {},
                      icon: Icon(
                        Icons.add,
                        color: kGreyClr,
                        size: 20,
                      )),
                  Text(
                    '1',
                    style: textStyle5,
                  ),
                  CustomIconButton(
                      buttonColor: kBabyBlueClr,
                      onTap: () {},
                      icon: Icon(
                        Icons.remove,
                        color: kGreyClr,
                        size: 20,
                      )),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

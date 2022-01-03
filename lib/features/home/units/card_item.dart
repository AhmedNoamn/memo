part of '../view.dart';

class _CardUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
                child: Text(
              'Trending products',
              style: TextStyle(color: kDarkClr),
            )),
            Expanded(child: Divider()),
            CustomTextButton(
                onPressed: () {},
                text: Text(
                  'See all',
                  style: TextStyle(color: kRedClr),
                ))
          ],
        ),
        SizedBox(
          height: 180,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => Card()),
        ),
      ],
    );
  }
}

class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.symmetric(horizontal: 5),
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: kGreyClr),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipRRect(child: Image.asset('assets/images/item.png')),
          Center(
              child: Text(
            'Panka Chair',
            style: TextStyle(color: kDarkClr),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                  child: Text(
                '\$1000',
                style: TextStyle(color: kGreyClr),
              )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.shoppingBasket,
                    color: kRedClr,
                    size: 20,
                  ))
            ],
          )
        ],
      ),
    );
  }
}

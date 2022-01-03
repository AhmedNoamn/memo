part of '../view.dart';

class _PopularItemUnit extends StatefulWidget {
  @override
  State<_PopularItemUnit> createState() => __PopularItemUnitState();
}

class __PopularItemUnitState extends State<_PopularItemUnit> {
  bool isSelected = false;
  List<String> item = [
    'all',
    'Electronics and laptops',
    'tables',
    'kitchens',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
                child: Text(
              'popular categories',
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
          height: 50,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: item.length,
              itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: isSelected ? kRedClr : kBabyBlueClr,
                    ),
                    margin: EdgeInsets.all(8),
                    child: CustomTextButton(
                        onPressed: () {
                          setState(() {
                            isSelected = !isSelected;
                          });
                        },
                        text: Text(
                          item[index],
                          style: TextStyle(
                            color: isSelected ? kWhiteClr : kDarkClr,
                          ),
                        )),
                  )),
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

part of '../view.dart';

class _SearchUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 2,
      children: [
        CustomSearchField(
          hint: 'search for item',
          trailling: Icon(
            Icons.search,
            color: kGreyClr,
          ),
          width: 250,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: kBabyBlueClr,
            ),
            child: Icon(
              FontAwesomeIcons.filter,
              color: kGreyClr,
            ),
          ),
        ),
      ],
    );
  }
}
/*
    GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: kBabyBlueClr,
            ),
            child: Icon(
              FontAwesomeIcons.filter,
              color: kGreyClr,
            ),
          ),
        )
*/
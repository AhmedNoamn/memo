part of '../view.dart';

class _DetailUnit extends StatefulWidget {
  @override
  __DetailUnitState createState() => __DetailUnitState();
}

class __DetailUnitState extends State<_DetailUnit> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TabBar(indicatorColor: kRedClr, tabs: [
        Tab(
            iconMargin: EdgeInsets.only(bottom: 0),
            icon: Text('description', style: textStyle4)),
        Tab(icon: Text('Reviews', style: textStyle4)),
        Tab(icon: Text('Offers', style: textStyle4)),
        Tab(icon: Text('Policy', style: textStyle4)),
      ]),
      Divider(
        color: kGreyClr,
        height: 0,
      ),
      Container(
        padding: EdgeInsets.all(10),
        height: 120,
        width: double.infinity,
        child: TabBarView(children: const [
          Text(
            'Minimalist styling is not about creating a cold, hard, empty white box of a home. It is about using simple and natural forms, and taking away layers without losing the aesthetic appeal of the space. The focus is on shape, with a furniture and accesso',
          ),
          Text(
              'Minimalist styling is not about creating a cold, hard, empty white box of a home.'),
          Text(
              'It is about using simple and natural forms, and taking away layers without losing the aesthetic'),
          Text(
              'It is about using simple and natural forms, and taking away layers without losing the aesthetic'),
        ]),
      ),
    ]);
  }
}

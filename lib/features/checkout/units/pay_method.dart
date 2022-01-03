part of '../view.dart';

class _PayMethod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(indicatorColor: kRedClr, tabs: [
          Tab(
              iconMargin: EdgeInsets.only(bottom: 0),
              icon: Text('Debit card', style: textStyle4)),
          Tab(icon: Text('Credit card', style: textStyle4)),
          Tab(icon: Text('UPI', style: textStyle4)),
          Tab(icon: Text('Net Banking', style: textStyle4)),
        ]),
        Divider(color: kGreyClr, height: 0),
        SizedBox(
          height: 250,
          width: double.infinity,
          child: TabBarView(children: [
            Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                CheckoutWidget(),
                CheckoutWidget(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                    2,
                    (index) => Container(
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kBabyBlueClr,
                          border: Border.all(color: kBabyBlueClr, width: 2.5)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      margin: EdgeInsets.only(bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Exp date',
                            style: textStyle5,
                          ),
                          SizedBox(height: 10),
                          Text(
                            '29/2',
                            style: textStyle5.copyWith(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'no card added yet',
              style: textStyle5,
            ),
            Text(
              'no card added yet',
              style: textStyle5,
            ),
            Text(
              'no card added yet',
              style: textStyle5,
            ),
          ]),
        )
      ],
    );
  }
}
/* 

*/
part of '../view.dart';

class _Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemCubit = AddItemCubit.of(context);
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
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            BlocBuilder(
                bloc: itemCubit,
                builder: (context, states) {
                  return CustomIconButton(
                    onTap: itemCubit.itemPlus,
                    icon: Icon(Icons.add, color: kRedClr),
                  );
                }),
            BlocBuilder(
                bloc: itemCubit,
                builder: (context, states) {
                  return Text(itemCubit.itemCount.toString(), style: bodyStyle);
                }),
            BlocBuilder(
                bloc: itemCubit,
                builder: (context, states) {
                  return CustomIconButton(
                    onTap: itemCubit.itemMinus,
                    icon: Icon(Icons.remove, color: kRedClr),
                  );
                })
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

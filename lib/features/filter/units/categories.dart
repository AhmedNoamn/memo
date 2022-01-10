part of '../view.dart';

class _CategoryUnit extends StatelessWidget {
  final List<Widget> categoryFilter = [
    FilterCheckROw(title: 'beds'),
    FilterCheckROw(title: 'cabinets'),
    FilterCheckROw(title: 'chairs and seating'),
    FilterCheckROw(title: 'chests'),
    FilterCheckROw(title: 'clocks'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhiteClr,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: categoryFilter,
      ),
    );
  }
}

class FilterCheckROw extends StatelessWidget {
  final String title;

  const FilterCheckROw({required this.title});
  @override
  Widget build(BuildContext context) {
    final checkCubit = SelectCubit.of(context);
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Row(
        children: [
          BlocBuilder(
              bloc: checkCubit,
              builder: (context, staes) {
                return Checkbox(
                    value: checkCubit.isSelected,
                    onChanged: (v) => checkCubit.check(v!),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    side: BorderSide(width: 0.5));
              }),
          Text(
            title,
            style: textStyle5,
          )
        ],
      ),
    );
  }
}

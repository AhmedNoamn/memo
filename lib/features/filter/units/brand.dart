part of '../view.dart';

class _BrandUnit extends StatelessWidget {
  final List<Widget> brandFilter = [
    FilterCheckROw(title: 'Roche Bobois'),
    FilterCheckROw(title: 'Edra'),
    FilterCheckROw(title: 'Poliform'),
    FilterCheckROw(title: 'Christopher Guy'),
    FilterCheckROw(title: 'Kartell'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhiteClr,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: brandFilter,
      ),
    );
  }
}

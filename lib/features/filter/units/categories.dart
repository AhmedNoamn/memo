part of '../view.dart';

class _CategoryUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isActivated = false;
    return Container(
      color: kWhiteClr,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            5,
            (index) => Padding(
                  padding: const EdgeInsets.all(2),
                  child: Row(
                    children: [
                      Checkbox(
                          value: isActivated,
                          onChanged: (v) {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          side: BorderSide(width: 0.5)),
                      Text(
                        'Chair',
                        style: textStyle5,
                      )
                    ],
                  ),
                )),
      ),
    );
  }
}

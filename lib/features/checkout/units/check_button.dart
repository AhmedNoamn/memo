part of '../view.dart';

class _CheckButtons extends StatefulWidget {
  @override
  State<_CheckButtons> createState() => _CheckButtonsState();
}

class _CheckButtonsState extends State<_CheckButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text('Total Amount', style: bodyStyle2),
            Text('1700 \$', style: textStyle5)
          ],
        ),
        CustomButton(
          onTap: () => showSuccessDialog(context),
          label: 'Place order',
          style: bodyStyle,
          buttonColor: kRedClr,
          height: 40,
          width: 150,
        )
      ],
    );
  }
}

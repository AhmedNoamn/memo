part of '../view.dart';

class CodeValue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sizeBox = SizedBox(height: 20);
    return Container(
      padding: EdgeInsets.only(right: 10, left: 10, top: 30, bottom: 100),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: radius25), color: kWhiteClr),
      child: Column(
        children: [
          Text(
            'OTP VERFICATION CODE',
            style: buttonStyle,
          ),
          sizeBox,
          sizeBox,
          Text(
            'code has been sent to : 3145634',
            style: bodyStyle2.copyWith(color: kDarkClr),
          ),
          sizeBox,
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 15,
            runSpacing: 10,
            children: const [
              OtpCard(true),
              OtpCard(false),
              OtpCard(false),
              OtpCard(false),
            ],
          ),
          sizeBox,
          SendCodeUnit(),
        ],
      ),
    );
  }
}

class OtpCard extends StatelessWidget {
  final bool? autoFocus;

  const OtpCard(this.autoFocus);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: kGreyClr, width: 0.2),
        borderRadius: BorderRadius.circular(10),
        color: kBabyBlueClr,
        shape: BoxShape.rectangle,
      ),
      child: AspectRatio(
        aspectRatio: 1,
        child: TextField(
          autofocus: autoFocus!,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 0, color: kBabyBlueClr),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 0, color: kBabyBlueClr),
            ),
          ),
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          style: headingStyle,
          maxLines: 1,
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
        ),
      ),
    );
  }
}

part of '../view.dart';

class _FieldsUnits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
          color: kWhiteClr),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'REGISTER',
            style: bodyStyle.copyWith(color: kRedClr),
          ),
          SizedBox(height: 15),
          CustomInputField(
            title: 'User Name',
            hint: 'enter name',
            obscureText: false,
          ),
          CustomInputField(
            title: 'User E-mail',
            hint: 'enter e-mail/phone',
            obscureText: false,
          ),
          CustomInputField(
            title: 'PassWord',
            hint: 'enter password',
            obscureText: false,
          ),
          CustomInputField(
            title: 'Confirm PassWord',
            hint: ' re-enter password',
            obscureText: false,
          ),
          SizedBox(height: 10),
          _ButtonsUnits()
        ],
      ),
    );
  }
}

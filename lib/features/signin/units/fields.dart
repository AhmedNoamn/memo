part of '../view.dart';

class _FieldsUnits extends StatefulWidget {
  @override
  __FieldsUnitsState createState() => __FieldsUnitsState();
}

class __FieldsUnitsState extends State<_FieldsUnits> {
  bool isSecured = false;

  void securedPassword() {
    setState(() => isSecured = !isSecured);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 40, right: 10, left: 10, top: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
          color: kWhiteClr),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'SIGN IN',
            style: bodyStyle.copyWith(color: kRedClr),
          ),
          SizedBox(height: 20),
          CustomInputField(
            hint: 'enter name',
            obscureText: false,
            title: 'User Name',
          ),
          CustomInputField(
            hint: 'enter password',
            obscureText: isSecured,
            title: 'PassWord',
            trailling: IconButton(
                onPressed: () => securedPassword(),
                icon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: isSecured ? kRedClr : kGreyClr,
                )),
          ),
          _ButtonsUnits()
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../constant.dart';
import '../../widgets/custom_container.dart';
import '../../widgets/list_tile.dart';
import '../../widgets/search_field.dart';

part 'units/title_unit.dart';
part 'units/chat_unit.dart';

class ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kRedClr,
      ),
      body: Container(
        color: kRedClr,
        child: Column(
          children: [
            _TitleUnit(),
            SizedBox(height: 30),
            Expanded(child: _ChatUnit()),
          ],
        ),
      ),
    );
  }
}

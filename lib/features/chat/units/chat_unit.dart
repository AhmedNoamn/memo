part of '../view.dart';

class _ChatUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: ListView(
        children: [
          CustomListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/coo.jpg')),
            title: Text(
              'Ahmed joined the chat',
              style: textStyle5,
            ),
            subTitle: Text(
              '2m ago',
              style: bodyStyle2,
            ),
          ),
          Expanded(
            child: Column(
                children: List.generate(
              8,
              (index) => Container(
                padding: const EdgeInsets.all(10),
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  color: kBabyBlueClr,
                ),
                child: Text(
                  'Hello Sir,Is there something we can help with you today?',
                  style: textStyle5,
                ),
              ),
            )),
          ),
          CustomSearchField(
            hint: 'Write your message',
            trailling: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.emoji_emotions_outlined),
                Icon(Icons.photo),
                Icon(Icons.attachment_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }
}
/*
     [
                
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: kBabyBlueClr,
                  ),
                  child: Text(
                    'Hello Sir,Is there something we can help with you today?Hello Sir,Is there something we can help with you today?',
                    style: textStyle5,
                  ),
                ),
              ],
*/
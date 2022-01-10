part of '../view.dart';

class _ChatUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const Radius radius = Radius.circular(30);
    return Stack(
      children: [
        CustomContainer(
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
                        topRight: radius,
                        bottomLeft: radius,
                        bottomRight: radius,
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
            ],
          ),
        ),
        Positioned(
          height: 60,
          width: sizeWidth(context, 1),
          bottom: 0,
          left: 0,
          child: CustomSearchField(
            hint: 'Write your message',
            trailling: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.emoji_emotions_outlined),
                Icon(Icons.photo),
                Icon(Icons.attachment_rounded),
              ],
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

final names = [
  "shameem",
  "unais",
  "shanid",
  "midlaj",
  "dad",
  "mom",
  'shahen',
  'mahroof',
  'sis',
  'salman',
];
final image = [
  'assets/1.jpg',
  'assets/2.jpg',
  'assets/4.jpg',
  'assets/5.jpg',
  'assets/5.jpg',
  'assets/3.jpg',
  'assets/1.jpg',
  'assets/2.jpg',
  'assets/4.jpg',
  'assets/1.jpg',

];
final discription = [
  'Hai',
  'loo',
  'da',
  'hello',
  'hai',
  'dei',
  'hello',
  'hai',
  'dei',
  'hello'
];
final time = [
  '12:50',
  '12:30',
  '12:25',
  '11:00',
  '09:58',
  '09:45',
  '09:45',
  '08:45',
  '08:20',
  '08:20',
];

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding:  EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Container(
                height: 70,
                width: MediaQuery.of(context).size.width * .97,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(radius:30,backgroundImage: AssetImage(image[index])
                ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 250,
                            // color: Colors.red,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    names[index],
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    discription[index],
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ]),
                          )
                        ],
                      ),

                    // SizedBox(width: 200,),
                    Text(
                      time[index],
                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 5,
        );
      },
      itemCount: 10,
    );
  }
}

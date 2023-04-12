import 'package:flutter/material.dart';


class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}
List<String> image =[
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
List<String> name =[
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
List<String> discrption =[
  'Today,12 :50 pm',
  'Today,12:40 pm',
  'Today,12:35 pm',
  'Today,12:30 pm',
  'Today,12:00 pm',
  "Today,11:55 am",
  "Today,11:50 am",
  "Today,11:45 am",
  "Today,11:43 am",
  "Today,11:30 am",
  ];
class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    print(name.length);
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Container(
          height: 10,
          width: MediaQuery
              .of(context)
              .size
              .width * .97,
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/1.jpg'),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 27, top: 35),
                            child: CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.green,
                              child: Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 20,
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Status',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'Tap to add status update',
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              )
            ]),

            Padding(
              padding:  EdgeInsets.only(top: 20,
              left: 10),
              child: Text(
                'Viewed updates',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
              ),
            ),
        Expanded(
          child: ListView.separated(itemCount: name.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 70,
                width: MediaQuery
                    .of(context)
                    .size
                    .width * .97,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [SizedBox(width: 10,),
                    CircleAvatar(
                        radius: 30, backgroundImage: AssetImage(image[index])),
                    SizedBox(width: 10,),
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
                                  name[index],
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text(
                                 discrption[index],
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                              ]),
                        )
                      ],
                    ),
],
                ),
              );
            }, separatorBuilder: (BuildContext context,int index) {return SizedBox(height: 10,);  },),
        )
          ])),
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
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
List<Widget> icon1 =[
  Icon(Icons.arrow_forward_rounded,color: Colors.red,),
  Icon(Icons.arrow_back_rounded,color: Colors.green,),
  Icon(Icons.arrow_back_rounded,color: Colors.red,),
  Icon(Icons.arrow_back_rounded,color: Colors.green,),
  Icon(Icons.arrow_forward_rounded,color: Colors.red,),
  Icon(Icons.arrow_back_rounded,color: Colors.green,),
  Icon(Icons.arrow_forward_rounded,color: Colors.green,),
  Icon(Icons.arrow_back_rounded,color: Colors.green,),
  Icon(Icons.arrow_forward_rounded,color: Colors.red,),
  Icon(Icons.arrow_forward_rounded,color: Colors.green,),
];
class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
          height: 10,
          width: MediaQuery.of(context).size.width * .97,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.green,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.green,
                          child: Padding(
                            padding:  EdgeInsets.only(bottom: 40 ,right: 20),
                            child:  Icon(
                              Icons.link,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create call link',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'Share a link for your WhatsApp call',
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              )
            ]),
            SizedBox(
              height: 20,
            ),
            Text(
              'Recent',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
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

                                    Row(
                                      children: [    icon1[index]
                                        ,
                                        Text(
                                          discrption[index],
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
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

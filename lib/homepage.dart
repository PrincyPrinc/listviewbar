import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final List<String> items = [
    'Thomas ABRhamm',
    'Thomas villaim',
    'Thomas ABRhamm',
    'Thomas villaim',
    'Thomas ABRhamm',
    'Thomas villaim',
    'Thomas ABRhamm',
    'Thomas villaim'
  ];

  final List<String> subTitles = [
    '12',
    '23',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18'
  ];

  final List<String> imagepaths = [
    'assets/d1.png',
    'assets/d2.png',
    'assets/d3.jpg',
    'assets/d1.png',
    'assets/d1.png',
    'assets/d1.png',
    'assets/d1.png',
    'assets/d1.png'
  ];

  List<Map<String, dynamic>> arrayOfMaps = [
    {
      'name': 'Thomas ',
      'frinds': 25,
    },
    {
      'name': 'Jane',
      'frinds': 30,
    },
    {
      'name': 'Bob',
      'frinds': 35,
    },
    {
      'name': 'Bob',
      'frinds': 35,
    },
    {
      'name': 'Bob',
      'frinds': 35,
    },
    {
      'name': 'Bob',
      'frinds': 35,
    },
    {
      'name': 'Bob',
      'frinds': 35,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(top: 35.0, left: 20.0, bottom: 10.0),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Buttons(
                  backColor: Colors.blue,
                  textColor: Colors.white,
                  label: 'connections',
                ),
                Buttons(
                  backColor: Colors.grey,
                  textColor: Colors.black,
                  label: 'Groups',
                ),
                Buttons(
                  backColor: Colors.grey,
                  textColor: Colors.black,
                  label: 'housing',
                ),
                Buttons(
                  backColor: Colors.grey,
                  textColor: Colors.black,
                  label: 'friends',
                ),
                Buttons(
                  backColor: Colors.grey,
                  textColor: Colors.black,
                  label: 'friends',
                ),
              ],
            ),
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.only(top: 28, left: 28.0, right: 28.0),
              child: Column(children: [
                TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.blue)),
                      filled: true,
                      fillColor: Colors.white),
                ),
                Expanded(
                  child: ListView.builder(
                      // scrollDirection: Axis.vertical,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: (Container(
                              height: 110,
                              // color: Colors.white,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        imagepaths[index],
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      //mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(arrayOfMaps[index]['name'],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        Text(
                                          '${arrayOfMaps[index]['frinds']} mutual friend ',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Spacer(),
                                        ElevatedButton(
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.blue),
                                            ),
                                            onPressed: () {},
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.message,
                                                ),
                                                Text('Connect')
                                              ],
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              ))),
                        );
                      }),
                )
              ]),
            ),
          ),
        ))
      ],
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons(
      {super.key,
      required this.label,
      required this.backColor,
      required this.textColor});

  final String label;
  final Color textColor;
  final Color backColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(backColor),
        ),
        onPressed: () {
          // Callback function logic
        },
        child: Text(
          label,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}

class ButtonReq extends StatelessWidget {
  const ButtonReq({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.favorite,
                ),
                Text(
                  'Requested',
                  style: TextStyle(color: Colors.blue),
                )
              ],
            )));
  }
}

import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Constants/constants.dart';
import 'package:mobile_assessment_flutter/Widgets/button.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final TextEditingController searchcontroller = TextEditingController();

  final List contents2 = [
    {'title': 'Waybill History', 'description': 'Record of all your waybills.'},
    {'title': 'Get Help', 'description': 'Get help & support from our team'},
  ];

  final List contents = [
    {
      'title': 'Same State',
      'description': 'Deliveries within the same state',
      'image1': 'Shipify Assets/ic-bike.png',
      'image2': 'Shipify Assets/ic-road-same-state.png'
    },
    {
      'title': 'Inter State',
      'description': 'Deliveries outside your curent state',
      'image1': 'Shipify Assets/Delivery Van.png',
      'image2': 'Shipify Assets/ic-road-interstate.png'
    },
    {
      'title': 'Charter',
      'description': 'Request a vehicle',
      'image1': 'Shipify Assets/ic-truck.png',
      'image2': 'Shipify Assets/ic-road-charter.png'
    },
    {
      'title': 'International',
      'description': 'Request a vehicle',
      'image1': 'Shipify Assets/ic-aeroplane.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.05,
              right: size.width * 0.05,
            ),
            child: Padding(
              padding: EdgeInsets.only(top: size.height * 0.15),
              // Custom Appbar
              child: CustomAppBar(size: size),
            ),
          ),
          // Custom Spacing
          CustomSpacing(size: size),
          // Custom Card
          FirstCard(size: size),
          CustomSpacing(size: size),
          SecondCard(size: size, searchcontroller: searchcontroller),
          Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.05,
              right: size.width * 0.05,
            ),
            child: const Text(
              'Send a package',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          ),
          CustomGrid(size: size, contents: contents),
          CustomSpacing(size: size),
          Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.05,
              right: size.width * 0.05,
            ),
            child: const Text(
              'Other Actions',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          ),
          CustomGrid2(size: size, contents2: contents2),
          CustomSpacing(size: size),
        ]),
      ),
    );
  }
}

class CustomGrid2 extends StatelessWidget {
  const CustomGrid2({
    Key? key,
    required this.size,
    required this.contents2,
  }) : super(key: key);

  final Size size;
  final List contents2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: size.width * 0.05,
        right: size.width * 0.05,
      ),
      child: Stack(
        children: [
          Container(
          height: size.height * 0.2,
          child: GridView.builder(
            itemCount: 2,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: size.height * 0.15,
              crossAxisSpacing: size.width * 0.02,
              mainAxisSpacing: size.width * 0.02,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: const BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              contents2[index]['title'],
                              style: const TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 20),
                            ),
                            const Divider(
                              endIndent: 130,
                              color: primaryColor,
                              thickness: 4,
                            ),
                            Text(
                              contents2[index]['description'],
                              textAlign: TextAlign.left,
                            ),
                          ]),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Positioned(
          bottom: 5,
          right: 2,
          child: ElevatedButton(
            child: const Icon(
              Icons.arrow_forward,
              size: 15,
            ),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: secondaryColor,
                onPrimary: primaryColor,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(2)),
          ),
        ),
        ]),
    );
  }
}

class CustomGrid extends StatelessWidget {
  const CustomGrid({
    Key? key,
    required this.size,
    required this.contents,
  }) : super(key: key);

  final Size size;
  final List contents;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: size.width * 0.05,
        right: size.width * 0.05,
      ),
      child: Container(
        height: size.height * 0.5,
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: size.height * 0.23,
                crossAxisCount: 2,
                crossAxisSpacing: size.width * 0.02,
                mainAxisSpacing: size.width * 0.02),
            itemCount: 4,
            itemBuilder: (BuildContext ctx, int index) {
              return index < 3
                  ? Stack(children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: size.width * 0.05,
                          right: size.width * 0.05,
                        ),
                        child: Image.asset('Shipify Assets/ic-curve.png'),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: secondaryColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        contents[index]['title'],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20),
                                      ),
                                      const Divider(
                                        indent: 0,
                                        endIndent: 130,
                                        color: primaryColor,
                                        thickness: 4,
                                      ),
                                      Text(
                                        contents[index]['description'],
                                        textAlign: TextAlign.left,
                                      ),
                                    ]),
                              ),
                              Stack(children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10, )),
                                  child: Image.asset(contents[index]['image2']),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: SizedBox(
                                    height: size.height * 0.1,
                                    child:
                                        Image.asset(contents[index]['image1']),
                                  ),
                                ),
                                Positioned(
                                  bottom: 2,
                                  right: 2,
                                  child: ElevatedButton(
                                    child: const Icon(
                                      Icons.arrow_forward,
                                      size: 15,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: secondaryColor,
                                        onPrimary: primaryColor,
                                        shape: const CircleBorder(),
                                        padding: const EdgeInsets.all(2)),
                                  ),
                                ),
                              ])
                            ]),
                      ),
                    ])
                  : Opacity(
                      opacity: 0.4,
                      child: Container(
                          decoration: const BoxDecoration(
                              color: secondaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        contents[index]['title'],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20),
                                      ),
                                      const Divider(
                                        indent: 0,
                                        endIndent: 130,
                                        color: primaryColor,
                                        thickness: 4,
                                      ),
                                      Text(
                                        contents[index]['description'],
                                        textAlign: TextAlign.left,
                                      ),
                                    ]),
                              ),
                              Stack(children: [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: SizedBox(
                                    height: size.height * 0.12,
                                    child:
                                        Image.asset(contents[index]['image1']),
                                  ),
                                ),
                                Positioned(
                                    bottom: 2,
                                    right: 2,
                                    child: ElevatedButton(
                                      child: const Text(
                                        'Coming Soon',
                                        style: TextStyle(color: textColor),
                                      ),
                                      onPressed: () {},
                                      style: ButtonStyle(
                                          elevation:
                                              MaterialStateProperty.all<double>(
                                                  0),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.transparent),
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ))),
                                    ))
                              ]),
                            ],
                          )),
                    );
            }),
      ),
    );
  }
}

class SecondCard extends StatelessWidget {
  const SecondCard({
    Key? key,
    required this.size,
    required this.searchcontroller,
  }) : super(key: key);

  final Size size;
  final TextEditingController searchcontroller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: size.width * 0.05,
        right: size.width * 0.05,
        bottom: size.width * 0.05,
      ),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: size.width * 0.05,
        ),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: size.width * 0.03,
            ),
            child: const Text('Track your waybill'),
          ),
          SizedBox(
            height: size.height * 0.08,
            child: Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.08,
                  right: size.width * 0.08,
                  bottom: size.height * 0.04),
              child: TextField(
                cursorColor: primaryColor.withOpacity(0.7),
                controller: searchcontroller,
                maxLines: 1,
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 2.0),
                    child: Button(
                        buttonHeight: 0.06,
                        buttonText: 'Track',
                        routename: '/trackscreen',
                        butttonWidth: 0.2,
                        curve: 15,
                        color: primaryColor),
                  ),
                  labelText: 'Waybill Number',
                  // contentPadding: EdgeInsets.only(left: 10, right: 10),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          'Shipify Assets/ic-search.png',
                        ),
                      ),
                      height: size.height * 0.001,
                      width: size.height * 0.001,
                    ),
                  ),

                  focusColor: primaryColor,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: primaryColor, width: 1.5)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                          color: primaryColor.withOpacity(0.5), width: 1.5)),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class FirstCard extends StatelessWidget {
  const FirstCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(left: size.width * 0.05, right: size.width * 0.05),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Stack(children: [
        Positioned(
          bottom: 0,
          right: 0,
          child: ClipRRect(
              borderRadius:
                  const BorderRadius.only(bottomRight: Radius.circular(25)),
              child: Container(
                width: size.width * 0.8,
                child: Image.asset(
                  'Shipify Assets/bg-dashboard-balance.png',
                ),
              )),
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(
              top: size.width * 0.05,
              left: size.width * 0.05,
            ),
            child: const Text(
              'Total Balance',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: size.width * 0.05,
                  bottom: size.width * 0.02,
                ),
                child: const Text(
                  '₦ 50,000',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: size.width * 0.05,
                  bottom: size.width * 0.02,
                ),
                child: Button(
                  curve: 30,
                  buttonText: 'Top up',
                  routename: '/homepage',
                  buttonHeight: 0.04,
                  butttonWidth: 0.2,
                  buttontextColor: secondaryColor,
                  color: primaryColor,
                ),
              )
            ],
          )
        ]),
      ]),
    );
  }
}

class CustomSpacing extends StatelessWidget {
  const CustomSpacing({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: size.height * 0.02);
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.04,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        InkWell(
          onTap: () {},
          child: const Icon(Icons.menu_rounded),
        ),
        const Text(
          'Hello, John.',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        InkWell(
          onTap: () {},
          child: Image.asset('Shipify Assets/ic-notification.png'),
        ),
      ]),
    );
  }
}

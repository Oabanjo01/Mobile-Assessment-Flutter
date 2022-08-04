import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Constants/constants.dart';
import 'package:mobile_assessment_flutter/Widgets/titletext.dart';

class VerificationPage extends StatefulWidget {
  VerificationPage({Key? key}) : super(key: key);

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  // TextEditingController controller1 = TextEditingController();

  List<TextEditingController> _controller = [];

  @override
  void initState() {
    for (int i = 0; i <= 4; i++) {
      _controller.add(TextEditingController());
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
        Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.05,
            right: size.width * 0.05,
          ),
          child: Image.asset('Shipify Assets/bg-app-cloud.png'),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.05,
            right: size.width * 0.05,
          ),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TitleText(
                  size: size,
                  textboxheight: 0.15,
                  text1: 'Verification!',
                  text2: 'We sent you an',
                  text3: ' SMS',
                  text4: ' code on \nnumber',
                  text5: ' +2348108960610',
                  textColor4: textColor,
                  textColor3: primaryColor,
                  textColor5: primaryColor,
                ),
                Container(
                  height: size.height * 0.06,
                  width: size.width * 0.8,
                  child: ListView.separated(
                    separatorBuilder: ((context, index) => SizedBox(width: size.width * 0.05,)),
                    scrollDirection: Axis.horizontal,
                    itemCount: _controller.length,
                    itemBuilder: (BuildContext context, index) {
                    return SizedBox(
                      width: size.width * 0.1,
                      child: TextField(
                        cursorColor: primaryColor.withOpacity(0.7),
                        controller: _controller[index],
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: secondaryColor,
                          // contentPadding: EdgeInsets.only(left: 10, right: 10),
                          focusColor: primaryColor,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(color: secondaryColor, )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: secondaryColor.withOpacity(0.5), width: 0)),
                      )),
                    );
                  }),
                ),
                Align(alignment: Alignment.centerRight, child: TextButton(onPressed: () {}, child: const Text('Code Expired', style: TextStyle(color: Colors.red),))),
                ElevatedButton(style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(10)
                ),onPressed: () {
                  Navigator.pushNamed(context, '/homepage');
                }, child: const Icon(Icons.arrow_forward_rounded, size: 40,))
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

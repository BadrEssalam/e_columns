import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ColumnWidget(),
    );
  }
}

/// Column:
///  It arrange the children widgets vertically

/// Properties: MainAxisAlignment  - CrossAxisAlignment -  MainAxisSize

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: const Drawer(),
        body: Container(

            /// Note:
            /// if we didn't specify any size factors of the container (height and width),
            /// it will take the total size of the widgets contained.
            width: 350,
            constraints: const BoxConstraints.expand(),
            child: Column(

                /// If we made the column contained inside the container:
                /// the column will cover all the vertical space of the widgets inside of it, so:
                /// how can we control this property?
                ///  * by: mainAxisSize: MainAxisSize.min,
                ///    Minimize the amount of free space along the main axis
                ///  * and: mainAxisSize: MainAxisSize.max, (The default state)
                ///    Maximize the amount of free space along the main axis
                mainAxisSize: MainAxisSize.min,

                /// To control the alignement of text(s) on the main axis:
                ///  * mainAxisAlignment: MainAxisAlignment.start,
                ///    Place the children as close to the start of the main axis as possible.
                ///  * mainAxisAlignment: MainAxisAlignment.center,
                ///    Place the children as close to the middle of the main axis as possible.
                ///  * mainAxisAlignment: MainAxisAlignment.end,
                ///    Place the children as close to the end of the main axis as possible.
                ///  * mainAxisAlignment: MainAxisAlignment.spaceAround,
                ///    Place the free space evenly between the children as well as half of
                ///    that space before and after the first and last child.
                ///  * mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                ///    Place the free space evenly between the children
                ///    as well as before and after the first and last child.
                ///  * mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ///    Place the free space evenly between the children.
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                /// To control the alignement of text(s) on the cross axis:
                ///  * crossAxisAlignment: CrossAxisAlignment.start,
                ///    Place the children with their start edge aligned
                ///    with the start side of the cross axis.
                ///  * crossAxisAlignment: CrossAxisAlignment.end,
                ///    Place the children as close to the end of
                ///    the cross axis as possible.
                ///  * crossAxisAlignment: CrossAxisAlignment.center,
                ///    Place the children so that their centers align
                ///    with the middle of the cross axis.
                ///    Note: This is the default cross-axis alignment.
                ///  * crossAxisAlignment: CrossAxisAlignment.stretch,
                ///    Require the children to fill the cross axis.
                ///    This causes the constraints passed to the children
                ///    to be tight in the cross axis.
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ///
                  ///
                  Container(
                    height: 200,
                    padding: const EdgeInsets.all(5),
                    constraints:
                        BoxConstraints.tight(const Size.fromRadius(100)),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blue[400], shape: BoxShape.circle),
                    child: const Text(
                      "I hope to be a good programmer.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  ///
                  ///
                  Container(
                    height: 200,
                    padding: const EdgeInsets.all(5),
                    constraints:
                        BoxConstraints.tight(const Size.fromRadius(100)),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 203, 107, 28),
                        shape: BoxShape.circle),
                    child: const Text(
                      "But you can not be",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  ///
                  ///
                  Container(
                    height: 200,
                    padding: const EdgeInsets.all(5),
                    constraints:
                        BoxConstraints.tight(const Size.fromRadius(100)),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blue[400], shape: BoxShape.circle),
                    child: const Text(
                      "if you 're not ready to work hard",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )
                ])),
      ),
    );
  }
}

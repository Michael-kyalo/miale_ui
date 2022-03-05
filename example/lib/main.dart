import 'package:flutter/material.dart';
import 'package:miale_ui/miale_ui.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      );
    });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isLoading = false;
  late TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MialeButton(
              title: "Add To Cart",
              onTap: () {
                setState(() {
                  isLoading = !isLoading;
                });
              },
              isLoading: isLoading,
            ),
            SizedBox(
              height: 1.0.h,
            ),
            MialeButton(
              title: "Proceed To Checkout",
              onTap: () {
                setState(() {
                  isLoading = !isLoading;
                });
              },
              isLoading: isLoading,
              isPrimaryButton: false,
            ),
            SizedBox(
              height: 1.0.h,
            ),
            Row(
              children: [
                const MialeFilterChip(
                  isFilterSelected: true,
                  numberOfFiltersSelected: 10,
                ),
                SizedBox(width: 2.0.w),
                const MialeFilterChip()
              ],
            ),
            SizedBox(
              height: 1.0.h,
            ),
            MialeTextInput(
                validator: (String string) {
                  return "";
                },
                controller: textEditingController)
          ],
        ),
      ),
    );
  }
}

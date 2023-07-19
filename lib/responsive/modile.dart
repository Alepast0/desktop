import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/provider.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageProvider = Provider.of<ImageChange>(context);

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {
                imageProvider.updateImage('assets/images/Kot.jpg');
              }, child: const Text("Button 1")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {
                imageProvider.updateImage('assets/images/Capybara.jpg');
              }, child: const Text("Button 2")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {
                imageProvider.updateImage('assets/images/Tiger.jpg');
              }, child: const Text("Button 3")),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8, left: 8, bottom: 8 ),
              child: Image.asset(imageProvider.image),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:riverpod_practice/screens/photos_screen.dart';
class ExamplesScreen extends StatelessWidget {
  const ExamplesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Examples"),
      ),
      body: SafeArea(child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 100,),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PhotosScreen()));
            }, child: const Text("Photos"),)
          ],
        ),
      )),
    );
  }
}

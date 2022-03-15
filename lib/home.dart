
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Home_Pag extends StatelessWidget {
  const Home_Pag({Key? key}) : super(key: key);

  get b => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            leading: const Icon(Icons.home, color: Colors.red,),
            title: const Center(child: Text("عاصمة فلسطين")),
            actions: const [Icon(Icons.image, color: Colors.red,)],
            // shadowColor:,
          ),
          body:Container(
            color: Colors.grey,
            child:const Text("مدينة القدس") ,
          )

         ),
    );

  }
}

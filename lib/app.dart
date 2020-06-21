import 'package:flutter/cupertino.dart';
import 'package:landmark_app/screens/home_screen.dart';

 

 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      
        );
  }
}
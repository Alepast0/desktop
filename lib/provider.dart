import 'package:flutter/cupertino.dart';

class ImageChange extends ChangeNotifier{
  String image = "assets/images/Kot.jpg";

  void updateImage(String newImage){
    image = newImage;
    notifyListeners();
  }
}
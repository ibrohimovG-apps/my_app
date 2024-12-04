import 'package:get/get.dart';

class TextExpansionController extends GetxController {
  var isExpended = false.obs;
  toggleExpansion() {
    isExpended.value = !isExpended.value; 
  }
}

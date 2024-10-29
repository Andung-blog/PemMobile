import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class SettingController extends GetxController {
  var profileImage = Rx<File?>(null);
  final ImagePicker _picker = ImagePicker();

  void pickImage() async {
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      profileImage.value = File(pickedFile.path);
    }
  }
}

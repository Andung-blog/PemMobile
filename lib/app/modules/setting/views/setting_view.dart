import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/welcome/views/welcome_view.dart';
import '../controllers/setting_controller.dart';

class SettingView extends StatelessWidget {
  final SettingController controller = Get.put(SettingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Image Picker
            Center(
              child: GestureDetector(
                onTap: controller.pickImage,
                child: Obx(() {
                  return CircleAvatar(
                    radius: 50,
                    backgroundImage: controller.profileImage.value != null
                        ? FileImage(controller
                            .profileImage.value!) // Load image from URL
                        : NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRxL0Sd3z-nRjmTU_UVta84zEdjBmFQ17p_A&s'), // Use an online default avatar
                    child: controller.profileImage.value == null
                        ? const Icon(Icons.camera_alt,
                            size: 40,
                            color:
                                Colors.white) // Icon when no image is available
                        : null,
                  );
                }),
              ),
            ),
            const SizedBox(height: 20),

            // Account Information
            const Text('Login and Security',
                style: TextStyle(fontWeight: FontWeight.bold)),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Username'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle Username Update
              },
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text('Phone Number'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle Phone Number Update
              },
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text('Email'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle Email Update
              },
            ),
            ListTile(
              leading: const Icon(Icons.lock),
              title: const Text('Password'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle Password Update
              },
            ),

            // Preferences
            const SizedBox(height: 20),

            // Logout Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.to(WelcomeView()); // Navigate to Settings screen
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(150, 50),
                ),
                child: const Text('Logout'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

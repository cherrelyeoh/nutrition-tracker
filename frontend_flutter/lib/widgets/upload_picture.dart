import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraUploadContainer extends StatefulWidget {
  const CameraUploadContainer({super.key});

  @override
  _CameraUploadContainerState createState() => _CameraUploadContainerState();
}

class _CameraUploadContainerState extends State<CameraUploadContainer> {
  File? _imageFile;
  String? _base64Image;

  Future<void> _pickImageFromCamera() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      final file = File(pickedFile.path);
      final bytes = await file.readAsBytes();
      final base64String = base64Encode(bytes);

      setState(() {
        _imageFile = file;
        _base64Image = base64String;
      });

      // 👇 Send `_base64Image` to your backend
      print(
          "Base64 Image: ${_base64Image!.substring(0, 100)}..."); // just a preview
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GestureDetector(
        onTap: _pickImageFromCamera,
        child: Container(
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[200],
            border: Border.all(color: Colors.grey),
          ),
          child: _imageFile != null
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.file(
                    _imageFile!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                )
              : Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.camera_alt, size: 50, color: Colors.grey),
                      SizedBox(height: 10),
                      Text("Tap to take a photo"),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}

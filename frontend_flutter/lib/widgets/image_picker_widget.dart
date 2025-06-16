import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePickerWidget extends StatefulWidget {
  final Function(File) onImageSelected;

  const ImagePickerWidget({super.key, required this.onImageSelected});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  File? _uploadedImage;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _uploadedImage = File(pickedFile.path);
      });
      widget.onImageSelected(_uploadedImage!); // 🔄 Pass image to parent
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _uploadedImage == null
            ? const Text("No image selected")
            : Image.file(
                _uploadedImage!,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _pickImage,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Text('Pick Image'),
        ),
      ],
    );
  }
}

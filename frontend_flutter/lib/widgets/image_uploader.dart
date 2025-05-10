import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImageUploader extends StatefulWidget {
  final double height;
  final double borderRadius;
  final String buttonText;
  final Function(File?)? onImageSelected;

  const ImageUploader({
    super.key,
    this.height = 250,
    this.borderRadius = 20,
    this.buttonText = 'Upload/Scan',
    this.onImageSelected,
  });

  @override
  State<ImageUploader> createState() => _ImageUploaderState();
}

class _ImageUploaderState extends State<ImageUploader> {
  File? _uploadedImage;

  Future<void> _pickImage() async {
    try {
      final pickedFile =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        // Debugging: Print file info
        print('Image path: ${pickedFile.path}');
        print('File exists: ${File(pickedFile.path).existsSync()}');

        final imageFile = File(pickedFile.path);

        // Verify the file can be read
        final bytes = await imageFile.readAsBytes();
        print('File size: ${bytes.length} bytes');

        setState(() {
          _uploadedImage = imageFile;
        });

        if (widget.onImageSelected != null) {
          widget.onImageSelected!(_uploadedImage);
        }
      }
    } catch (e) {
      print('Error picking image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Image placeholder
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            height: widget.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.borderRadius),
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(widget.borderRadius - 2),
              child: _uploadedImage == null
                  ? const Center(
                      child: Icon(Icons.image, size: 50, color: Colors.grey))
                  : Image.file(_uploadedImage!, fit: BoxFit.cover),
            ),
          ),
        ),

        const SizedBox(height: 20),

        // Upload button
        ElevatedButton.icon(
          icon: const Padding(
            padding: EdgeInsets.only(right: 8),
            child: Icon(Icons.cloud_upload),
          ),
          label: Text(widget.buttonText),
          onPressed: _pickImage,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          ),
        ),
      ],
    );
  }
}

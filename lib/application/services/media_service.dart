import 'dart:developer' as developer;
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class MediaService {
  Future<File?> getImage({required bool fromGallery}) async {
    File? _image;

    final picker = ImagePicker();

    final XFile? pickedFile = await picker.pickImage(
      source: fromGallery ? ImageSource.gallery : ImageSource.camera,
      maxHeight: 960,
      maxWidth: 1280,
    );

    if (pickedFile != null) {
      _image = await _cropImage(pickedFile.path);
    } else {
      developer.log('No image selected.');
    }

    return _image;
  }

  Future<File?> _cropImage(String filePath) async {
    return await ImageCropper().cropImage(
      sourcePath: filePath,
      aspectRatioPresets: [
        CropAspectRatioPreset.ratio4x3,
      ],
    );
  }

  Future<File?> getFilePdf(
      {List<String> allowedExtensions = const ['pdf']}) async {
    File? _file;

    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: allowedExtensions,
    );

    if (result != null) {
      _file = File(result.files.single.path!);
    }

    return _file;
  }

  Future<FilePickerResult?> getFile(
      {List<String> allowedExtensions = const ['pdf']}) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: allowedExtensions,
    );

    return result;
  }
}

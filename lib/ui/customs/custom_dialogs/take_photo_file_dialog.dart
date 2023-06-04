import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as p;
import 'package:stacked_services/stacked_services.dart';

import '../../../application/app/app.locator.dart';
import '../../../application/app/constants/custom_color.dart';
import '../../../application/app/constants/icon_constants.dart';
import '../../../application/services/media_service.dart';
import '../../shared/custom_button.dart';

class TakePhotoFileDialog extends StatefulWidget {
  final DialogRequest? request;
  final Function(DialogResponse)? completer;

  const TakePhotoFileDialog({
    this.request,
    this.completer,
    Key? key,
  }) : super(key: key);

  @override
  _TakePhotoFileDialogState createState() => _TakePhotoFileDialogState();
}

class _TakePhotoFileDialogState extends State<TakePhotoFileDialog> {
  final MediaService _mediaService = locator<MediaService>();
  String? _imageErrorText;
  File? _imageFile;

  bool _isImageValid() {
    if (_imageFile == null) {
      _imageErrorText = 'Anda Belum Memilih Foto';

      setState(() {});

      Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          _imageErrorText = null;
        });
      });
    }
    return _imageFile != null;
  }

  void _changePhoto() {
    if (_isImageValid()) {
      widget.completer!(
        DialogResponse(
          confirmed: true,
          data: (p.extension(_imageFile!.path) == '.jpg' ||
                  p.extension(_imageFile!.path) == '.png' ||
                  p.extension(_imageFile!.path) == '.jpeg')
              ? [_imageFile, 'image']
              : [_imageFile, 'pdf'],
        ),
      );
    }
  }

  Future _pickImage(ImageSource source) async {
    final pickedFile = await _mediaService.getImage(
        fromGallery: source == ImageSource.gallery);
    if (pickedFile != null) {
      setState(() => _imageFile = File(pickedFile.path));
    }
  }

  Future _pickFile() async {
    final pickedFile = await _mediaService.getFilePdf();
    if (pickedFile != null) {
      setState(() => _imageFile = File(pickedFile.path));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _buildImageSourceSelector(),
          if (_imageFile != null)
            if (p.extension(_imageFile!.path) == '.jpg' ||
                p.extension(_imageFile!.path) == '.png' ||
                p.extension(_imageFile!.path) == '.jpeg')
              GestureDetector(
                onTap: () => _pickImage(ImageSource.gallery),
                child: Material(
                  elevation: 10.0,
                  clipBehavior: Clip.antiAlias,
                  child: AspectRatio(
                    aspectRatio: 4 / 3,
                    child: SizedBox(
                      width: double.infinity,
                      child: Image.file(_imageFile!, fit: BoxFit.cover),
                    ),
                  ),
                ),
              )
            else
              Material(
                elevation: 10.0,
                clipBehavior: Clip.antiAlias,
                child: AspectRatio(
                  aspectRatio: 4 / 3,
                  child: SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      IconConstants.file,
                      color: CustomColor.primaryBlue,
                      scale: 1.5,
                    ),
                  ),
                ),
              ),
          _buildButton(),
        ],
      ),
    );
  }

  Widget _buildImageSourceSelector() {
    return Stack(
      children: [
        Container(
          height: 120.h,
          color: CustomColor.primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => _pickImage(ImageSource.gallery),
                    child: Icon(
                      Icons.image_outlined,
                      size: 48.sp,
                      color: _imageErrorText == null
                          ? Colors.white
                          : Colors.yellow,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 12.w),
                    height: 45.h,
                    width: 1.0.w,
                    color: Colors.white30,
                  ),
                  GestureDetector(
                    onTap: () => _pickImage(ImageSource.camera),
                    child: Icon(
                      Icons.camera,
                      size: 45.sp,
                      color: _imageErrorText == null
                          ? Colors.white
                          : Colors.yellow,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 12.w),
                    height: 45.h,
                    width: 1.0.w,
                    color: Colors.white30,
                  ),
                  GestureDetector(
                    onTap: () => _pickFile(),
                    child: Image.asset(
                      IconConstants.file,
                      color: _imageErrorText == null
                          ? Colors.white
                          : Colors.yellow,
                      scale: 3,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Text(
                _imageErrorText ?? 'Pilih Sumber File',
                style: TextStyle(
                  color: _imageErrorText == null ? Colors.white : Colors.yellow,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 0.0,
          child: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () => widget.completer!(DialogResponse()),
          ),
        ),
      ],
    );
  }

  Widget _buildButton() {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: CustomButton(
        label: 'PILIH FILE INI',
        color: _imageFile != null ? CustomColor.primaryColor : Colors.grey,
        radius: 8.r,
        onPressed: _changePhoto,
        isBusy: false,
      ),
    );
  }
}

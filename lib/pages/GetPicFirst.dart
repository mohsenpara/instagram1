import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class GetPicFirst extends StatefulWidget {
  @override
  _GetPicFirstState createState() => _GetPicFirstState();
}

class _GetPicFirstState extends State<GetPicFirst> {
  File _image;
  final picker = ImagePicker();

  Future getImage1() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
        _cropImage(pickedFile.path);
      }
    });
  }

  Future getImage2() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
        _cropImage(pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return
          SafeArea(
          child: Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    leading: new Icon(Icons.photo_library),
                    title: new Text('Photo Library'),
                    onTap: () {
                      getImage1();
                      Navigator.of(context).pop();
                    }),
                new ListTile(
                  leading: new Icon(Icons.photo_camera),
                  title: new Text('Camera'),
                  onTap: () {
                    getImage2();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
    //     Scaffold(
    //   body: Center(
    //     // child: Row (
    //     //   children: [
    //     //     Icon(Icons.import_contacts)
    //     //   ],
    //     // )
    //     child: Container(
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceAround,
    //         children: [
    //           FloatingActionButton(
    //             child: Icon(Icons.add_a_photo),
    //             onPressed: () => getImage1(),
    //             backgroundColor: Colors.cyan,
    //           ),
    //           FloatingActionButton(
    //             child: Icon(Icons.photo_album),
    //             onPressed: () => getImage2(),
    //             backgroundColor: Colors.amber,
    //           ),
    //           Image != null ? Text('No Image Showing') : Image.file(_image),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }

  Future<Null> _cropImage(filePath) async {
    File croppedImage = await ImageCropper.cropImage(
        sourcePath: filePath,
        maxWidth: 1080,
        maxHeight: 1080,
        aspectRatio: CropAspectRatio(ratioX: 1.0, ratioY: 1.0));
    if (croppedImage != null) {
      _image = croppedImage;
      setState(() {});
    }
  }
}

import 'package:flutter/material.dart';
import 'package:practise_flutter_ui/widget/modal_buttom_sheet.dart';

class NewScreenDesign extends StatefulWidget {
  const NewScreenDesign({super.key});

  @override
  State<NewScreenDesign> createState() => _NewScreenDesignState();
}

class _NewScreenDesignState extends State<NewScreenDesign> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      modalBottomSheetShow(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     _settingModalBottomSheet(context);
      //   },
      //   child: new Icon(Icons.add),
      // ),
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Colors.black,
      ),
    );
  }
}

// void _settingModalBottomSheet(context) {
//   showModalBottomSheet(
//       isDismissible: false,
//       isScrollControlled: true,
//       enableDrag: false,
//       context: context,
//       clipBehavior: Clip.antiAliasWithSaveLayer,
//       builder: (BuildContext bc) {
//         return DraggableScrollableSheet(
//           expand: false,
//           initialChildSize: 0.9,
//           minChildSize: 0.5,
//           maxChildSize: 0.9,
//           builder: (BuildContext context, ScrollController scrollController) {
//             return Column(
//               children: [
//                 ListTile(
//                     leading: Icon(Icons.music_note),
//                     title: Text('Music'),
//                     onTap: () => {}),
//                 ListTile(
//                   leading: Icon(Icons.videocam),
//                   title: Text('Video'),
//                   onTap: () => {},
//                 ),
//                 ListTile(
//                     leading: Icon(Icons.music_note),
//                     title: Text('Music'),
//                     onTap: () => {}),
//                 ListTile(
//                   leading: Icon(Icons.videocam),
//                   title: Text('Video'),
//                   onTap: () => {},
//                 )
//               ],
//             );
//           },
//         );
//       });
// }
Widget buildSheet() {
  return DraggableScrollableSheet(
    initialChildSize: 0.5,
    maxChildSize: 1.0,
    expand: true,
    snap: false,
    builder: (BuildContext context, ScrollController scrollController) {
      return Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Color(0x6C000000),
            spreadRadius: 5,
            blurRadius: 20,
            offset: Offset(0, 0),
          )
        ]),
        padding: EdgeInsets.all(16),
      );
    },
  );
}

Future modalBottomSheetShow(BuildContext context) {
  return showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) => buildSheet(),
    isDismissible: true,
    elevation: 0,
  ).whenComplete(() => modalBottomSheetShow(context));
}

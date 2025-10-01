import 'package:flutter/material.dart';

class ImagePreview extends StatelessWidget {
  final Map<String, String> images;
  const ImagePreview({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Preview")),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // number of items in each row
          mainAxisSpacing: 8.0, // spacing between rows
          crossAxisSpacing: 8.0, // spacing between columns
        ),
        padding: EdgeInsets.all(8.0), // padding around the grid
        itemCount: images.length, // total number of items
        itemBuilder: (context, index) {
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0), // rounded corners
                child: Image.asset(
                  images.values.elementAt(index),
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      images.keys.elementAt(index),
                      style: TextStyle(
                        color: Colors.white,
                        backgroundColor: Colors.black54,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              // Container(
              //   color: Colors.blue, // color of grid items
              //   child: Center(
              //     child: Text(
              //       "${images[index]}",
              //       style: TextStyle(fontSize: 18.0, color: Colors.white),
              //     ),
              //   ),
              // ),
            ],
          );
        },
      ),
    );
  }
}

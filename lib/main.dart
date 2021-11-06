import 'package:flutter/material.dart';
import 'package:listview_builder_with_image_and_text/models/catalog.dart';
import 'package:listview_builder_with_image_and_text/widgets/itemWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("This Is ListView Builder Using Image And Text"),
        ),

        body: ListView.builder(
          itemCount: CatalogModel.items.length,
          
          itemBuilder: (context,index){


          return ItemWidget(item: CatalogModel.items[index]);
        }
        
        ),
      ),
    );
  }
}

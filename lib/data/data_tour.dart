import 'package:flutter/material.dart';
import 'package:wisataa_app/data/tours.dart';


class DataTour extends StatelessWidget {
  final Tour tours;

  const DataTour({Key? key, required this.tours}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tourId = ModalRoute.of(context)!.settings.arguments as String;

    final tours = Tour.firstWhere((tours) => tours.id == tourId);
    return Scaffold(
      appBar: AppBar(
        title: Text(tours.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.all(16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                tours.imgUrl,
                width: 400,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding:  EdgeInsets.all(16.0),
            child: Text(
              'Description : ' + tours.descriptions,
              maxLines: 15,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.brown,
              ),
            ),
          ),
        ],
      ),
    );
  }
}






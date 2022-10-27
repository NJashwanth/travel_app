import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travel_app/modules/home/data/models/location_details_model.dart';

class RatingWidget extends StatefulWidget {
  final LocationDetailsModel locationModel;

  const RatingWidget(this.locationModel, {super.key});

  @override
  _RatingWidgetState createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  late LocationDetailsModel _locationModel;

  @override
  void initState() {
    super.initState();
    _locationModel = widget.locationModel;
  }

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
        itemSize: 15.0,
        initialRating: _locationModel.rating!,
        glowColor: Colors.yellow,
        ignoreGestures: true,
        unratedColor: Colors.grey,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        // itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) => const Icon(
              Icons.star_rate_rounded,
              color: Colors.yellow,
            ),
        onRatingUpdate: (double value) {});
  }
}

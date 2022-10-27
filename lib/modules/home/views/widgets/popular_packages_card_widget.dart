import 'package:flutter/material.dart';
import 'package:travel_app/modules/home/data/models/location_details_model.dart';
import 'package:travel_app/modules/home/views/widgets/rating_widget.dart';

import 'image_widget.dart';
import 'location_details_screen_portrait.dart';

class PopularPackagesCardWidget extends StatelessWidget {
  final LocationDetailsModel locationDetailsModel;
  const PopularPackagesCardWidget(
      {Key? key, required this.locationDetailsModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LocationDetailsScreenPortrait(
                  locationDetailsModel: locationDetailsModel),
            )),
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
              side: const BorderSide(color: Colors.grey)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: ImageWidget(
                      imageUrl: locationDetailsModel.imageUrl!,
                      curvedBorders: true),
                ),
                Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              locationDetailsModel.locationName!,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              "₹ ${locationDetailsModel.rate!.round().toString()}",
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.red),
                            ),
                          ),
                          Row(
                            children: [
                              RatingWidget(locationDetailsModel),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text(
                                  locationDetailsModel.rating!.toString(),
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              locationDetailsModel.description!,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                    )),
                const Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.favorite_outline_rounded,
                        size: 24,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

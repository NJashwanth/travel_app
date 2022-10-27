import 'package:flutter/material.dart';
import 'package:travel_app/modules/home/data/models/location_details_model.dart';
import 'package:travel_app/modules/home/views/widgets/image_widget.dart';
import 'package:travel_app/modules/home/views/widgets/location_details_screen_portrait.dart';
import 'package:travel_app/modules/home/views/widgets/rating_widget.dart';

class HorizontalListCardWidget extends StatelessWidget {
  final LocationDetailsModel locationDetailsModel;
  const HorizontalListCardWidget({Key? key, required this.locationDetailsModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        width: 220,
        child: GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LocationDetailsScreenPortrait(
                    locationDetailsModel: locationDetailsModel),
              )),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
              color: Colors.transparent,
              elevation: 4,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    ImageWidget(
                        imageUrl: locationDetailsModel.imageUrl!,
                        curvedBorders: true),
                    // Container(
                    //   decoration: BoxDecoration(
                    //       borderRadius:
                    //           const BorderRadius.all(Radius.circular(18.0)),
                    //       image: DecorationImage(
                    //           fit: BoxFit.cover,
                    //           image: AssetImage(
                    //             locationDetailsModel.imageUrl!,
                    //           ))),
                    // ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              stops: const [
                                0.1,
                                0.9
                              ],
                              colors: [
                                Colors.black.withOpacity(.8),
                                Colors.black.withOpacity(.1)
                              ])),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 90,
                      left: 10,
                      child: Text(
                        locationDetailsModel.locationName!,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    ),
                    Positioned(
                      bottom: 50,
                      left: 10,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            size: 14,
                            color: Colors.white,
                          ),
                          Text(
                            locationDetailsModel.locationDetails!,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 10,
                      child: Row(
                        children: [
                          RatingWidget(locationDetailsModel),
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Text(
                              locationDetailsModel.rating!.toString(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

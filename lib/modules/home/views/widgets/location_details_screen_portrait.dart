import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/instance_manager.dart';
import 'package:travel_app/modules/home/data/models/home_state_model.dart';
import 'package:travel_app/modules/home/data/models/location_details_model.dart';
import 'package:travel_app/modules/home/domain/controllers/home_controller.dart';
import 'package:travel_app/modules/home/views/widgets/image_widget.dart';
import 'package:travel_app/modules/home/views/widgets/rating_widget.dart';

class LocationDetailsScreenPortrait extends StatefulWidget {
  final LocationDetailsModel locationDetailsModel;
  const LocationDetailsScreenPortrait(
      {super.key, required this.locationDetailsModel});

  @override
  State<LocationDetailsScreenPortrait> createState() =>
      _LocationDetailsScreenPortraitState();
}

class _LocationDetailsScreenPortraitState
    extends State<LocationDetailsScreenPortrait> {
  late LocationDetailsModel locationDetailsModel;

  @override
  void initState() {
    super.initState();
    locationDetailsModel = widget.locationDetailsModel;
  }

  final HomeController _controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeController, HomeState>(
        bloc: _controller,
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              actions: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Icon(
                      Icons.favorite_outline_rounded,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                )
              ],
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.transparent,
              elevation: 0,
            ),
            extendBodyBehindAppBar: true,
            body: Stack(
              fit: StackFit.expand,
              children: [
                ImageWidget(
                    imageUrl: locationDetailsModel.imageUrl!,
                    curvedBorders: false),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          stops: const [
                        0.1,
                        0.9
                      ],
                          colors: [
                        Colors.black.withOpacity(.8),
                        Colors.black.withOpacity(.1),
                      ])),
                ),
                Positioned(
                    bottom: 220,
                    left: 20,
                    child: Text(
                      locationDetailsModel.locationName!,
                      style: const TextStyle(fontSize: 22, color: Colors.white),
                    )),
                Positioned(
                    bottom: 220,
                    right: 20,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          const WidgetSpan(
                              child: Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                            size: 16,
                          )),
                          TextSpan(
                              text: locationDetailsModel.locationDetails!,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 12)),
                        ],
                      ),
                    )),
                Positioned(
                    bottom: 150,
                    left: 20,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Text(
                        locationDetailsModel.description!,
                        softWrap: true,
                        maxLines: 4,
                        textAlign: TextAlign.justify,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    )),
                Positioned(
                    left: 20,
                    bottom: 100,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RatingWidget(locationDetailsModel),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            locationDetailsModel.rating!.toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 12),
                          ),
                        )
                      ],
                    )),
                Positioned(
                    left: 20,
                    bottom: 40,
                    child: Text(
                      "₹${locationDetailsModel.rate!}/person",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    )),
                Positioned(
                    right: 20,
                    bottom: 30,
                    child: SizedBox(
                      height: 50,
                      width: 100,
                      child: Card(
                        color: Colors.yellow,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: const Center(
                          child: Text(
                            "Book Now",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          );
        });
  }
}

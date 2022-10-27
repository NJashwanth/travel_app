import 'package:travel_app/modules/home/data/models/location_details_model.dart';

class HomeRepository {
  List<LocationDetailsModel> getLocationDetails() {
    LocationDetailsModel bagaBeach = LocationDetailsModel(
        locationDetails: "Goa, India",
        description:
            "One of the most happening beaches in Goa, Baga Beach is where you will find water sports, fine dining restaurants, bars, and clubs. Situated in North Goa, Baga Beach is bordered by Calangute and Anjuna Beaches.",
        imageUrl: "assets/baga_beach.png",
        locationName: "Baga Beach",
        rate: 15000,
        rating: 4);
    LocationDetailsModel kutaBeach = LocationDetailsModel(
        locationDetails: "Bali, Indonesia",
        description:
            "One of the most happening beaches in Goa, Baga Beach is where you will find water sports, fine dining restaurants, bars, and clubs. Situated in North Goa, Baga Beach is bordered by Calangute and Anjuna Beaches.",
        imageUrl: "assets/kuta_beach.png",
        locationName: "Kuta Beach",
        rate: 15000,
        rating: 4);

    return [bagaBeach, kutaBeach];
  }
}

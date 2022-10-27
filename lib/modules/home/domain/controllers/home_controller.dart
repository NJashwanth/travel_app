import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/modules/home/data/models/home_state_model.dart';
import 'package:travel_app/modules/home/data/models/location_details_model.dart';
import 'package:travel_app/modules/home/data/repositories/home_repository.dart';

class HomeController extends Cubit<HomeState> {
  HomeController() : super(HomeState());
  late HomeRepository repository;

  void init() {
    repository = HomeRepository();
    getLocationDetails();
  }

  void getLocationDetails() {
    emit(state.copyWith(isLoading: true));
    List<LocationDetailsModel> list = repository.getLocationDetails();
    emit(state.copyWith(isLoading: false, list: list));
  }
}

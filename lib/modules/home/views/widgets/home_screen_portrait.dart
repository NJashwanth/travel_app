import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/modules/home/data/models/home_state_model.dart';
import 'package:travel_app/modules/home/domain/controllers/home_controller.dart';
import 'package:travel_app/modules/home/views/widgets/choose_category_button.dart';
import 'package:travel_app/modules/home/views/widgets/horizontal_list_card_widget.dart';
import 'package:travel_app/modules/home/views/widgets/popular_packages_card_widget.dart';

import 'display_heading_widget.dart';

class HomeScreenPortrait extends StatefulWidget {
  const HomeScreenPortrait({super.key});

  @override
  State<HomeScreenPortrait> createState() => _HomeScreenPortraitState();
}

class _HomeScreenPortraitState extends State<HomeScreenPortrait> {
  final HomeController _controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeController, HomeState>(
        bloc: _controller,
        builder: (context, state) {
          return Scaffold(body: buildColumn());
        });
  }

  Widget buildColumn() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    maxRadius: 18,
                    backgroundColor: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Hello, Vineetha",
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                  const Expanded(
                      child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.notifications_none_rounded,
                      color: Colors.grey,
                      size: 26,
                    ),
                  ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Where do you want to explore today?",
                  style: GoogleFonts.poppins().copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                  maxLines: 2,
                  softWrap: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    fillColor: const Color.fromARGB(3, 0, 0, 0),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    labelStyle: const TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                    hintStyle: GoogleFonts.inter().copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.greenAccent, width: 1.0),
                    ),
                  ),
                ),
              ),
              const DisplayHeadingWidget(categoryName: "Choose Category"),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  CategoryButton(
                      asset: "assets/mountain.png",
                      name: "Beach",
                      isSelected: true),
                  CategoryButton(
                    asset: "assets/beach.png",
                    name: "Mountain",
                    isSelected: false,
                  )
                ],
              ),
              SizedBox(
                height: 350,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _controller.state.list.length,
                    itemBuilder: (context, index) {
                      return HorizontalListCardWidget(
                          locationDetailsModel: _controller.state.list[index]);
                    }),
              ),
              const DisplayHeadingWidget(categoryName: "Popular Package"),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: _controller.state.list.length,
                  itemBuilder: (context, index) {
                    return PopularPackagesCardWidget(
                        locationDetailsModel: _controller.state.list[index]);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

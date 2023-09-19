import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:misik_guide/blocs/restaurant/add/restaurant_add_bloc.dart';
import 'package:remedi_kopo/remedi_kopo.dart';

class RestaurantAddPage extends StatelessWidget {
  const RestaurantAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RestaurantAddBloc(),
      child: const _RestaurantAddPageBody(),
    );
  }
}

class _RestaurantAddPageBody extends StatelessWidget {
  const _RestaurantAddPageBody();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("addRestaurant"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextField(
                decoration: InputDecoration(
                  labelText: "nameLabelText",
                  hintText: "nameInputHintText",
                ),
              ),
              const SizedBox(height: 24.0),
              TextField(
                readOnly: true,
                decoration: InputDecoration(
                  labelText: "addressLabelText",
                  hintText: "addressInputHintText",
                  suffixIcon: Icon(Icons.chevron_right),
                ),
                onTap: () async {
                  KopoModel? model = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RemediKopo(),
                    ),
                  );

                  if (model != null) {
                    log(model.address ?? "");
                  }
                },
              ),
              const SizedBox(height: 24.0),
              const Text("images"),
              Wrap(
                spacing: 12.0,
                runAlignment: WrapAlignment.start,
                alignment: WrapAlignment.start,
                runSpacing: 12.0,
                children: List.generate(5, (index) {
                  if (index == 4) {
                    return InkWell(
                      onTap: () {
                        log("Click Add Image");
                      },
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        color: Colors.grey,
                        child: const Center(child: Text("Add Image")),
                      ),
                    );
                  }
                  return Image.network("https://picsum.photos/100/100");
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

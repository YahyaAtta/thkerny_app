import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thkerny_app/controller/azkar_controller.dart';
import 'package:thkerny_app/model/azkar.dart';
import 'package:thkerny_app/routes.dart';

// ignore: must_be_immutable
class AzkarScreen extends StatelessWidget {
  AzkarScreen({super.key});
  final AzkarController controller = Get.find<AzkarController>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('الاذكار')),
      body: FutureBuilder(
        future: controller.getAzkar,
        builder: (context, AsyncSnapshot<List<Azkar?>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return const Center(child: Icon(Icons.error_rounded, size: 60));
          }
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: .center,
                crossAxisAlignment: .center,
                spacing: 5,
                children: [
                  Get.isDarkMode
                      ? Image.asset("assets/icons/dark.png")
                      : Image.asset("assets/icons/icon.png"),
                  Text('لا توجد بيانات', style: theme.textTheme.headlineMedium),
                ],
              ),
            );
          }

          return Padding(
            padding: const EdgeInsets.all(18),
            child: GridView.builder(
              itemCount: snapshot.data!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 18,
                crossAxisSpacing: 18,
                crossAxisCount: 2,
                childAspectRatio: 1.1,
              ),
              itemBuilder: (context, i) {
                final azkar = snapshot.data![i]!;
                return Card(
                  elevation: 7,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(24),
                    onTap: () async {
                      // controller.playAudio(azkar.audio);
                      Get.toNamed(
                        AppRoute.azkarDetails,
                        arguments: azkar.array,
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(.02),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Get.isDarkMode
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    "assets/icons/dark.png",
                                    height: 60,
                                  ),
                                )
                              : Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    "assets/icons/icon.png",
                                    height: 60,
                                  ),
                                ),
                          const SizedBox(height: 10.7),
                          Padding(
                            padding: const EdgeInsets.all(.90),
                            child: Text(
                              azkar.category,
                              textAlign: TextAlign.center,
                              textDirection: TextDirection.rtl,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

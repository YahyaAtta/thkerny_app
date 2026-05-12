import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thkerny_app/controller/azkar_details_controller.dart';

// ignore: must_be_immutable
class AzkarDetails extends StatelessWidget {
  AzkarDetails({super.key});
  final AzkarDetailsController controller = Get.find<AzkarDetailsController>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('الاذكار')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: controller.pageController,
                  onPageChanged: controller.onChangedPage,
                  itemCount: controller.data.length,
                  itemBuilder: (context, i) {
                    return Container(
                      margin: EdgeInsets.all(20),
                      child: Card(
                        elevation: 17,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 12,
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                SelectionArea(
                                  child: Text(
                                    controller.data[i]['text'],
                                    textAlign: TextAlign.right,
                                    textDirection: TextDirection.rtl,
                                    style: theme.textTheme.headlineSmall,
                                  ),
                                ),
                                const SizedBox(height: 18),

                                Text(
                                  'عدد المرات: ${controller.data[i]['count']}',
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  style: theme.textTheme.bodyLarge,
                                ),
                                SizedBox(height: 5),
                                GetBuilder<AzkarDetailsController>(
                                  builder: (c) => IconButton(
                                    icon: Icon(
                                      controller.isPlaying
                                          ? Icons.pause_rounded
                                          : Icons.play_arrow_rounded,
                                      size: 40,
                                    ),
                                    onPressed: () async {
                                      controller.playAudioWithRepeat(
                                        controller.data[i]['audio'],
                                        controller.data[i]['count'],
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 7),
              Card(
                elevation: 17,
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: .center,
                    crossAxisAlignment: .center,
                    children: [
                      IconButton(
                        onPressed: controller.previousPage,
                        icon: const Icon(Icons.arrow_back_rounded, size: 35),
                      ),
                      IconButton(
                        onPressed: controller.nextPage,
                        icon: const Icon(Icons.arrow_forward_rounded, size: 35),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              GetBuilder<AzkarDetailsController>(
                builder: (controller) => Text(
                  '${controller.pageIndictor + 1}/${controller.data.length}',
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thkerny_app/routes.dart';

class MenuCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  const MenuCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 40,
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        onTap: () {
          Get.toNamed(AppRoute.azkarScreen);
        },
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            textDirection: TextDirection.rtl,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Align(
                  alignment: .center,
                  child: Get.isDarkMode
                      ? Image.asset(
                          "assets/icons/dark.png",
                          height: MediaQuery.of(context).size.height / 6,
                          width: MediaQuery.of(context).size.width / 0.2,
                        )
                      : Image.asset(
                          "assets/icons/icon.png",
                          height: MediaQuery.of(context).size.height / 6,
                          width: MediaQuery.of(context).size.width / 0.2,
                        ),
                ),
              ),
              const SizedBox(height: 18),
              Text(
                title,
                textAlign: .right,
                textDirection: .rtl,
                style: theme.textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              Text(
                subtitle,
                textAlign: .right,
                textDirection: .rtl,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('ذكرني'), actions: [
         
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            children: [
              Card(
                elevation: 17,
                child: ListTile(
                  title: Text(
                    'مرحبا بك في ذكرني',
                    textDirection: TextDirection.rtl,
                    style: theme.textTheme.displayLarge,
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 6,
                    ),
                    child: Text(
                      'سهلنا لك الوصول إلى الأذكار بتصميم هادئ وبسيط.',
                      textDirection: TextDirection.rtl,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 17,
                  ),
                  /*
                    
                   
                    ,
                */
                ),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: Center(
                  child: MenuCard(
                    title: "أذكار المسلم",
                    subtitle: 'تصفح الأذكار اليومية',
                    icon: Icons.book_outlined,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

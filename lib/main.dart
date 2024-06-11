import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'dart:io';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GirisSayfasi(),
      debugShowCheckedModeBanner: false,
    );
  }
}



class GirisSayfasi extends StatelessWidget {
  const GirisSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'lib/images/image.jpg',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 550, left: 20, bottom: 20, right: 20),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Egzersizler()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black.withOpacity(0.0),
                    side: const BorderSide(color: Colors.white),
                    minimumSize: const Size(130, 40)),
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//##############################################

class Egzersizler extends StatelessWidget {
  Egzersizler({super.key});

  final List<Map<String, dynamic>> egzersizKategorileri = [
    {
      'isim': 'Abdominal Exercises',
      'egzersizSayisi': 7,
      'resim': 'lib/images/abs.png',
      'page': Karin(),
    },
    {
      'isim': 'Back Exercises',
      'egzersizSayisi': 6,
      'resim': 'lib/images/back.png',
      'page': Sirt(),
    },
    {
      'isim': 'Arm Exercises',
      'egzersizSayisi': 8,
      'resim': 'lib/images/biceps.png',
      'page': Kol(),
    },
    {
      'isim': 'Leg Exercises',
      'egzersizSayisi': 8,
      'resim': 'lib/images/calf.png',
      'page': Bacak(),
    },
    {
      'isim': 'Chest Exercises',
      'egzersizSayisi': 10,
      'resim': 'lib/images/chest.png',
      'page': Gogus(),
    },
    {
      'isim': 'Shoulders Exercises',
      'egzersizSayisi': 8,
      'resim': 'lib/images/shoulders.png',
      'page': Shoulders(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Exercises',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'lib/images/image.jpg',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: egzersizKategorileri.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                              egzersizKategorileri[index]['page'],
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 7),
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.0),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                egzersizKategorileri[index]['resim'],
                                width: 70,
                                height: 70,
                              ),
                              const SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    egzersizKategorileri[index]['isim'],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    '${egzersizKategorileri[index]['egzersizSayisi']} exercises',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: TextButton(
                    onPressed: () {
                      exit(0);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.black.withOpacity(0.5),
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    ),
                    child: const Text(
                      'Exit App',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//##############################################

class Karin extends StatelessWidget {
   Karin({super.key});

  final List<Map<String, String>> karinEgzersizleri = [
    {
      'title': 'Incline Bench Sit-Ups',
      'image': 'lib/images/icon1.jpg',
      'page': 'InclineBenchSitUps',
    },
    {
      'title': 'Hanging Leg Raises',
      'image': 'lib/images/icon2.jpg',
      'page':  'HangingLegRaises',
    },
    {
      'title': 'Dumbbell Side Bends',
      'image': 'lib/images/icon3.jpg',
      'page':  'DumbbellSideBends',
    },
    {
      'title': 'Crunches',
      'image': 'lib/images/icon4.jpg',
      'page': 'Crunches',
    },
    {
      'title': 'Sit-Ups',
      'image': 'lib/images/icon5.jpg',
      'page': 'SitUps',
    },
    {
      'title': 'Leg Raises',
      'image': 'lib/images/icon6.jpg',
      'page': 'LegRaises',
    },
    {
      'title': 'Flat Bench Lying Leg Raise',
      'image': 'lib/images/icon7.jpg',
      'page': 'FlatBench',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Abdominal Exercises',
            style: TextStyle(color: Colors.white,fontSize: 24),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.white,
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/images/image.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListView.builder(
              padding: const EdgeInsets.all(0),
              itemCount: karinEgzersizleri.length,
              itemBuilder: (BuildContext context, int index) {
                final exercise = karinEgzersizleri[index];
                return Card(
                  color: Colors.white.withOpacity(0.0),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.white,width: 2),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(35),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(exercise['image']!),
                      radius: 30,
                    ),
                    title: Text(
                      exercise['title']!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: const Icon(Icons.chevron_right, color: Colors.white),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          switch (exercise['page']) {
                            case 'InclineBenchSitUps':
                              return const InclineBenchSitUps(
                                title: 'Incline Bench Sit Ups',
                                images: [
                                  'lib/images/InclineBenchSitUpsPage_image4.jpg',
                                  'lib/images/InclineBenchSitUpsPage_image2.jpg',
                                  'lib/images/InclineBenchSitUpsPage_image3.jpg',
                                  'lib/images/InclineBenchSitUpsPage_image1.jpg',
                                ],
                              );
                            case 'HangingLegRaises':
                              return const HangingLegRaises(
                                title: 'Hanging Leg Raises',
                                images: [
                                  'lib/images/hanging_leg_raises_image1.jpg',
                                  'lib/images/hanging_leg_raises_image2.jpg',
                                  'lib/images/hanging_leg_raises_image3.jpg',
                                ],
                              );
                            case 'DumbbellSideBends':
                              return const DumbbellSideBends(
                                title: 'DumbbellSideBends',
                                images: [
                                  'lib/images/Dumbbell_Side_Bends_image1.jpg',
                                  'lib/images/Dumbbell_Side_Bends_image2.jpg',
                                  'lib/images/Dumbbell_Side_Bends_image3.jpg',
                                  'lib/images/Dumbbell_Side_Bends_image4.jpg',
                                ],
                              );
                            case 'Crunches':
                              return const Crunches(
                                title: 'Crunches',
                                images: [
                                  'lib/images/Crunches_image1.jpg',
                                  'lib/images/Crunches_image2.jpg',
                                  'lib/images/Crunches_image3.jpg',
                                ],
                              );
                            case 'SitUps':
                              return const SitUps(
                                title: 'SitUps',
                                images: [
                                  'lib/images/Sit_Ups_image1.jpg',
                                  'lib/images/Sit_Ups_image2.jpg',
                                  'lib/images/Sit_Ups_image3.jpg',
                                  'lib/images/Sit_Ups_image4.jpg',
                                ],
                              );
                            case 'LegRaises':
                              return const LegRaises(
                                title: 'LegRaises',
                                images: [
                                  'lib/images/Leg_Raises_image1.jpg',
                                  'lib/images/Leg_Raises_image2.jpg',
                                  'lib/images/Leg_Raises_image3.jpg',
                                ],
                              );
                            case 'FlatBench':
                              return const FlatBench(
                                title: 'FlatBench',
                                images: [
                                  'lib/images/Flat_Bench_image1.jpg',
                                  'lib/images/Flat_Bench_image2.jpg',
                                  'lib/images/Flat_Bench_image3.jpg',
                                  'lib/images/Flat_Bench_image4.jpg',
                                  'lib/images/Flat_Bench_image5.jpg',
                                ],
                              );
                            default:
                              return Container();
                          }
                        }
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class InclineBenchSitUps extends StatelessWidget {
  final String title;
  final List<String> images;

  const InclineBenchSitUps({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "This exercise is effective for strengthening and toning the abdominal muscles. When doing a sit-up on an incline bench, you lift your head and shoulders using your abdominal muscles as the body leans upward. You encounter more resistance in this exercise compared to sit-ups performed on a flat surface because your upper body is elevated against the bench. The incline bench increases the difficulty of the exercise and can help target the lower abdominal area. Additionally, sit-ups done at an angle can also work the shoulders and upper abdominal muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HangingLegRaises extends StatelessWidget {
  final String title;
  final List<String> images;

  const HangingLegRaises({Key? key, required this.title, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'Hanging leg raises is an exercise to strengthen the abdominal muscles. Here are the steps:\n1.Starting Position:\nHold on to the pull-up bar with your hands shoulder-width apart and take your feet off the ground.\n2.Leg Lift:\nUsing your abdominal muscles, lift your legs up by keeping them straight or bending your knees. Try to lift your legs to hip level or higher.\n3.Descent:\nSlowly and controlledly lower your legs to the starting position.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DumbbellSideBends extends StatelessWidget {
  final String title;
  final List<String> images;

  const DumbbellSideBends({Key? key, required this.title, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Dumbbell side bends strengthen oblique and lateral abdominal muscles. Here's a quick guide:\n1.Start:Stand with feet shoulder-width apart, holding a dumbbell in one hand.\n2.Bend:Slowly bend sideways toward the dumbbell, keeping hips stable.\n3.Pause:Pause briefly at maximum bend, squeezing obliques.\n4.Return:Return to starting position.\n5.Repeat:Switch sides after completing repetitions.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Crunches extends StatelessWidget {
  final String title;
  final List<String> images;

  const Crunches({Key? key, required this.title, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "1.Start: Lie on your back with knees bent and feet flat on the floor. Place hands behind your head or across your chest.\n2.Movement: Lift your shoulders off the floor using your abdominal muscles. Keep your lower back on the ground.\n3.Return: Lower your shoulders back down to the starting position.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SitUps extends StatelessWidget {
  final String title;
  final List<String> images;

  const SitUps({Key? key, required this.title, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Sit-ups are an exercise for working the abdominal muscles. Here's a brief guide on how to do them:\n1. Lie on your back with knees bent.\n2. Place your hands behind your head or across your chest.\n3. Use your abdominal muscles to lift your upper body all the way up.\n4. Return to the starting position.\nEnsure controlled movement to avoid straining the neck.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LegRaises extends StatelessWidget {
  final String title;
  final List<String> images;

  const LegRaises({Key? key, required this.title, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Leg raises are an exercise for strengthening the abdominal muscles. Here's a brief explanation of how to do them:\n1. Lie on your back, place your hands beside you.\n2. Lift your legs straight up.\n3. Lower your legs back down to the starting position with control.\nFocus on using your abdominal muscles while performing this exercise.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FlatBench extends StatelessWidget {
  final String title;
  final List<String> images;

  const FlatBench({Key? key, required this.title, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Flat bench press is an exercise to strengthen the chest muscles. Here's a brief explanation of how to do it:\n1. Lie down on a flat bench.\n2. Grip the bar with a shoulder-width grip.\n3. Lower the bar towards the upper chest.\n4. Push the bar upwards, straightening your arms.\nStart with light weights and maintain proper form.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//##############################################

class Sirt extends StatelessWidget {
   Sirt({super.key});

  final List<Map<String, String>> sirtEgzersizleri = [
    {
      'title': 'Chin-Ups',
      'image': 'lib/images/icon11.jpg',
      'page': 'ChinUps',
    },
    {
      'title': 'DeadLifts',
      'image': 'lib/images/icon12.jpg',
      'page': 'DeadLift',
    },
    {
      'title': 'Last Pull-Downs',
      'image': 'lib/images/icon13.jpg',
      'page': 'LastPull',
    },
    {
      'title': 'Seated Rows',
      'image': 'lib/images/icon14.jpg',
      'page': 'SeatedRows',
    },
    {
      'title': 'One-Arm Dumbbell Rows',
      'image': 'lib/images/icon15.jpg',
      'page': 'OneArmDumbbell',
    },
    {
      'title': 'Barbell Shrugs',
      'image': 'lib/images/icon16.jpg',
      'page': 'BarbellShrugs',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Back Exercises',
            style: TextStyle(color: Colors.white,fontSize: 24),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.white,
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/images/image.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListView.builder(
              padding: const EdgeInsets.all(0),
              itemCount: sirtEgzersizleri.length,
              itemBuilder: (BuildContext context, int index) {
                final exercise = sirtEgzersizleri[index];
                return Card(
                  color: Colors.white.withOpacity(0.0),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.white,width: 2),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(35),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(exercise['image']!),
                      radius: 30,
                    ),
                    title: Text(
                      exercise['title']!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: const Icon(Icons.chevron_right, color: Colors.white),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            switch (exercise['page']) {
                              case 'ChinUps':
                                return const ChinUps(
                                  title: 'ChinUps',
                                  images: [
                                    'lib/images/Chin_Ups_image1.jpg',
                                    'lib/images/Chin_Ups_image2.jpg',
                                    'lib/images/Chin_Ups_image3.jpg',
                                  ],
                                );
                              case 'DeadLift':
                                return const DeadLift(
                                  title: 'DeadLift',
                                  images: [
                                    'lib/images/Dead_Lifts_image1.jpg',
                                    'lib/images/Dead_Lifts_image2.jpg',
                                    'lib/images/Dead_Lifts_image3.jpg',
                                    'lib/images/Dead_Lifts_image4.jpg',
                                    'lib/images/Dead_Lifts_image5.jpg',
                                  ],
                                );
                              case 'LastPull':
                                return const LastPull(
                                  title: 'LastPull',
                                  images: [
                                    'lib/images/Last_Pull_Downs_image1.jpg',
                                    'lib/images/Last_Pull_Downs_image2.jpg',
                                    'lib/images/Last_Pull_Downs_image3.jpg',
                                  ],
                                );
                              case 'SeatedRows':
                                return const SeatedRows(
                                  title: 'SeatedRows',
                                  images: [
                                    'lib/images/Seated_Rows_image1.jpg',
                                    'lib/images/Seated_Rows_image2.jpg',
                                    'lib/images/Seated_Rows_image3.jpg',
                                    'lib/images/Seated_Rows_image4.jpg',
                                    'lib/images/Seated_Rows_image5.jpg',
                                  ],
                                );
                              case 'OneArmDumbbell':
                                return const OneArmDumbbell(
                                  title: 'OneArmDumbbell',
                                  images: [
                                    'lib/images/One_Arm_Dumbbell_image1.jpg',
                                    'lib/images/One_Arm_Dumbbell_image2.jpg',
                                    'lib/images/One_Arm_Dumbbell_image3.jpg',
                                  ],
                                );
                              case 'BarbellShrugs':
                                return const BarbellShrugs(
                                  title: 'BarbellShrugs',
                                  images: [
                                    'lib/images/Barbell_Shrugs_image1.jpg',
                                    'lib/images/Barbell_Shrugs_image2.jpg',
                                    'lib/images/Barbell_Shrugs_image3.jpg',
                                  ],
                                );
                              default:
                                return Container();
                            }
                          },
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class ChinUps extends StatelessWidget {
  final String title;
  final List<String> images;

  const ChinUps({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Chin-ups are an exercise to strengthen the upper back muscles. Here's a very brief explanation of how to do them:\n1. Grab the pull-up bar with an overhand grip.\n2. Hands should be shoulder-width apart.\n3. Pull your body upwards, allowing your chin to come over the bar.\n4. Lower back down to the starting position in a controlled manner.\nGradually work on increasing repetitions to build strength.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DeadLift extends StatelessWidget {
  final String title;
  final List<String> images;

  const DeadLift({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Deadlift is an exercise to increase overall body strength. Here's a brief explanation of how to do it:\n1. Starting Position:\nStand with your feet shoulder-width apart, the bar should be directly over the middle of your feet. Approach the bar with bent knees and grab it using either a mixed grip or a double overhand grip. Keep your back flat, shoulders back, and chest up.\n2.Lifting:\nInhale and lift the bar by extending your hips and knees until you're standing upright. Exhale and lower the bar back down under control.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LastPull extends StatelessWidget {
  final String title;
  final List<String> images;

  const LastPull({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Lat pulldowns are an exercise to work the upper back muscles. Here's a brief explanation of how to do them:\n1.Starting Position:\nSit or stand in front of the machine. Grip the bar with shoulder-width or slightly wider grip.\n2.Movement:\nPull the bar down by straightening your arms. Roll your shoulders back as you pull.\nMaintain control and proper form while doing this exercise.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SeatedRows extends StatelessWidget {
  final String title;
  final List<String> images;

  const SeatedRows ({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Seated rows are an exercise to strengthen the back muscles. Here's a brief explanation of how to do them:\n1.Starting Position:\nSit or stand in front of a cable or machine.      Grip the handle with palms facing towards you.\n2.Movement:\nPull the handle towards yourself. Roll your shoulders back as you pull.\nMaintain proper form and move in a controlled manner.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OneArmDumbbell extends StatelessWidget {
  final String title;
  final List<String> images;

  const OneArmDumbbell ({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(2.0),
              child: Text(
                "One Arm Dumbbell is a single-arm exercise targeting the muscles of the arm. Here are the steps:\n1.Starting Position:\nStand with a dumbbell in one hand. Keep your shoulders back and tighten your core.\n2.Movement:\nLift the dumbbell upwards towards your shoulder. Raise your upper arm towards your shoulder.\n3.Lowering:\nLower the dumbbell back down to the starting position in a controlled manner.\nRepeat for each arm. Maintain form and control the weight. This exercise helps strengthen the arm muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BarbellShrugs extends StatelessWidget {
  final String title;
  final List<String> images;

  const BarbellShrugs ({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Barbell Shrugs is an exercise designed to work the trapezius muscles. With your feet shoulder-width apart, grip the barbell and lift your shoulders upwards. Then, lower it down in a controlled manner.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//###############################################

class Kol extends StatelessWidget {
   Kol({Key? key}) : super(key: key);

  final List<Map<String, String>> kolEgzersizleri = [
    {
      'title': 'Curls',
      'image': 'lib/images/icon17.png',
      'page': 'Curls',
    },
    {
      'title': 'Barbell Curls',
      'image': 'lib/images/icon18.png',
      'page': 'BarbellCurls',
    },
    {
      'title': 'Preacher Curls',
      'image': 'lib/images/icon19.png',
      'page': 'PreacherCurls',
    },
    {
      'title': 'Hammer Curls',
      'image': 'lib/images/icon20.png',
      'page': 'HammerCurls',
    },
    {
      'title': 'Concentration Curls',
      'image': 'lib/images/icon21.png',
      'page': 'ConcentrationCurls',
    },
    {
      'title': 'Reverse Curls',
      'image': 'lib/images/icon22.png',
      'page': 'ReverseCurls',
    },
    {
      'title': 'Cable Biceps Curl',
      'image': 'lib/images/icon23.png',
      'page': 'CableBiceps',
    },
    {
      'title': 'Low Pulley Curls',
      'image': 'lib/images/icon24.png',
      'page': 'LowPulley',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Arm Exercises',
            style: TextStyle(color: Colors.white,fontSize: 24),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.white,
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/images/image.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListView.builder(
              padding: const EdgeInsets.all(0),
              itemCount: kolEgzersizleri.length,
              itemBuilder: (BuildContext context, int index) {
                final exercise = kolEgzersizleri[index];
                return Card(
                  color: Colors.white.withOpacity(0.0),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.white, width: 2),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(35),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(exercise['image']!),
                      radius: 30,
                    ),
                    title: Text(
                      exercise['title']!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: const Icon(Icons.chevron_right, color: Colors.white),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            switch (exercise['page']) {
                              case 'Curls':
                                return const Curls(
                                  title: 'Curls',
                                  images: [
                                    'lib/images/Curls_image1.png',
                                    'lib/images/Curls_image2.png',
                                    'lib/images/Curls_image3.png',
                                    'lib/images/Curls_image4.png',
                                  ],
                                );
                              case 'BarbellCurls':
                                return const BarbellCurls(
                                  title: 'BarbellCurls',
                                  images: [
                                    'lib/images/Barbell_Curls_image1.png',
                                    'lib/images/Barbell_Curls_image2.png',
                                    'lib/images/Barbell_Curls_image3.png',
                                    'lib/images/Barbell_Curls_image4.png',
                                    'lib/images/Barbell_Curls_image5.png',
                                  ],
                                );
                              case 'PreacherCurls':
                                return const PreacherCurls(
                                  title: 'PreacherCurls',
                                  images: [
                                    'lib/images/Preacher_Curls_image1.png',
                                    'lib/images/Preacher_Curls_image2.png',
                                    'lib/images/Preacher_Curls_image3.png',
                                    'lib/images/Preacher_Curls_image4.png',
                                  ],
                                );
                              case 'HammerCurls':
                                return const HammerCurls(
                                  title: 'HammerCurls',
                                  images: [
                                    'lib/images/Hammer_Curls_image1.png',
                                    'lib/images/Hammer_Curls_image2.png',
                                    'lib/images/Hammer_Curls_image3.png',
                                    'lib/images/Hammer_Curls_image4.png',
                                  ],
                                );
                              case 'ConcentrationCurls':
                                return const ConcentrationCurls(
                                  title: 'ConcentrationCurls',
                                  images: [
                                    'lib/images/Concentration_Curls_image1.png',
                                    'lib/images/Concentration_Curls_image2.png',
                                    'lib/images/Concentration_Curls_image3.png',
                                    'lib/images/Concentration_Curls_image4.png',
                                    'lib/images/Concentration_Curls_image5.png',
                                  ],
                                );
                                case 'ReverseCurls':
                              return const ReverseCurls(
                                title: 'ReverseCurls',
                                images: [
                                  'lib/images/Reverse_Curls_image1.png',
                                  'lib/images/Reverse_Curls_image2.png',
                                  'lib/images/Reverse_Curls_image3.png',
                                  'lib/images/Reverse_Curls_image4.png'
                                ],
                              );
                              case 'CableBiceps':
                                return const CableBiceps(
                                  title: 'CableBiceps',
                                  images: [
                                    'lib/images/Cable_Biceps_image1.png',
                                    'lib/images/Cable_Biceps_image2.png',
                                    'lib/images/Cable_Biceps_image3.png',
                                  ],
                                );
                              case 'LowPulley':
                                return const LowPulley(
                                  title: 'LowPulley',
                                  images: [
                                    'lib/images/Low_Pulley_image1.png',
                                    'lib/images/Low_Pulley_image2.png',
                                    'lib/images/Low_Pulley_image3.png',
                                  ],
                                );
                              default:
                                return Container();
                            }
                          },
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class Curls extends StatelessWidget {
  final String title;
  final List<String> images;

  const Curls({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Curls is an exercise aimed at working the biceps muscles. You bend your arms to lift the weight upwards, then lower it down in a controlled manner.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BarbellCurls extends StatelessWidget {
  final String title;
  final List<String> images;

   const BarbellCurls({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Barbell Curls is an exercise aimed at strengthening the biceps muscles. With feet shoulder-width apart, you grip the barbell and lift your shoulders upwards. Then, you lower it down in a controlled manner.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PreacherCurls extends StatelessWidget {
  final String title;
  final List<String> images;

  const PreacherCurls({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Preacher Curls is an exercise aimed at targeting the biceps muscles. While seated on a preacher bench, you lift and lower the dumbbell with palms facing towards your body.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HammerCurls extends StatelessWidget {
  final String title;
  final List<String> images;

  const HammerCurls({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Hammer Curls is an exercise targeting the biceps and brachialis muscles. Holding dumbbells in your hands, you lift your arms upward with your palms facing towards your body. Then, you lower them down in a controlled manner.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ConcentrationCurls extends StatelessWidget {
  final String title;
  final List<String> images;

  const ConcentrationCurls({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Concentration Curls is an exercise aimed at targeting the biceps muscles. Here's how to do it in short steps:Sit on a chair holding a dumbbell with one hand. Rest your elbow on your knee and bring your arm close to your thigh. Lift the dumbbell upwards, squeezing your biceps muscles. Pause at the top for a moment, then lower it down in a controlled manner. Repeat and perform consecutively for each arm.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReverseCurls extends StatelessWidget {
  final String title;
  final List<String> images;

  const ReverseCurls({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Reverse Curls, an exercise targeting the brachioradialis and biceps muscles. Here's how to do it in short steps: Hold a dumbbell with palms facing downward. Stand with your feet shoulder-width apart, maintaining an upright posture. Lift the dumbbell upwards, keeping it close to your body. Pause at the top for a moment, then lower it down in a controlled manner. Repeat and apply to strengthen the forearm muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CableBiceps extends StatelessWidget {
  final String title;
  final List<String> images;

  const CableBiceps({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Cable Biceps is an exercise aimed at strengthening the biceps muscles using a cable machine. Here's how to do it in short steps:\nChoose a handle attachment connected to the cable machine and grab it while in the bottom position. Stand with your feet shoulder-width apart, maintaining an upright posture. Hold the handle with palms facing upwards and lift your arms upwards. Pause at the top for a moment, then lower them down in a controlled manner. Repeat and apply to strengthen the biceps muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LowPulley extends StatelessWidget {
  final String title;
  final List<String> images;

  const LowPulley({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Low Pulley is a cable machine located at a low position and used for various exercises. Here's how it's used in short steps:\nStand with your feet shoulder-width apart near the low pulley machine. Choose your desired handle attachment and grab it. Create resistance by pulling or pushing your arms, perform the exercise. Adjust the weight of the cable machine according to your needs. Repeat the movement under control and target the muscle group you are working on.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//###############################################

class Bacak extends StatelessWidget {
   Bacak({Key? key}) : super(key: key);

  final List<Map<String, String>> bacakEgzersizleri = [
    {
      'title': 'Toe Raises',
      'image': 'lib/images/icon25.png',
      'page': 'ToeRaises',
    },
    {
      'title': 'One-Leg Toe Raises',
      'image': 'lib/images/icon26.png',
      'page': 'OneLegToe',
    },
    {
      'title': 'Seated Calf Raises',
      'image': 'lib/images/icon27.png',
      'page': 'SeatedCalf',
    },
    {
      'title': 'Barbell Calf Raise',
      'image': 'lib/images/icon28.png',
      'page': 'BarbellCalf',
    },
    {
      'title': 'Dumbbell Calf Jump',
      'image': 'lib/images/icon29.png',
      'page': 'DumbbellCalf',
    },
    {
      'title': 'Dumbbell Calf Raise(Seated)',
      'image': 'lib/images/icon30.png',
      'page': 'DumbbellCalfRaise',
    },
    {
      'title': 'Standing Barbell Calf Raise',
      'image': 'lib/images/icon31.png',
      'page': 'StandingBarbell',
    },
    {
      'title': 'Standing Dumbbell Calf Raise',
      'image': 'lib/images/icon32.png',
      'page': 'StandingDumbbell',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Leg Exercises',
            style: TextStyle(color: Colors.white,fontSize: 24),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.white,
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/images/background_image.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListView.builder(
              padding: const EdgeInsets.all(0),
              itemCount: bacakEgzersizleri.length,
              itemBuilder: (BuildContext context, int index) {
                final exercise = bacakEgzersizleri[index];
                return Card(
                  color: Colors.white.withOpacity(0.0),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.white, width: 2),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(35),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(exercise['image']!),
                      radius: 30,
                    ),
                    title: Text(
                      exercise['title']!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: const Icon(Icons.chevron_right, color: Colors.white),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            switch (exercise['page']) {
                              case 'ToeRaises':
                                return const ToeRaises(
                                  title: 'ToeRaises',
                                  images: [
                                    'lib/images/Toe_Raises_image1.png',
                                    'lib/images/Toe_Raises_image2.png',
                                    'lib/images/Toe_Raises_image3.png',
                                  ],
                                );
                              case 'OneLegToe':
                                return const OneLegToe(
                                  title: 'OneLegToe',
                                  images: [
                                    'lib/images/One_Leg_Toe_image1.png',
                                    'lib/images/One_Leg_Toe_image2.png',
                                    'lib/images/One_Leg_Toe_image3.png',
                                  ],
                                );
                              case 'SeatedCalf':
                                return const SeatedCalf(
                                  title: 'SeatedCalf',
                                  images: [
                                    'lib/images/Seated_Calf_image1.png',
                                    'lib/images/Seated_Calf_image2.png',
                                    'lib/images/Seated_Calf_image3.png',
                                  ],
                                );
                              case 'BarbellCalf':
                                return const BarbellCalf(
                                  title: 'BarbellCalf',
                                  images: [
                                    'lib/images/Barbell_Calf_image1.png',
                                    'lib/images/Barbell_Calf_image2.png',
                                    'lib/images/Barbell_Calf_image3.png',
                                  ],
                                );
                              case 'DumbbellCalf':
                                return const DumbbellCalf(
                                  title: 'DumbbellCalf',
                                  images: [
                                    'lib/images/Dumbbell_Calf_image1.png',
                                    'lib/images/Dumbbell_Calf_image2.png',
                                    'lib/images/Dumbbell_Calf_image3.png',
                                  ],
                                );
                              case 'DumbbellCalfRaise':
                                return const DumbbellCalfRaise(
                                  title: 'DumbbellCalfRaise',
                                  images: [
                                    'lib/images/Dumbbell_Calf_Raise_image1.png',
                                    'lib/images/Dumbbell_Calf_Raise_image2.png',
                                    'lib/images/Dumbbell_Calf_Raise_image3.png',
                                  ],
                                );
                              case 'StandingBarbell':
                                return const StandingBarbell(
                                  title: 'StandingBarbell',
                                  images: [
                                    'lib/images/Standing_Barbell_image1.png',
                                    'lib/images/Standing_Barbell_image2.png',
                                    'lib/images/Standing_Barbell_image3.png',
                                  ],
                                );
                              case 'StandingDumbbell':
                                return const StandingDumbbell(
                                  title: 'StandingDumbbell',
                                  images: [
                                    'lib/images/Standing_Dumbbell_image1.png',
                                    'lib/images/Standing_Dumbbell_image2.png',
                                    'lib/images/Standing_Dumbbell_image3.png',
                                  ],
                                );
                              default:
                                return Container();
                            }
                          },
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class ToeRaises extends StatelessWidget {
  final String title;
  final List<String> images;

  const ToeRaises({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Toe Raises is an exercise aimed at strengthening the ankle and foot muscles. Here's how to do it in short steps:\nStand on a flat surface with your feet shoulder-width apart. Press your toes firmly into the ground and raise your heels, pushing your body upward. Hold for a moment at the top, then slowly lower your heels back down. Repeat in a controlled manner to strengthen the ankle and foot muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OneLegToe extends StatelessWidget {
  final String title;
  final List<String> images;

  const OneLegToe({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "One Leg Toe Raise is an exercise aimed at strengthening the ankle and foot muscles while maintaining balance. Here's how to do it in short steps:\nStand on a flat surface with your feet shoulder-width apart. Lift one foot off the ground and balance on the other. Press your toes firmly into the ground and raise your heel, pushing your body upward. Hold for a moment at the top, then slowly lower your heel back down. Repeat in a controlled manner to strengthen the ankle and foot muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SeatedCalf extends StatelessWidget {
  final String title;
  final List<String> images;

  const SeatedCalf({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Seated Calf Raises is an exercise aimed at strengthening the ankle and calf muscles. Here's a brief explanation of how to do it:\n1. Sit on a seated calf raise machine and place your feet on the platform.\n2. Push your feet against the platform to raise your heels.\n3. Hold for a moment at the top, then lower your heels down in a controlled manner.\n4. Repeat the exercise to strengthen the calf muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BarbellCalf extends StatelessWidget {
  final String title;
  final List<String> images;

  const BarbellCalf({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Barbell Calf Raises, strengthening exercise for the ankle and calf muscles. Here's how to do it in short steps:\n1. Place your feet shoulder-width apart and position a barbell on your shoulders.\n2. Hold the barbell securely behind your neck with your arms locked.\n3. Rise onto the balls of your feet, lifting your heels off the ground.\n4. Hold at the top for a moment, then lower your heels back down in a controlled manner.\n5. Repeat the exercise to strengthen the calf muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DumbbellCalf extends StatelessWidget {
  final String title;
  final List<String> images;

  const DumbbellCalf({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(14.0),
              child: Text(
                "Dumbbell Calf Raises is an exercise aimed at strengthening the ankle and calf muscles. Here's a brief explanation of how to do it:\n1. Stand on a flat surface with your feet shoulder-width apart and hold a dumbbell in each hand.\n2. Hold the dumbbells by your sides to stabilize your feet on the ground.\n3. Push through your toes to raise your heels off the ground.\n4. Hold for a moment at the top, then lower your heels down in a controlled manner.\n5. Repeat the exercise to strengthen the calf muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DumbbellCalfRaise extends StatelessWidget {
  final String title;
  final List<String> images;

  const DumbbellCalfRaise({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Dumbbell Calf Raises is an exercise aimed at strengthening the ankle and calf muscles. Here's a brief explanation of how to do it:\n1. Stand on a flat surface with your feet shoulder-width apart and hold a dumbbell in each hand.\n2. Hold the dumbbells by your sides, stabilizing your feet on the ground.\n3. Press your toes into the ground and raise your heels upward.\n4. Hold at the top for a moment, then lower your heels down in a controlled manner.\n5. Repeat the exercise to strengthen the calf muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StandingBarbell extends StatelessWidget {
  final String title;
  final List<String> images;

  const StandingBarbell({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
               "Standing Barbell Calf Raises is an exercise aimed at strengthening the ankle and calf muscles. Here's a brief explanation of how to do it:\n1. Stand on a flat surface with your feet shoulder-width apart and hold a barbell on your shoulders.\n2. Hold the barbell behind your neck with your arms locked in position.\n3. Press your toes into the ground and raise your heels upward.\n4. Hold at the top for a moment, then lower your heels down in a controlled manner.\n5. Repeat the exercise to strengthen the calf muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StandingDumbbell extends StatelessWidget {
  final String title;
  final List<String> images;

  const StandingDumbbell({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Standing Dumbbell Calf Raises is an exercise aimed at strengthening the ankle and calf muscles. Here's a brief explanation of how to do it:\n1. Stand on a flat surface with your feet shoulder-width apart and hold a dumbbell in each hand.\n2. Hold the dumbbells by your sides, stabilizing your feet on the ground.\n3. Press your toes into the ground and raise your heels upward.\n4. Hold at the top for a moment, then lower your heels down in a controlled manner.\n5. Repeat the exercise to strengthen the calf muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//###############################################

class Gogus extends StatelessWidget {
  Gogus({Key? key}) : super(key: key);

  final List<Map<String, String>> gogusEgzersizleri = [
    {
      'title': 'Bench Presses',
      'image': 'lib/images/icon33.png',
      'page': 'BenchPresses',
    },
    {
      'title': 'Incline Presses',
      'image': 'lib/images/icon34.png',
      'page': 'InclinePresses',
    },
    {
      'title': 'Incline Dumbbell Press',
      'image': 'lib/images/icon35.png',
      'page': 'InclineDumbbell',
    },
    {
      'title': 'Parallel Bar Dips',
      'image': 'lib/images/icon36.png',
      'page': 'ParallelBar',
    },
    {
      'title': 'Cable Crossover Flys',
      'image': 'lib/images/icon37.png',
      'page': 'CableCrossover',
    },
    {
      'title': 'Dumbbell Flys',
      'image': 'lib/images/icon38.png',
      'page': 'DumbbellFlys',
    },
    {
      'title': 'Dumbbell Pullovers',
      'image': 'lib/images/icon39.png',
      'page': 'DumbbellPullovers',
    },
    {
      'title': 'Push-Ups',
      'image': 'lib/images/icon40.jpg',
      'page': 'PushUps',
    },
    {
      'title': 'Dumbbel Press',
      'image': 'lib/images/icon41.jpg',
      'page': 'DumbbelPress',
    },
    {
      'title': 'Barbell Bench Press',
      'image': 'lib/images/icon42.png',
      'page': 'BarbellBench',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Chest Exercises',
            style: TextStyle(color: Colors.white,fontSize: 24),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.white,
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/images/background_image.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListView.builder(
              padding: const EdgeInsets.all(0),
              itemCount: gogusEgzersizleri.length,
              itemBuilder: (BuildContext context, int index) {
                final exercise = gogusEgzersizleri[index];
                return Card(
                  color: Colors.white.withOpacity(0.0),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.white, width: 2),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(35),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(exercise['image']!),
                      radius: 30,
                    ),
                    title: Text(
                      exercise['title']!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: const Icon(Icons.chevron_right, color: Colors.white),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            switch (exercise['page']) {
                              case 'BenchPresses':
                                return const BenchPresses(
                                  title: 'Bench Presses',
                                  images: [
                                    'lib/images/Bench_Presses_image1.png',
                                    'lib/images/Bench_Presses_image2.png',
                                    'lib/images/Bench_Presses_image3.png',
                                  ],
                                );
                              case 'InclinePresses':
                                return const InclinePresses(
                                  title: 'Incline Presses',
                                  images: [
                                    'lib/images/Incline_Presses_image1.png',
                                    'lib/images/Incline_Presses_image2.png',
                                    'lib/images/Incline_Presses_image3.png',
                                    'lib/images/Incline_Presses_image4.png',
                                  ],
                                );
                              case 'InclineDumbbell':
                                return const InclineDumbbell(
                                  title: 'Incline Dumbbell Press',
                                  images: [
                                    'lib/images/Incline_Dumbbell_image1.png',
                                    'lib/images/Incline_Dumbbell_image2.png',
                                    'lib/images/Incline_Dumbbell_image3.png',
                                  ],
                                );
                              case 'ParallelBar':
                                return const ParallelBar(
                                  title: 'Parallel Bar Dips',
                                  images: [
                                    'lib/images/Parallel_Bar_image1.png',
                                    'lib/images/Parallel_Bar_image2.png',
                                    'lib/images/Parallel_Bar_image3.png',
                                    'lib/images/Parallel_Bar_image4.png',
                                  ],
                                );
                              case 'CableCrossover':
                                return const CableCrossover(
                                  title: 'Cable Crossover Flys',
                                  images: [
                                    'lib/images/Cable_Crossover_image1.png',
                                    'lib/images/Cable_Crossover_image2.png',
                                    'lib/images/Cable_Crossover_image3.png',
                                  ],
                                );
                              case 'DumbbellFlys':
                                return const DumbbellFlys(
                                  title: 'Dumbbell Flys',
                                  images: [
                                    'lib/images/Dumbbell_Flys_image1.png',
                                    'lib/images/Dumbbell_Flys_image2.png',
                                    'lib/images/Dumbbell_Flys_image3.png',
                                  ],
                                );
                              case 'DumbbellPullovers':
                                return const DumbbellPullovers(
                                  title: 'Dumbbell Pullovers',
                                  images: [
                                    'lib/images/Dumbbell_Pullovers_image1.png',
                                    'lib/images/Dumbbell_Pullovers_image2.png',
                                    'lib/images/Dumbbell_Pullovers_image3.png',
                                    'lib/images/Dumbbell_Pullovers_image4.png',
                                  ],
                                );
                              case 'PushUps':
                                return const PushUps(
                                  title: 'Push-Ups',
                                  images: [
                                    'lib/images/Push_Ups_image1.png',
                                    'lib/images/Push_Ups_image2.png',
                                    'lib/images/Push_Ups_image3.png',
                                  ],
                                );
                              case 'DumbbelPress':
                                return const DumbbelPress(
                                  title: 'Dumbbel Press',
                                  images: [
                                    'lib/images/Dumbbel_Press_image1.png',
                                    'lib/images/Dumbbel_Press_image2.png',
                                    'lib/images/Dumbbel_Press_image3.png',
                                    'lib/images/Dumbbel_Press_image4.png',
                                  ],
                                );
                              case 'BarbellBench':
                                return const BarbellBench(
                                  title: 'Barbell Bench Press',
                                  images: [
                                    'lib/images/Barbell_Bench_image1.png',
                                    'lib/images/Barbell_Bench_image2.png',
                                    'lib/images/Barbell_Bench_image3.png',
                                  ],
                                );
                              default:
                                return Container();
                            }
                          },
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class BenchPresses extends StatelessWidget {
  final String title;
  final List<String> images;

  const BenchPresses({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Bench Press is a fundamental exercise aimed at strengthening the chest, triceps, and front shoulder muscles. Here's a brief explanation of how to do it:\n1. Lie down on a horizontal bench for bench press.\n2. Grip the barbell at chest level and fully extend your arms.\n3. Lower the barbell towards your chest while exhaling, slightly bending your elbows.\n4. Push the barbell upward, fully extending your arms while inhaling.\n5. Repeat the exercise to strengthen the chest, triceps, and front shoulder muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InclinePresses extends StatelessWidget {
  final String title;
  final List<String> images;

  const InclinePresses({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Incline Presses is an exercise aimed at targeting the upper chest muscles. Here are the brief steps:\n1. Lie down on an inclined bench.\n2. Grip the barbell at chest level and extend your arms.\n3. Lower the barbell towards your chest.\n4. Push the barbell upward to return to the starting position.\n5. Repeat the exercise to work the upper chest muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InclineDumbbell extends StatelessWidget {
  final String title;
  final List<String> images;

  const InclineDumbbell({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Incline Dumbbell Press is an exercise aimed at strengthening the upper chest muscles. Here are the brief steps:\n1. Lie down on an inclined bench.\n2. Hold a dumbbell in each hand.\n3. Lower the dumbbells towards your chest.\n4. Push the dumbbells upward.\n5. Repeat the exercise to work the upper chest muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ParallelBar extends StatelessWidget {
  final String title;
  final List<String> images;

  const ParallelBar({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Parallel Bar Dips is an exercise aimed at strengthening the triceps, chest, and front shoulder muscles. Here are the brief steps:\n1. Grip the parallel bars behind you and lift your body.\n2. Cross your legs and extend them backward.\n3. Slowly lower your body by bending your elbows.\n4. Feel the stretch in your elbows and push back up.\n5. Repeat the exercise to strengthen the triceps, chest, and front shoulder muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CableCrossover extends StatelessWidget {
  final String title;
  final List<String> images;

  const CableCrossover({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(4.0),
              child: Text(
                "Cable Crossover Flys is an exercise aimed at targeting the chest muscles. Here are the brief steps:\n1. Attach a handle to each side of a cable machine.\n2. Stand with your feet shoulder-width apart and take a small step forward, slightly leaning forward.\n3. Hold each handle out to your sides at chest level with a slight bend in your arms.\n4. Extend your arms outward, bringing the handles together, squeezing your chest.\n5. Hold for a moment at the top, then return to the starting position in a controlled manner.\n6. Repeat the exercise to strengthen the chest muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DumbbellFlys extends StatelessWidget {
  final String title;
  final List<String> images;

  const DumbbellFlys({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Dumbbell Flys, göğüs kaslarını hedeflemek için yapılan bir egzersizdir. İşte kısa adımlar:\n1. Dambıl alın ve her iki elinizle yanlarınıza uzanın.\n2. Kollarınızı hafifçe bükün ve dambılları göğsünüzün üstünde tutun.\n3. Kollarınızı yanlara doğru açın, göğsünüzde gerilim hissedin.\n4. Başlangıç pozisyonuna dönün.\n5. Egzersizi tekrarlayarak göğüs kaslarını çalıştırın.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DumbbellPullovers extends StatelessWidget {
  final String title;
  final List<String> images;

  const DumbbellPullovers({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Dumbbell Pullovers is an exercise aimed at working the chest, back, and triceps muscles. Here are the brief steps:\n1. Grab a dumbbell with both hands and lie on your back.\n2. Lift the dumbbell over your head.\n3. Lower the dumbbell behind your head.\n4. Bring the dumbbell back up.\n5. Repeat the exercise to work the muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PushUps extends StatelessWidget {
  final String title;
  final List<String> images;

  const PushUps({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Push-ups are an exercise that works the chest, arms, shoulders, and triceps muscles using your body weight. Here are the brief steps:\n1. Lie face down on the ground and place your hands shoulder-width apart.\n2. Straighten your arms to push your body up, remembering to keep your elbows locked.\n3. Hold at the top for a moment, then lower your body down with control.\n4. Keep your body straight, and tighten your core and glutes.\n5. Repeat the exercise to strengthen your muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DumbbelPress extends StatelessWidget {
  final String title;
  final List<String> images;

  const DumbbelPress({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Dumbbell Press is an exercise aimed at strengthening the chest muscles. Here are the brief steps:\n1. Grab a set of dumbbells and hold one in each hand.\n2. Lie on your back and hold the dumbbells above your chest.\n3. Press the dumbbells upward, extending your arms fully.\n4. Lower your arms down with control, then lift them back up.\n5. Repeat the exercise to work your chest muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BarbellBench extends StatelessWidget {
  final String title;
  final List<String> images;

  const BarbellBench({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Barbell Bench Press is an exercise aimed at strengthening the chest, triceps, and front shoulder muscles. Here are the brief steps:\n1. Grab a barbell and lie down on a bench.\n2. Grip the barbell at chest level.\n3. Press the barbell upward, fully extending your arms.\n4. Lower the barbell down to your chest with control, then lift it back up.\n5. Repeat the exercise to work the chest, triceps, and front shoulder muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//###############################################

class Shoulders extends StatelessWidget {
  Shoulders({Key? key}) : super(key: key);

  final List<Map<String, String>> shoulderEgzersizleri = [
    {
      'title': 'Back Presses',
      'image': 'lib/images/icon43.png',
      'page': 'BackPresses',
    },
    {
      'title': 'Seated Font Presses',
      'image': 'lib/images/icon44.png',
      'page': 'SeatedFont',
    },
    {
      'title': 'Seated Dumbbell Presses',
      'image': 'lib/images/icon45.png',
      'page': 'SeatedDumbbell',
    },
    {
      'title': 'Low-Pulley Lateral Raises',
      'image': 'lib/images/icon46.png',
      'page': 'LowPulleyLateral',
    },
    {
      'title': 'Upright Rows',
      'image': 'lib/images/icon47.png',
      'page': 'UprightRows',
    },
    {
      'title': 'Dumbbell Rear Deltoid Raises',
      'image': 'lib/images/icon48.png',
      'page': 'DumbbellRear',
    },
    {
      'title': 'Lateral Raises',
      'image': 'lib/images/icon49.png',
      'page': 'LateralRaises',
    },
    {
      'title': 'Front Raises',
      'image': 'lib/images/icon50.png',
      'page': 'FrontRaises',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Shoulders Exercises',
            style: TextStyle(color: Colors.white,fontSize: 24),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.white,
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/images/background_image.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListView.builder(
              padding: const EdgeInsets.all(0),
              itemCount: shoulderEgzersizleri.length,
              itemBuilder: (BuildContext context, int index) {
                final exercise = shoulderEgzersizleri[index];
                return Card(
                  color: Colors.white.withOpacity(0.0),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.white, width: 2),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(35),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(exercise['image']!),
                      radius: 30,
                    ),
                    title: Text(
                      exercise['title']!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: const Icon(Icons.chevron_right, color: Colors.white),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            switch (exercise['page']) {
                              case 'BackPresses':
                                return const BackPresses(
                                  title: 'Back Presses',
                                  images: [
                                    'lib/images/Back_Presses_image1.png',
                                    'lib/images/Back_Presses_image2.png',
                                    'lib/images/Back_Presses_image3.png',
                                  ],
                                );
                              case 'SeatedFont':
                                return const SeatedFont(
                                  title: 'Seated Font Presses',
                                  images: [
                                    'lib/images/Seated_Font_image1.png',
                                    'lib/images/Seated_Font_image2.png',
                                    'lib/images/Seated_Font_image3.png',
                                  ],
                                );
                              case 'SeatedDumbbell':
                                return const SeatedDumbbell(
                                  title: 'Seated Dumbbell Presses',
                                  images: [
                                    'lib/images/Seated_Dumbbell_image1.png',
                                    'lib/images/Seated_Dumbbell_image2.png',
                                    'lib/images/Seated_Dumbbell_image3.png',
                                  ],
                                );
                              case 'LowPulleyLateral':
                                return const LowPulleyLateral(
                                  title: 'Low-Pulley Lateral Raises',
                                  images: [
                                    'lib/images/Low_Pulley_Lateral_image1.png',
                                    'lib/images/Low_Pulley_Lateral_image2.png',
                                    'lib/images/Low_Pulley_Lateral_image3.png',
                                    'lib/images/Low_Pulley_Lateral_image4.png',
                                    'lib/images/Low_Pulley_Lateral_image5.png',
                                  ],
                                );
                              case 'UprightRows':
                                return const UprightRows(
                                  title: 'Upright Rows',
                                  images: [
                                    'lib/images/Upright_Rows_image1.png',
                                    'lib/images/Upright_Rows_image2.png',
                                    'lib/images/Upright_Rows_image3.png',
                                  ],
                                );
                              case 'DumbbellRear':
                                return const DumbbellRear(
                                  title: 'Dumbbell Rear Deltoid Raises',
                                  images: [
                                    'lib/images/Dumbbell_Rear_image1.png',
                                    'lib/images/Dumbbell_Rear_image2.png',
                                    'lib/images/Dumbbell_Rear_image3.png',
                                    'lib/images/Dumbbell_Rear_image4.png',
                                  ],
                                );
                              case 'LateralRaises':
                                return const LateralRaises(
                                  title: 'Lateral Raises',
                                  images: [
                                    'lib/images/Lateral_Raises_image1.png',
                                    'lib/images/Lateral_Raises_image2.png',
                                    'lib/images/Lateral_Raises_image3.png',
                                    'lib/images/Lateral_Raises_image4.png',
                                  ],
                                );
                              case 'FrontRaises':
                                return const FrontRaises(
                                  title: 'Front Raises',
                                  images: [
                                    'lib/images/Front_Raises_image1.png',
                                    'lib/images/Front_Raises_image2.png',
                                    'lib/images/Front_Raises_image3.png',
                                    'lib/images/Front_Raises_image4.png',
                                  ],
                                );
                              default:
                                return Container();
                            }
                          },
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class BackPresses extends StatelessWidget {
  final String title;
  final List<String> images;

  const BackPresses({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Shoulder Press is an exercise aimed at strengthening the shoulder muscles. Here are the brief steps:\n1. Stand with your feet shoulder-width apart and grab a dumbbell set or a barbell.\n2. Hold the dumbbell or barbell over your shoulders.\n3. Press the dumbbell or barbell upward, lifting it above your head.\n4. Lower your arms down with control, then lift them back up.\n5. Repeat the exercise to work your shoulder muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SeatedFont extends StatelessWidget {
  final String title;
  final List<String> images;

  const SeatedFont({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Seated Front Shoulder Press is an exercise aimed at strengthening the front shoulder muscles. Here are the brief steps:\n1. Grab a dumbbell set or a barbell and sit on a bench.\n2. Hold the dumbbell or barbell in front of your shoulders.\n3. Press the dumbbell or barbell upward, lifting it above your head.\n4. Lower your arms down with control, then lift them back up.\n5. Repeat the exercise to work your front shoulder muscles",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SeatedDumbbell extends StatelessWidget {
  final String title;
  final List<String> images;

  const SeatedDumbbell({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Seated Dumbbell Press is an exercise aimed at strengthening the shoulder muscles. Here are the brief steps:\n1. Grab a dumbbell set and sit on a bench.\n2. Hold a dumbbell in each hand and keep your arms by your shoulders.\n3. Press the dumbbells upward, extending your arms fully.\n4. Lower your arms down with control, then lift them back up.\n5. Repeat the exercise to work your shoulder muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LowPulleyLateral extends StatelessWidget {
  final String title;
  final List<String> images;

  const LowPulleyLateral({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Low-Pulley Lateral Raises is an exercise aimed at strengthening the lateral shoulder muscles. Here are the brief steps:\n1. Attach a dumbbell handle to a low pulley and set the pulley to the lowest position.\n2. Stand with your feet shoulder-width apart and grip the handle with your right hand.\n3. Raise the handle upward and outward from your shoulder with your right hand.\n4. Hold for a moment at the top, then return to the starting position with control.\n5. Repeat the exercise to strengthen the lateral shoulder muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UprightRows extends StatelessWidget {
  final String title;
  final List<String> images;

  const UprightRows({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Upright Rows is an exercise aimed at strengthening the shoulder and upper back muscles. Here are the brief steps:\n1. Stand with your feet shoulder-width apart and grab a dumbbell or barbell.\n2. Hold the dumbbell or barbell with your arms extended in front of your body.\n3. Raise your arms upward, bending your elbows outward.\n4. Hold for a moment at the top, then return to the starting position with control.\n5. Repeat the exercise to work the shoulder and upper back muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DumbbellRear extends StatelessWidget {
  final String title;
  final List<String> images;

  const DumbbellRear({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 23),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(4.0),
              child: Text(
                "Dumbbell Rear Deltoid Raises is an exercise aimed at strengthening the rear shoulder muscles. Here are the brief steps:\n1. Stand with your feet shoulder-width apart and grab a dumbbell set.\n2. Hold the dumbbells in both hands and stand in front of your body.\n3. Keep your waist slightly bent and lean forward.\n4. Lift the dumbbells out to the sides, pulling your shoulders back.\n5. Hold for a moment at the top, then return to the starting position with control.\n6. Repeat the exercise to strengthen the rear shoulder muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LateralRaises extends StatelessWidget {
  final String title;
  final List<String> images;

  const LateralRaises({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(4.0),
              child: Text(
                "Lateral Raises is an exercise aimed at strengthening the lateral shoulder muscles. Here are the brief steps:\n1. Stand with your feet shoulder-width apart and grab a dumbbell set.\n2. Hold the dumbbells in both hands and stand at your sides.\n3. Slightly bend your arms and raise the dumbbells out to the sides.\n4. Hold for a moment when the dumbbells reach shoulder level, then return to the starting position with control.\n5. Repeat the exercise to strengthen the lateral shoulder muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FrontRaises extends StatelessWidget {
  final String title;
  final List<String> images;

  const FrontRaises({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(6.0),
              child: Text(
                "Front Raises is an exercise aimed at strengthening the front shoulder muscles. Here are the brief steps:\n1. Stand with your feet shoulder-width apart and grab a dumbbell set.\n2. Hold the dumbbells in both hands and stand in front of your body.\n3. Slightly bend your arms and raise the dumbbells forward.\n4. Hold for a moment when the dumbbells reach shoulder level, then return to the starting position with control.\n5. Repeat the exercise to strengthen the front shoulder muscles.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//###############################################

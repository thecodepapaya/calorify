import 'package:calorify/app.dart';
import 'package:calorify/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:health/health.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const CalorifyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calorify',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Global Health instance
          final health = Health();
          // configure the health plugin before use.
          await health.configure();

          // define the types to get
          var types = [
            HealthDataType.TOTAL_CALORIES_BURNED,
            HealthDataType.NUTRITION,
          ];

          // requesting access to the data types before reading them
          bool requested = await health.requestAuthorization(
            [HealthDataType.TOTAL_CALORIES_BURNED],
            permissions: [HealthDataAccess.READ],
          );

          final hasPermission = await health.hasPermissions([
            HealthDataType.HEADACHE_MILD,
          ]);

          final now = DateTime.now();

          // // fetch health data from the last 24 hours
          // List<HealthDataPoint> healthData = await health
          //     .getHealthDataFromTypes(
          //       startTime: now.subtract(Duration(days: 1)),
          //       endTime: now,
          //       types: types,
          //     );

          // // request permissions to write steps and blood glucose
          // var permissions = [
          //   HealthDataAccess.READ,
          //   HealthDataAccess.READ_WRITE,
          // ];
          // await health.requestAuthorization(types, permissions: permissions);

          // // write steps and blood glucose
          // bool success = await health.writeMeal(
          //   mealType: MealType.BREAKFAST,
          //   caloriesConsumed: 800,
          //   startTime: now.subtract(Duration(minutes: 1)),
          //   endTime: now,
          // );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

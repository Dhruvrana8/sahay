import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:sahay/screens/FrontPage/frontPage.dart';
import 'package:sahay/screens/Home%20Screen/Donoer%20Screen/List%20Items/list_item_food.dart';
import 'package:sahay/screens/Home%20Screen/Donoer%20Screen/donor_Screen.dart';
import 'package:sahay/screens/Home%20Screen/Donoer%20Screen/widget/camera_screen.dart';
import 'package:sahay/screens/Home%20Screen/Ngo%20Home%20screen/nog_home_screen.dart';
import 'package:sahay/screens/Login%20Screen/donorlogin/donorLogin1.dart';
import 'package:sahay/screens/Login%20Screen/ngoLogin/ngoLogin1.dart';
import 'package:sahay/screens/Splash%20Screen/splash_screen.dart';
import 'package:sahay/widgets/feedback/donor%20feedback.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  var cameras;
  var firstCamera;
  @override
  void initState() {
    super.initState();
    CameraPermision();
  }

  Future<void> CameraPermision() async {
    WidgetsFlutterBinding.ensureInitialized();
    // Obtain a list of the available cameras on the device.
    cameras = await availableCameras();
    // Get a specific camera from the list of available cameras.
    firstCamera = cameras.first;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sahay App',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      routes: {
        "/": (context) => const SplashScreen(),
        "/FrontPage": (context) => const FrontPage(),
        "/donor_login/donorlogin1": (context) => donorLogin1(),
        "/ngo_login/ngologin1": (context) => ngoLogin1(),
        "/ngo_homescreen": (context) => const NgoHomeScreen(),
        "/donor_homescreen": (context) => const DonorHomeScreen(),
        "/camera_screen": ((context) => TakePictureScreen(
              camera: firstCamera,
            )),
        "/donate/food": (context) => const ListItemFood(),
        "/feedback/donor_feedback": (context) => const donorfeedback(),
        "/feedback/ngo_feedback": (context) => const donorfeedback(),
      },
    );
  }
}

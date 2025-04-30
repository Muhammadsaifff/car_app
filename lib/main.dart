import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

void main() {
  timeDilation = 5.0;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car App with Hero Animation',
      home: CarListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Car {
  final String name;
  final String imagePath;
  final String description;

  Car({required this.name, required this.imagePath, required this.description});
}

class CarListScreen extends StatelessWidget {
  CarListScreen({super.key});

final List<Car> cars = [
  Car(
    name: 'Toyota Supra',
    imagePath: 'assets/images/supra.png',
    description:
        'The Toyota Supra is a legendary sports car that first debuted in 1978 and quickly gained cult status thanks to its inline-six turbocharged engine, rear-wheel drive dynamics, and distinctive styling. Its fourth generation (A80) became a pop culture icon through motorsports and the Fast & Furious franchise. The current fifth-generation Supra (A90), developed in collaboration with BMW, blends Japanese design with German engineering, offering advanced handling and modern tech in a compact, aggressive coupe.',
  ),
  Car(
    name: 'Ford Mustang',
    imagePath: 'assets/images/mustang.png',
    description:
        'The Ford Mustang is a symbol of American automotive freedom and performance. Introduced in 1964, it helped define the "pony car" segment and has since evolved through generations while retaining its core identity. With powerful V8 engines, an unmistakable design, and a thunderous exhaust note, the Mustang offers a thrilling driving experience. It’s available in various trims including the track-ready Shelby GT500, making it a versatile option for muscle car enthusiasts.',
  ),
  Car(
    name: 'Nissan GTR',
    imagePath: 'assets/images/gtr.png',
    description:
        'The Nissan GT-R, often referred to by its nickname "Godzilla", is a high-performance beast blending brute force with precision engineering. It features a hand-built 3.8-liter twin-turbo V6, ATTESA all-wheel drive system, and a dual-clutch transmission. First introduced in 2007, the R35 generation GT-R redefined affordable supercar territory with blistering acceleration, razor-sharp handling, and cutting-edge aerodynamics. It remains one of the most technologically advanced sports cars on the market.',
  ),
  Car(
    name: 'Lamborghini Huracán',
    imagePath: 'assets/images/huracan.png',
    description:
        'The Lamborghini Huracán is a striking Italian supercar powered by a naturally aspirated 5.2-liter V10 engine, delivering a visceral driving experience. Introduced in 2014 as the successor to the Gallardo, it offers breathtaking performance with 0–100 km/h in under 3 seconds. With aggressive lines, all-wheel-drive capability (in most variants), and luxurious interiors, the Huracán blends performance, style, and daily usability. Available in several trims, including rear-wheel drive and Spyder versions.',
  ),
  Car(
    name: 'BMW M4',
    imagePath: 'assets/images/m4.png',
    description:
        'The BMW M4 is the high-performance coupe variant of the 4 Series, developed by BMW’s M division. It boasts a turbocharged inline-six engine, near-perfect weight distribution, and track-tuned suspension. Known for its balance between everyday comfort and motorsport heritage, the M4 features aggressive styling, premium interior finishes, and cutting-edge driver aids. The Competition model offers enhanced power, dynamic driving modes, and optional xDrive all-wheel drive for maximum control.',
  ),
  Car(
    name: 'Chevrolet Corvette C8',
    imagePath: 'assets/images/corvette.png',
    description:
        'The Chevrolet Corvette C8 marks a revolutionary shift in the Corvette’s lineage as the first mid-engine variant in the model’s 60+ year history. Its naturally aspirated 6.2-liter V8 sits behind the driver, providing exotic-car handling and acceleration. The C8 delivers supercar performance at a sports car price, with a bold, futuristic design and a luxurious cockpit. It comes equipped with modern infotainment, magnetic ride control, and launch control, redefining what a Corvette can be.',
  ),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cars List'),
              backgroundColor: Color.fromARGB(255, 155, 156, 155),),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          final car = cars[index];
          return ListTile(
            leading: Hero(
              tag: car.imagePath,
              child: Image.asset(car.imagePath, width: 60, height: 60),
            ),
            title: Text(
              car.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => CarDetailScreen(car: car)),
              );
            },
          );
        },
      ),
    );
  }
}

class CarDetailScreen extends StatelessWidget {
  final Car car;

  const CarDetailScreen({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(car.name),
              backgroundColor: Color.fromARGB(255, 155, 156, 155),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: car.imagePath,
            child: Image.asset(
              car.imagePath,
              width: 450,
              height: 220,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              car.description,
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}


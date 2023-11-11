import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  //String clickText = 'Clicks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Functions'),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            )
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //const Padding(padding: EdgeInsets.all(50)),
              Container(
                margin: const EdgeInsets.all(50),
                width: 200,
                height: 200,
                child: const FlutterLogo(),
              ),
              Text(
                '$clickCounter',
                style:
                    const TextStyle(fontSize: 160, fontWeight: FontWeight.w100, color: Colors.red),
              ),
              Text('Click${clickCounter == 1 ? '' : 's'}',
                  style: const TextStyle(fontSize: 25, color: Colors.red))
              // if (clickCounter ==  1)
              // const Text('Click', style: TextStyle(fontSize: 25)),

              // if (clickCounter !=  1)
              // const Text('Click', style: TextStyle(fontSize: 25)),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.refresh_rounded,
              onPressed: () {
                clickCounter = 0;
                setState(() { });
              },
              ),
            const SizedBox(height: 30),
            CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                if (clickCounter == 0 ) return;
                clickCounter--;
                setState(() { });
              },
              ),
            const SizedBox(height: 30),
            CustomButton(
              icon: Icons.plus_one_outlined,
              onPressed: () {
                clickCounter++;
                setState(() { });
              },
              ),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;  

  const CustomButton({
    super.key, 
    required this.icon, 
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      elevation: 10,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Stack(
        children: <Widget>[
          Positioned.fill(child: Image.asset('images/cat.jpg', fit: BoxFit.fill,)),
          Container(
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.black.withAlpha(0),
                    Colors.black26,
                    Colors.black87,
                  ],
                ),
              ),
              padding: const EdgeInsets.fromLTRB(25, 0, 0, 40),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(
                  'Meow',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                      ),
                ),
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 10)),
                Text(
                  'Description orange cat',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white),
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}

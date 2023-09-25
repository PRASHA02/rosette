import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
      home: OnTry(),
      debugShowCheckedModeBanner: false,
    ));

class OnTry extends StatelessWidget {
  const OnTry({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildContainer(
                imageAsset: 'assets/food/img1.png',
                text: 'Fruits',
              ),
              _buildContainer(
                imageAsset: 'assets/food/img2.png',
                text: 'Vegetables',
              ),
              _buildContainer(
                imageAsset: 'assets/food/img3.png',
                text: 'Snacks',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContainer({required String imageAsset, required String text}) {
    return Container(
      height: 90,
      width: 100,
      decoration: BoxDecoration(
        color: Color(0xFF00F1FF),
        borderRadius: BorderRadius.all(Radius.circular(35)),
      ),
      child: Center(
        child: Column(
          children: [
            Transform.scale(
              scale: 0.5,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 10.0,
                ),
                child: Transform.translate(
                  offset: Offset(0, -30.0),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment.topCenter,
                        image: AssetImage(imageAsset),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40.0),
            Text(
              text,
              style: GoogleFonts.signika().copyWith(
                color: Color(0xFF4D3200),
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
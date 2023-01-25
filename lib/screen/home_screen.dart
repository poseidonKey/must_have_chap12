import 'package:flutter/material.dart';
import 'package:must_have_chap12_video_call/screen/cam_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(child: _Logo()),
              const Expanded(child: _Image()),
              Expanded(child: _EntryButton()),
            ],
          ),
        ),
      ),
    );
  }
}

class _EntryButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: ((context) => const CamScreen()),
              ),
            );
          },
          child: const Text("입장하기"),
        ),
      ],
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'asset/img/home_img.png',
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.shade300,
                blurRadius: 12,
                spreadRadius: 2,
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.videocam),
              SizedBox(
                width: 12,
              ),
              Text(
                "LIVE",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  letterSpacing: 4,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

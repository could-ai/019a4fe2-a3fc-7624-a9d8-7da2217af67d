import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasks'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Watch Ads and Earn!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Your Points: 1500',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Placeholder for showing an ad
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Showing Ad...')),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              ),
              child: const Text('Watch Ad'),
            ),
          ],
        ),
      ),
    );
  }
}

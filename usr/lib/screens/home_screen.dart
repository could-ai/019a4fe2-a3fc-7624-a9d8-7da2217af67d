import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Big Income 24'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            _buildMenuItem(context, 'Tasks', Icons.task_alt, '/tasks'),
            _buildMenuItem(context, 'Withdraw', Icons.account_balance_wallet, '/withdraw'),
            _buildMenuItem(context, 'Refer', Icons.group_add, '/refer'),
            _buildMenuItem(context, 'Profile', Icons.person, '/profile'),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String title, IconData icon, String route) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () {
          // Check if the route exists before navigating
          if (ModalRoute.of(context)?.settings.name != route) {
             if (Navigator.canPop(context) && route == '/refer' || route == '/profile') {
                // For now, these routes are not created, show a snackbar
                 ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Coming soon!')),
                );
             } else {
                Navigator.pushNamed(context, route);
             }
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Theme.of(context).primaryColor),
            const SizedBox(height: 10),
            Text(title, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

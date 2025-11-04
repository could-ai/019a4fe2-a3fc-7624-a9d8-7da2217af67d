import 'package:flutter/material.dart';

class WithdrawScreen extends StatelessWidget {
  const WithdrawScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Withdraw'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Select Payment Method',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildPaymentMethod(context, 'Bikash'),
                _buildPaymentMethod(context, 'Nagad'),
              ],
            ),
            const SizedBox(height: 30),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Amount',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.attach_money),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Account Number',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone_android),
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                 ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Withdrawal request sent!')),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text('Submit Request'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentMethod(BuildContext context, String name) {
    return ChoiceChip(
      label: Text(name),
      selected: true, // Placeholder
      onSelected: (selected) {},
      avatar: const Icon(Icons.payment),
    );
  }
}

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: WalletScreen());
  }
}

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  final Wallet wallet = Wallet();

  final TextEditingController amountController = TextEditingController();

  String message = "Welcome! Your wallet is ready.";

  void depositMoney() {
    double amount = double.tryParse(amountController.text) ?? 0;

    setState(() {
      message = wallet.deposit(amount);
      amountController.clear();
    });
  }

  void withdrawMoney() {
    double amount = double.tryParse(amountController.text) ?? 0;

    setState(() {
      message = wallet.withdraw(amount);
      amountController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("My Wallet"),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Wallet Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: const LinearGradient(
                  colors: [Colors.blue, Colors.indigo],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Total Balance",
                    style: TextStyle(color: Colors.white70),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    "PKR ${wallet.balance.toStringAsFixed(0)}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Amount TextField
            TextField(
              controller: amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter amount",
                prefixIcon: const Icon(Icons.money),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Buttons
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: depositMoney,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.all(16),
                    ),
                    child: const Text("Deposit"),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: ElevatedButton(
                    onPressed: withdrawMoney,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.all(16),
                    ),
                    child: const Text("Withdraw"),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Message Box
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(message, style: const TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}

class Wallet {
  double _balance = 10450;

  double get balance => _balance;

  String deposit(double amount) {
    if (amount <= 0) {
      return "Enter valid amount";
    }

    _balance += amount;
    return "Deposited PKR ${amount.toStringAsFixed(0)}";
  }

  String withdraw(double amount) {
    if (amount <= 0) {
      return "Enter valid amount";
    }

    if (amount > _balance) {
      return "Insufficient balance";
    }

    _balance -= amount;
    return "Withdrawn PKR ${amount.toStringAsFixed(0)}";
  }
}

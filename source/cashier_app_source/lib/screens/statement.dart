import 'package:cashier_app_source/screens/welcome.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';

class StatementScreen extends StatelessWidget {
  const StatementScreen({super.key});

  final Map<String, List<Map<String, dynamic>>> statementData = const {
    "April 8": [
      {"description": "Coffee Shop", "amount": -5.50, "isDebit": true},
      {"description": "Salary Deposit", "amount": 1200.00, "isDebit": false},
      {"description": "Groceries", "amount": -45.99, "isDebit": true},
      {"description": "Gas Station", "amount": -30.00, "isDebit": true},
    ],
    "April 7": [
      {"description": "Online Subscription", "amount": -12.99, "isDebit": true},
      {"description": "ATM Withdrawal", "amount": -100.00, "isDebit": true},
      {"description": "Dinner Out", "amount": -65.00, "isDebit": true},
      {"description": "Taxi Fare", "amount": -15.20, "isDebit": true},
      {"description": "App Purchase", "amount": -4.99, "isDebit": true},
    ],
    "April 6": [
      {"description": "Refund from Store A", "amount": 25.00, "isDebit": false},
      {"description": "Internet Bill", "amount": -79.99, "isDebit": true},
      {"description": "Movie Tickets", "amount": -22.00, "isDebit": true},
      {"description": "Lunch Payment", "amount": -11.50, "isDebit": true},
      {"description": "Online Course Fee", "amount": -199.00, "isDebit": true},
    ],
    "April 5": [
      {"description": "Utility Payment", "amount": -85.00, "isDebit": true},
      {"description": "Birthday Gift", "amount": -40.00, "isDebit": true},
      {"description": "Pet Food", "amount": -18.00, "isDebit": true},
      {"description": "Online Gaming", "amount": -9.99, "isDebit": true},
      {"description": "Bank Fee", "amount": -5.00, "isDebit": true},
    ],
    "April 4": [
      {
        "description": "Deposit from Freelance",
        "amount": 500.00,
        "isDebit": false,
      },
      {"description": "Haircut", "amount": -35.00, "isDebit": true},
      {"description": "Books Purchase", "amount": -29.99, "isDebit": true},
    ],
  };

  // Helper Widget to build a single transaction row
  Widget _buildTransactionTile(
    Map<String, dynamic> transaction,
    Color brandWhite,
  ) {
    bool isDebit = transaction['isDebit'];
    Color amountColor = isDebit ? Colors.red : Colors.green;
    String sign = isDebit ? '-' : '+';

    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        transaction['description'] as String,
        style: TextStyle(color: brandWhite, fontSize: 16),
      ),
      subtitle: const Text('Details...', style: TextStyle(color: Colors.grey)),
      trailing: Text(
        '$sign\$${(transaction['amount'] as double).abs().toStringAsFixed(2)}',
        style: TextStyle(color: amountColor, fontWeight: FontWeight.bold),
      ),
    );
  }

  // Helper function to generate the entire list of widgets (Headers, Transactions, Separators)
  List<Widget> _buildListWidgets(int brandWhite) {
    List<Widget> listWidgets = [];

    // Get the list of dates/keys in order
    List<String> dates = statementData.keys.toList();

    for (int i = 0; i < dates.length; i++) {
      String date = dates[i];
      List<Map<String, dynamic>> transactions = statementData[date]!;

      // 1. ADD DATE HEADER
      listWidgets.add(
        Padding(
          padding: const EdgeInsets.only(top: 15.0, bottom: 5.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              date,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Color(brandWhite),
              ),
            ),
          ),
        ),
      );

      // 2. ADD TRANSACTIONS
      for (int j = 0; j < transactions.length; j++) {
        listWidgets.add(
          _buildTransactionTile(transactions[j], Color(brandWhite)),
        ); // Transaction Tile

        // Add a subtle DIVIDER between transactions within the SAME date group
        if (j < transactions.length - 1) {
          listWidgets.add(
            const Divider(color: Colors.white12, height: 1, thickness: 1),
          );
        }
      }

      // 3. ADD PROMINENT SEPARATOR DIVIDER BETWEEN DATE GROUPS (for all but the last date)
      if (i < dates.length - 1) {
        listWidgets.add(
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Divider(
              color: Colors.white38, // A thicker/more prominent divider
              height: 2,
              thickness: 2,
            ),
          ),
        );
      }
    }

    return listWidgets;
  }

  @override
  Widget build(BuildContext bc) {
    return Scaffold(
      backgroundColor: Color(brandBlack),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 1. BACK BUTTON
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () => Navigator.pop(bc),
                  icon: const Icon(Icons.arrow_back),
                  color: Color(brandWhite),
                ),
              ),

              // 2. HEADER TEXT
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 50),
                child: Text(
                  "Statement",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Color(primaryColor),
                  ),
                ),
              ),

              // 3. THE LIST: Expanded to use remaining space and enable scrolling
              Expanded(
                child: ListView(children: _buildListWidgets(brandWhite)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

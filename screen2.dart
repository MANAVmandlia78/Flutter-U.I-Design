import 'package:flutter/material.dart';

class AddTransactionScreen extends StatefulWidget {
  const AddTransactionScreen({super.key});

  @override
  State<AddTransactionScreen> createState() => _AddTransactionScreenState();
}

class _AddTransactionScreenState extends State<AddTransactionScreen> {
  String paymentType = "Cash";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title Row
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Icon(Icons.arrow_back, color: Colors.black54),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    "Add transaction",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),

              // Amount Box
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  "Amount\n\$12.00",
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
              ),
              const SizedBox(height: 20),

              // Category Box
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.restaurant_menu, color: Colors.orange),
                    SizedBox(width: 8),
                    Text(
                      "Food",
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_down, color: Colors.black54),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              // Payment Type Label
              const Text(
                "Payment Type",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),

              // Payment Options
              GestureDetector(
                onTap: () => setState(() => paymentType = "Cash"),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: paymentType == "Cash"
                          ? Colors.green
                          : Colors.grey.shade300,
                    ),
                    borderRadius: BorderRadius.circular(30),
                    color: paymentType == "Cash"
                        ? Colors.green.shade50
                        : Colors.transparent,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        paymentType == "Cash"
                            ? Icons.radio_button_checked
                            : Icons.radio_button_off,
                        color: paymentType == "Cash"
                            ? Colors.green
                            : Colors.grey,
                      ),
                      const SizedBox(width: 12),
                      const Text("Cash", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => setState(() => paymentType = "Credit/Debit Card"),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: paymentType == "Credit/Debit Card"
                          ? Colors.green
                          : Colors.grey.shade300,
                    ),
                    borderRadius: BorderRadius.circular(30),
                    color: paymentType == "Credit/Debit Card"
                        ? Colors.green.shade50
                        : Colors.transparent,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        paymentType == "Credit/Debit Card"
                            ? Icons.radio_button_checked
                            : Icons.radio_button_off,
                        color: paymentType == "Credit/Debit Card"
                            ? Colors.green
                            : Colors.grey,
                      ),
                      const SizedBox(width: 12),
                      const Text("Credit/Debit Card", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => setState(() => paymentType = "Check"),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: paymentType == "Check"
                          ? Colors.green
                          : Colors.grey.shade300,
                    ),
                    borderRadius: BorderRadius.circular(30),
                    color: paymentType == "Check"
                        ? Colors.green.shade50
                        : Colors.transparent,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        paymentType == "Check"
                            ? Icons.radio_button_checked
                            : Icons.radio_button_off,
                        color: paymentType == "Check"
                            ? Colors.green
                            : Colors.grey,
                      ),
                      const SizedBox(width: 12),
                      const Text("Check", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),

              const Spacer(),

              // Bottom Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                        child: Text(
                          "Draft",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      margin: const EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                        child: Text(
                          "Add",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

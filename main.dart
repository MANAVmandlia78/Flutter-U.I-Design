import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(fontFamily: 'Roboto'),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ✅ Data for the chart
    final Map<String, double> dataMap = {"Income": 8429, "Spent": 3621};
    final List<Color> colorList = [Colors.green.shade300, Colors.red.shade300];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("U.I Design")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Hello",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "David",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.notifications_none),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: () {}, child: Text("All")),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Daily"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Weekly"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Monthly"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Yearly"),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            // ✅ Container with Income / Spent + Pie Chart
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 208, 240, 224),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Income / Spent Text
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 5,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text("Income"),
                          ],
                        ),
                        const Text(
                          "\$ 8,429",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Container(
                              width: 5,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text("Spent"),
                          ],
                        ),
                        const Text(
                          "\$ 3,621",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    // ✅ Pie Chart
                    SizedBox(
                      width: 120,
                      height: 120,
                      child: PieChart(
                        dataMap: dataMap,
                        colorList: colorList,
                        animationDuration: const Duration(milliseconds: 800),
                        chartType: ChartType.ring,
                        ringStrokeWidth: 20,
                        baseChartColor: Colors.grey[200]!,
                        chartValuesOptions: const ChartValuesOptions(
                          showChartValues: false,
                        ),
                        legendOptions: const LegendOptions(showLegends: false),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ✅ Transactions Section
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Recent Transactions"),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("See All >"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.orange[100],
                          child: Icon(Icons.fastfood, color: Colors.brown),
                        ),
                        title: Text(
                          "Food",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text("Card\nMar 07, 2023"),
                        trailing: Text(
                          "\$-12",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.green[100],
                          child: Icon(Icons.money, color: Colors.black),
                        ),
                        title: Text(
                          "Salary",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text("Bank Account\nMar 07, 2023"),
                        trailing: Text(
                          "\$6800",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.purple[100],
                          child: Icon(Icons.movie, color: Colors.black),
                        ),
                        title: Text(
                          "Entertainment",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text("Card\nMar 07, 2023"),
                        trailing: Text(
                          "\$-8",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: CircleAvatar(
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green[200],
          child: Icon(Icons.add, color: Colors.black),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(icon: const Icon(Icons.home), onPressed: () {}),
              IconButton(icon: const Icon(Icons.swap_horiz), onPressed: () {}),
              const SizedBox(width: 40),
              IconButton(
                icon: const Icon(Icons.account_balance_wallet),
                onPressed: () {},
              ),
              IconButton(icon: const Icon(Icons.person), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
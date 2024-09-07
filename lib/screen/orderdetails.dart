import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/widgets.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  String selectedFilling = 'Full';
  String selectedMilk = 'Full Cream Milk';
  String selectedSugar = 'Sugar X2';
  bool isHighPriority = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/coffee.png',
            fit: BoxFit.fill,
            height: 300,
            width: double.infinity,
          ),
          Expanded(
            child: Stack(
              children: [
                 Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/background.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/beans.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned.fill(
                  top: 0,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        color: Colors.black.withOpacity(0.4),
                      ),
                    ),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 80),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Latte',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        '1',
                                        style: TextStyle(color: Colors.grey.shade800),
                                      ),
                                      const SizedBox(width: 4),
                                      Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.grey.shade800,
                                        size: 18,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                const Text(
                                  '4.9 ★ (458)',
                                  style: TextStyle(fontSize: 12),
                                ),
                                const SizedBox(width: 8),
                                SizedBox(
                                  height: 12,
                                  child: Image.asset("assets/icons/veg.png"),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Caffe latte is a milk coffee made up of one or two shots of espresso, steamed milk, and a thin layer of frothed milk on top.',
                              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                            ),
                            const SizedBox(height: 12),
                            const Text(
                              'Choice of Cup Filling',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                _buildSelectionButton('Full', selectedFilling == 'Full'),
                                _buildSelectionButton('1/2 Full', selectedFilling == '1/2 Full'),
                                _buildSelectionButton('3/4 Full', selectedFilling == '3/4 Full'),
                                _buildSelectionButton('1/4 Full', selectedFilling == '1/4 Full'),
                              ],
                            ),
                            const SizedBox(height: 12),
                            const Text(
                              'Choice of Milk',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildToggleOption('Skim Milk', selectedMilk == 'Skim Milk'),
                                    _buildToggleOption('Almond Milk', selectedMilk == 'Almond Milk'),
                                    _buildToggleOption('Full Cream Milk', selectedMilk == 'Full Cream Milk'),
                                    _buildToggleOption('Lactose Free Milk', selectedMilk == 'Lactose Free Milk'),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildToggleOption('Soy Milk', selectedMilk == 'Soy Milk'),
                                    _buildToggleOption('Cream Milk', selectedMilk == 'Cream Milk'),
                                    _buildToggleOption('Oat Milk', selectedMilk == 'Oat Milk'),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            const Text(
                              'Choice of Sugar',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildToggleOption('Sugar X1', selectedSugar == 'Sugar X1'),
                                    _buildToggleOption('Sugar X2', selectedSugar == 'Sugar X2'),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildToggleOption('1/2 Sugar', selectedSugar == '1/2 Sugar'),
                                    _buildToggleOption('No Sugar', selectedSugar == 'No Sugar'),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  right: 20,
                  bottom: 20,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          spreadRadius: 1,
                          blurRadius: 15,
                          offset: Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Checkbox(
                          value: isHighPriority,
                          onChanged: (value) {
                            setState(() {
                              isHighPriority = value!;
                            });
                          },
                        ),
                        const Text('High Priority'),
                        const Icon(Icons.priority_high_sharp, color: Colors.red),
                        const Spacer(),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                          ),
                          child: const Text('Submit'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSelectionButton(String text, bool isSelected) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              selectedFilling = text;
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: isSelected ? Colors.green : Colors.grey[300],
            foregroundColor: isSelected ? Colors.white : Colors.black,
          ),
          child: Text(text),
        ),
      ),
    );
  }

  Widget _buildToggleOption(String text, bool isSelected) {
    return Row(
      children: [
        Switch(
          value: isSelected,
          onChanged: (value) {
            setState(() {
              if (text.contains('Milk')) {
                selectedMilk = value ? text : selectedMilk;
              } else {
                selectedSugar = value ? text : selectedSugar;
              }
            });
          },
          activeColor: Colors.green,
        ),
        Text(text),
      ],
    );
  }
}

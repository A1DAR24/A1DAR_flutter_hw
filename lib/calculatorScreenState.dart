import 'package:a1dar/main.dart';
import 'package:flutter/material.dart';

class CalculatorScreenState extends State<CalculatorScreen> {
  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();

  double result = 0;

  double get firstValue => double.tryParse(firstController.text) ?? 0;
  double get secondValue => double.tryParse(secondController.text) ?? 0;

  void resetCalculator() {
    setState(() {
      firstController.clear();
      secondController.clear();
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Мини калькулятор', 
      style: TextStyle(color: Colors.white),), 
      centerTitle: true, 
      backgroundColor: Colors.deepOrange,),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Поле ввода первого числа
            TextField(
              controller: firstController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Первое число",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 16),

            //Поле ввода второго числа
            TextField(
              controller: secondController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Второе число",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 16),

            //Кнопки +, -, Сброс
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = firstValue + secondValue;
                    });
                  },
                  child: Text('+', style: TextStyle(fontSize: 24)),
                ),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = firstValue - secondValue;
                    });
                  },
                  child: Text('-', style: TextStyle(fontSize: 24)),
                ),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = firstValue * secondValue;
                    });
                  },
                  child: Text('×', style: TextStyle(fontSize: 24)),
                ),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if(secondValue != 0){
                        result = firstValue / secondValue;
                      }else{
                        result = 0;
                        ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Деление на 0 невозможно')),
                        );
                      }
                    });
                  },
                  child: Text('÷', style: TextStyle(fontSize: 24)),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
                  onPressed: resetCalculator,
                  child: Text('Сброс', style: TextStyle(fontSize: 16, color: Colors.white)),
                ),
              ],
            ),

            SizedBox(height: 30),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Результат: $result',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

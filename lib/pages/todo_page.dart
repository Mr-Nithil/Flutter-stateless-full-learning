import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {

  // text editing controller to get access to what the user typed

  TextEditingController myController = TextEditingController();

  String greetingMessage = "";

  // method 
  void greetUser() {
    setState(() {
      greetingMessage = "Hello, ${myController.text}";
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Greeting message
              Text(
                greetingMessage,
              ),
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText:" Type your Name",
                ),
              ),
          
              ElevatedButton(
                onPressed: greetUser, 
                child: Text(
                  "Submit"
                )
              )
          
            ],
          ),
        ),
      ),
    );
  }
}
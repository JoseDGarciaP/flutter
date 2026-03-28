import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Wrap(
            runSpacing: 16,
            spacing: 8.0,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("Elevated"),
              ),
              ElevatedButton.icon(
                onPressed: () {}, 
                label: Text("With Icon"),
                icon: Icon(Icons.ac_unit)
              ),
              ElevatedButton(
                onPressed: null, 
                child: Text("Elevated Disabled")
              ),
              FilledButton(
                onPressed: () {},
                child: Text("Filled"),
              ),
              FilledButton.icon(
                onPressed: () {}, 
                label: Text("With Icon"),
                icon: Icon(Icons.ac_unit)
              ),
              FilledButton(
                onPressed: null, 
                child: Text("Filed Disabled")
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text("Outline"),
              ),
              OutlinedButton.icon(
                onPressed: () {}, 
                label: Text("With Icon"),
                icon: Icon(Icons.ac_unit)
              ),
              OutlinedButton(
                onPressed: null, 
                child: Text("Outline Disabled")
              ),
              TextButton(
                onPressed: () {},
                child: Text("Text"),
              ),
              TextButton.icon(
                onPressed: () {}, 
                label: Text("With Icon"),
                icon: Icon(Icons.ac_unit)
              ),
              TextButton(
                onPressed: null, 
                child: Text("Text Disabled")
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.ac_unit),
              ),
              IconButton(
                onPressed: null, 
                icon: Icon(Icons.ac_unit)
              ),
            ]
          )
        ),
      ),
    );
  }
}
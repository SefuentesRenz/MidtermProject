import 'package:flutter/material.dart';
import 'recipe_list_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
          255, 45, 120, 233), // Set background color to navy blue
      body: Center(
        // Center the contents of the screen
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
          children: [
            Text(
              'Welcome to the Recipe App',
              style: TextStyle(
                fontSize: 24, // Font size for the welcome message
                color: Colors.white, // Set text color to white
                fontWeight: FontWeight.bold, // Make text bold
              ),
            ),
            SizedBox(height: 20), // Add space between texts
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecipeListScreen(),
                  ),
                );
              },
              child: Text('View Recipes'),
            ),
          ],
        ),
      ),
    );
  }
}

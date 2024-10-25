import 'package:flutter/material.dart';
import 'recipe_detail_screen.dart';

class RecipeListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildRecipeItem(context, 'Pinakbet'),
              _buildRecipeItem(context, 'Bulalo'),
              _buildRecipeItem(context, 'Kare-Kare'),
              _buildRecipeItem(context, 'Sinigang'),
              _buildRecipeItem(context, 'Adobo'),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build recipe items.
  Widget _buildRecipeItem(BuildContext context, String recipeName) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecipeDetailScreen(recipeName: recipeName),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Text(
          recipeName,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}

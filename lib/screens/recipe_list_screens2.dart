import 'package:flutter/material.dart';
import '../models/recipe_model.dart';
import 'recipe_detail_screen.dart';
import 'add_recipe_screen.dart';

class RecipeListScreen extends StatefulWidget {
  @override
  _RecipeListScreenState createState() => _RecipeListScreenState();
}

class _RecipeListScreenState extends State<RecipeListScreen> {
  // Predefined list of recipes
  List<Recipe> recipes = [
    Recipe(
        'Adobo',
        'Delicious pork or chicken stewed in soy sauce and vinegar.',
        'Pork, soy sauce, vinegar, garlic',
        '1. Marinate pork, 2. Cook in a pot, 3. Simmer until tender.'),
    Recipe(
        'Sinigang',
        'Tamarind-based sour soup with pork, shrimp, or fish.',
        'Pork, tamarind, vegetables',
        '1. Boil pork, 2. Add vegetables, 3. Season with tamarind.'),
    Recipe(
        'Kare-Kare',
        'Peanut-based stew with oxtail and vegetables.',
        'Oxtail, peanut butter, vegetables',
        '1. Cook oxtail, 2. Prepare peanut sauce, 3. Mix with vegetables.'),
    Recipe(
        'Bulalo',
        'Beef shank soup with rich marrow bones.',
        'Beef shank, corn, cabbage',
        '1. Boil beef, 2. Add corn, 3. Simmer until tender.'),
    Recipe(
        'Pinakbet',
        'Pinakbet is a traditional Filipino dish that showcases the rich flavors of vegetables and is often paired with shrimp paste (bagoong).',
        'Vegetables, shrimp paste, pork',
        '1. Saute vegetables, 2. Add shrimp paste, 3. Simmer.'),
  ];

  // Add recipe function
  void _addRecipe(Recipe newRecipe) {
    setState(() {
      recipes.add(newRecipe); // Add the new recipe to the list
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Philippine Viands Recipes'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0), // Add padding around each item
            child: Container(
              height: 100, // Set height to make the recipe container bigger
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors
                    .lightBlue.shade50, // Light background for the container
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: ListTile(
                title: Text(
                  recipes[index].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(recipes[index].description),
                onTap: () {
                  // Navigate to the RecipeDetailScreen when recipe is tapped
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          RecipeDetailScreen(recipe: recipes[index]),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
      // Floating Action Button for adding a recipe
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddRecipeScreen(
                onAddRecipe: _addRecipe,
              ),
            ),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }
}

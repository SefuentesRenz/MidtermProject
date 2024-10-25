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
        'A traditional Filipino dish that showcases rich flavors of vegetables.',
        'Vegetables, shrimp paste, pork',
        '1. Saute vegetables, 2. Add shrimp paste, 3. Simmer.'),
  ];

  // Add recipe function
  void _addRecipe(Recipe newRecipe) {
    setState(() {
      recipes.add(newRecipe); // Add the new recipe to the list
    });
  }

  // Remove recipe function
  void _removeRecipe(int index) {
    setState(() {
      recipes.removeAt(index); // Remove the recipe at the given index
    });
  }

  // Show confirmation dialog for recipe removal
  void _showConfirmationDialog(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Deletion'),
          content:
              Text('Are you sure you want to delete "${recipes[index].name}"?'),
          actions: [
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
            TextButton(
              child: Text('Delete'),
              onPressed: () {
                _removeRecipe(index);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${recipes[index].name} removed'),
                  ),
                );
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
          ],
        );
      },
    );
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
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.lightBlue.shade50,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text(
                        recipes[index].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(recipes[index].description),
                      onTap: () {
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
                  IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      // Show confirmation dialog
                      _showConfirmationDialog(context, index);
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
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

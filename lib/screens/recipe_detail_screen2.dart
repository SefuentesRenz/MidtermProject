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
        'Pinakbet Recipe (Filipino Mixed Vegetables with Shrimp Paste)Pinakbet is a traditional Filipino vegetable dish made with an assortment of local vegetables sautéed in shrimp paste (bagoong alamang). \n This Ilocano dish highlights the natural flavors of vegetables and is often served with pork for added richness. It’s a nutritious and flavorful dish perfect with steamed rice.',
        '1/2 lb (250g) pork belly or pork shoulder, sliced into bite-sized pieces \n 2 tbsp cooking oil \n 1 onion, chopped \n 4 cloves garlic, minced \n 2 tomatoes, chopped \n 2 tbsp bagoong alamang (fermented shrimp paste) \n 1/2 cup water or broth \n \n Vegetables: \n 1 small bitter melon (ampalaya), sliced \n 1-2 eggplants, sliced into rounds \n 1 sweet potato or squash (kalabasa), cubed \n 1 bunch sitaw (long beans), cut into 2-inch pieces \n 1-2 okra, halved \n 1 bunch kangkong (water spinach) or malunggay (moringa leaves)\n',
        '1. Marinate pork, 2. Cook in a pot, 3. Simmer until tender.'),
    Recipe(
        'Sinigang',
        'Sinigang Recipe (Filipino Sour Soup) \n Sinigang is a popular Filipino soup known for its savory-sour flavor, often made with tamarind as the souring agent. It is a comforting dish commonly cooked with pork, shrimp, or fish, alongside vegetables like kangkong (water spinach), okra, and radish.',
        '1.5 lbs (700g) pork belly (liempo) or pork ribs \n 8 cups water \n  1 onion, quartered \n  2 large tomatoes, quartered \n  2-3 pieces green chilies (siling haba, optional) \n  1 packet sinigang mix (or 1/2 cup fresh tamarind juice) \n  Salt and fish sauce (patis) to taste Vegetables: 1 radish (labanos), sliced into thin rounds \n 2 eggplants, sliced into rounds \n 6 pieces okra \n 1 bunch sitaw (long beans), cut into 2-inch pieces \n 1 bunch kangkong (water spinach) or bok choy \n 1-2 taro roots (gabi), peeled and quartered (optional, for thicker broth)',
        '1. Boil pork, 2. Add vegetables, 3. Season with tamarind.'),
    Recipe(
        'Kare-Kare',
        'Kare-Kare Recipe (Filipino Peanut Stew) \n Kare-Kare is a traditional Filipino stew known for its rich peanut sauce and tender meat, often served with a side of bagoong (fermented shrimp paste). It’s typically made with oxtail, pork hocks, or tripe, along with vegetables like eggplant, bok choy, and string beans. This dish is a crowd favorite at family gatherings and fiestas.',
        'For the Meat: \n 2 lbs (900g) oxtail, tripe, or beef shank (you can combine or substitute with pork hocks) \n 8-10 cups water \n 1 onion, quartered \n 1 tsp salt \n 1 tsp peppercorns \n Optional: 1-2 banana blossoms (dried or fresh)',
        '1. Cook oxtail, 2. Prepare peanut sauce, 3. Mix with vegetables.'),
    Recipe(
        //instructions kay not so sure pa
        'Bulalo',
        'Bulalo Recipe (Filipino Beef Marrow Stew) \n Bulalo is a hearty Filipino soup made with beef shanks and bone marrow, simmered slowly to extract rich flavors. It’s traditionally served with vegetables like cabbage, corn, and potatoes, making it a comforting dish perfect for rainy days.',
        '2-3 lbs (900g-1.3kg) beef shank (with bone marrow) \n 1 large onion, quartered \n 8-10 cups water \n 2-3 ears of corn, cut into pieces \n 2 large potatoes, peeled and quartered \n 1 bundle pechay (or bok choy) \n 1/2 head of cabbage, quartered \n 2-3 green onions \n 2 tbsp fish sauce (patis) (adjust to taste) \n Salt and pepper to taste \n Optional: 1-2 star anise for additional aroma \n',
        '1. Boil beef, 2. Add corn, 3. Simmer until tender.'),
    Recipe(
        'Pinakbet',
        'Pinakbet Recipe (Filipino Mixed Vegetables with Shrimp Paste) \n Pinakbet is a traditional Filipino vegetable dish made with an assortment of local vegetables sautéed in shrimp paste (bagoong alamang). This Ilocano dish highlights the natural flavors of vegetables and is often served with pork for added richness. It’s a nutritious and flavorful dish perfect with steamed rice.',
        '1/2 lb (250g) pork belly or pork shoulder, sliced into bite-sized pieces 2 tbsp cooking oil \n 1 onion, chopped \n 4 cloves garlic, minced \n 2 tomatoes, chopped \n 2 tbsp bagoong alamang (fermented shrimp paste) \n 1/2 cup water or broth',
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

import 'package:flutter/material.dart';

class RecipeDetailScreen extends StatelessWidget {
  final String recipeName;

  RecipeDetailScreen({required this.recipeName});

  // Method to get the recipe description based on the selected recipe name
  String getRecipeDescription(String name) {
    switch (name) {
      case 'Pinakbet':
        return '''
Pinakbet Recipe (Filipino Mixed Vegetables with Shrimp Paste)
Pinakbet is a traditional Filipino vegetable dish made with an assortment of local vegetables sautéed in shrimp paste (bagoong alamang). This Ilocano dish highlights the natural flavors of vegetables and is often served with pork for added richness. It’s a nutritious and flavorful dish perfect with steamed rice.

Ingredients (Serves 4-6)
For the Pinakbet:

1/2 lb (250g) pork belly or pork shoulder, sliced into bite-sized pieces
2 tbsp cooking oil
1 onion, chopped
4 cloves garlic, minced
2 tomatoes, chopped
2 tbsp bagoong alamang (fermented shrimp paste)
1/2 cup water or broth
Vegetables:

1 small bitter melon (ampalaya), sliced
1-2 eggplants, sliced into rounds
1 sweet potato or squash (kalabasa), cubed
1 bunch sitaw (long beans), cut into 2-inch pieces
1-2 okra, halved
1 bunch kangkong (water spinach) or malunggay (moringa leaves)

Instructions
1. Sauté the Pork and Aromatics
In a pan, heat 2 tbsp oil over medium heat. Add the pork slices and cook until browned and slightly crispy.
Add the onions and garlic and sauté until fragrant, about 2 minutes.
Stir in the tomatoes and cook until they soften.

2. Add the Shrimp Paste and Liquid
Add bagoong alamang to the pan and sauté for about 1 minute to release its flavor.
Pour in 1/2 cup water or broth and bring to a simmer.

3. Add the Vegetables
Start with the squash (kalabasa) since it takes longer to cook. Simmer for 5-7 minutes until it begins to soften.
Add the bitter melon (ampalaya), eggplant, okra, and sitaw. Cook for another 5-7 minutes until the vegetables are tender but not mushy.
Finally, add the kangkong or malunggay and cook for 2-3 minutes until wilted.

4. Adjust the Seasoning
Taste the dish and adjust the seasoning as needed. You can add more bagoong for saltiness or water to thin the sauce if needed.

5. Serve
Transfer to a serving dish and enjoy your Pinakbet with steamed rice.

Tips and Variations
Meat-Free Option: Skip the pork and add tofu for a vegetarian version.
Ampalaya Prep Tip: Soak bitter melon in salted water for 10 minutes to reduce its bitterness.
Additions: Some versions include shrimp or chicharrón (crispy pork skin) for added texture.

Enjoy the hearty flavors of Pinakbet, a healthy Filipino vegetable medley!''';

      case 'Bulalo':
        return '''
Bulalo Recipe (Filipino Beef Marrow Stew)
Bulalo is a hearty Filipino soup made with beef shanks and bone marrow, simmered slowly to extract rich flavors. It’s traditionally served with vegetables like cabbage, corn, and potatoes, making it a comforting dish perfect for rainy days.

Ingredients (Serves 4-6)
2-3 lbs (900g-1.3kg) beef shank (with bone marrow)
1 large onion, quartered
8-10 cups water
2-3 ears of corn, cut into pieces
2 large potatoes, peeled and quartered
1 bundle pechay (or bok choy)
1/2 head of cabbage, quartered
2-3 green onions
2 tbsp fish sauce (patis) (adjust to taste)
Salt and pepper to taste
Optional: 1-2 star anise for additional aroma

Instructions
Prepare the Beef Shank

Rinse the beef shank thoroughly under cold water to remove excess blood.
In a large pot, place the beef shank and enough water to cover it. Bring to a boil for 5-10 minutes.
Discard the water and rinse the meat to remove any scum. This helps keep the broth clear.
Simmer the Beef

In the same pot, add 8-10 cups of water, the cleaned beef shank, and the onions.
Bring to a boil, then lower the heat and simmer for 2-3 hours until the meat becomes tender.
(Tip: If using a pressure cooker, simmer for 40-50 minutes.)
Add Seasoning and Vegetables

Once the beef is tender, add corn and potatoes. Continue to simmer for 15-20 minutes until the potatoes are soft.
Season the broth with fish sauce, salt, and pepper to taste.
Add Greens

Add the pechay (or bok choy), cabbage, and green onions. Let it cook for 3-5 minutes, just until the greens are wilted.
Serve

Transfer the bulalo to a large serving bowl. Make sure to include some bone marrow in each portion.
Serve with rice and additional fish sauce or calamansi (optional) on the side for extra flavor.
Tips and Variations
To prevent the marrow from falling out, you can cover the bone ends with foil while cooking.
You can also add saba bananas for a hint of sweetness.

If you prefer a spicier version, serve with chopped chilies or a chili garlic sauce.
Enjoy your warm, comforting bowl of Bulalo!''';

      case 'Kare-Kare':
        return '''
Kare-Kare Recipe (Filipino Peanut Stew)
Kare-Kare is a traditional Filipino stew known for its rich peanut sauce and tender meat, often served with a side of bagoong (fermented shrimp paste). It’s typically made with oxtail, pork hocks, or tripe, along with vegetables like eggplant, bok choy, and string beans. This dish is a crowd favorite at family gatherings and fiestas.

Ingredients (Serves 6-8)

For the Meat:
2 lbs (900g) oxtail, tripe, or beef shank (you can combine or substitute with pork hocks)
8-10 cups water
1 onion, quartered
1 tsp salt
1 tsp peppercorns
Optional: 1-2 banana blossoms (dried or fresh)

For the Peanut Sauce:
1/2 cup peanut butter (or ground peanuts)
1/4 cup toasted rice flour (for thickening)
3-4 cups beef broth (from the boiled meat)
2 tbsp annatto oil (or annatto powder dissolved in warm water)
2 tbsp cooking oil
Salt and pepper to taste

Vegetables:
1 medium eggplant, sliced into rounds
2-3 pieces bok choy (or pechay)
1 cup green beans or long beans (sitaw), cut into 2-inch pieces
1/2 banana heart, sliced (optional)

To Serve:
Bagoong (fermented shrimp paste)
Steamed rice

Instructions
1. Cook the Meat
In a large pot, combine the oxtail, tripe, or beef shank with water, onion, salt, and peppercorns.
Bring to a boil, then reduce to a simmer and cook for 2-3 hours until the meat is tender.
(If using a pressure cooker, cook for 45 minutes to 1 hour.)
Once tender, remove the meat and set aside. Reserve the broth for the sauce.

2. Prepare the Peanut Sauce
In a pan, heat 2 tablespoons of cooking oil over medium heat. Add annatto oil (for color).
Pour in 3-4 cups of the reserved broth, and stir in peanut butter. Simmer gently while stirring.
Slowly add toasted rice flour while whisking to thicken the sauce. Cook for 5-7 minutes until smooth and thick.
Season with salt and pepper to taste.

3. Cook the Vegetables
In a separate pan, blanch the eggplant, green beans, and bok choy until slightly tender (about 2-3 minutes).
Set the vegetables aside for serving.

4. Combine the Meat and Sauce
Add the tender oxtail or tripe to the peanut sauce. Simmer for 10-15 minutes to let the flavors blend.

5. Serve the Kare-Kare
Arrange the meat and vegetables on a serving platter.
Pour the peanut sauce over the meat or serve it on the side.
Serve with bagoong (shrimp paste) on the side and steamed rice.

Tips and Variations
Vegetarian Kare-Kare: Replace the meat with tofu or tempeh and use vegetable broth.
Alternative Thickener: Use cornstarch instead of rice flour if preferred.
Annatto Oil Alternative: If annatto seeds are unavailable, use paprika for color.

Enjoy the rich, comforting flavors of Kare-Kare with a side of shrimp paste to balance the richness!''';

      case 'Sinigang':
        return '''
Sinigang Recipe (Filipino Sour Soup)
Sinigang is a popular Filipino soup known for its savory-sour flavor, often made with tamarind as the souring agent. It is a comforting dish commonly cooked with pork, shrimp, or fish, alongside vegetables like kangkong (water spinach), okra, and radish.

Ingredients (Serves 4-6)
For the Meat and Broth:

1.5 lbs (700g) pork belly (liempo) or pork ribs
8 cups water
1 onion, quartered
2 large tomatoes, quartered
2-3 pieces green chilies (siling haba, optional)
1 packet sinigang mix (or 1/2 cup fresh tamarind juice)
Salt and fish sauce (patis) to taste

Vegetables:
1 radish (labanos), sliced into thin rounds
2 eggplants, sliced into rounds
6 pieces okra
1 bunch sitaw (long beans), cut into 2-inch pieces
1 bunch kangkong (water spinach) or bok choy
1-2 taro roots (gabi), peeled and quartered (optional, for thicker broth)

Instructions: 
1. Prepare the Pork and Broth
In a large pot, add the pork belly (or ribs) and 8 cups of water. Bring to a boil, then reduce to a simmer.
Add the onion and tomatoes, and cook for 30-45 minutes, or until the pork becomes tender.
(Tip: Skim off any scum that floats to the top to keep the broth clear.)

2. Add Vegetables and Souring Agent
Add the taro root (gabi) if using, and simmer for 10-15 minutes until it softens.
Stir in the radish, eggplant, okra, and sitaw. Let them cook for about 5-7 minutes.
Add the sinigang mix or tamarind juice for the sour flavor. You can adjust the sourness by adding more or less.

3. Final Touches
Add fish sauce and salt to taste. Adjust the seasoning as needed.
Add the green chilies for a bit of spice (optional).
Lastly, add the kangkong (or bok choy) and let it cook for 2-3 minutes until wilted.

4. Serve the Sinigang
Transfer the soup to a large bowl or serve directly from the pot.
Enjoy your sinigang hot, served with steamed rice and additional fish sauce on the side for dipping.


Tips and Variations
Sinigang na Hipon: Use shrimp instead of pork. Add it during the last 5 minutes of cooking to avoid overcooking.
Sinigang na Isda: Use fish like bangus (milkfish) or tilapia. Add the fish towards the end.
Alternative Souring Agents: Try calamansi, green mango, or kamias for different variations.
For a Thicker Broth: Use more taro (gabi) and mash a few pieces into the soup.

Enjoy the sour and savory goodness of sinigang, a perfect comfort dish for any weather!

''';

      case 'Adobo':
        return '''

Adobo Recipe (Filipino Braised Meat in Vinegar and Soy Sauce)
Adobo is one of the most iconic Filipino dishes, known for its savory, tangy, and slightly sweet flavors. It can be made with chicken, pork, or a combination of both, simmered in a mix of soy sauce, vinegar, garlic, and spices.

Ingredients (Serves 4-6)

For the Marinade and Braising:
1.5 lbs (700g) chicken (thighs, drumsticks) or pork belly (liempo)
1/3 cup soy sauce
1/4 cup white vinegar
6 cloves garlic, minced or crushed
1 bay leaf
1 tsp whole peppercorns
1 tbsp sugar (optional, for a hint of sweetness)
1/2 cup water or chicken broth

Optional for Additional Flavor:
2-3 potatoes, peeled and quartered
2 boiled eggs (peeled)
Green chilies for a spicy version

For Searing:
2 tbsp cooking oil

Instructions:
1. Marinate the Meat
In a bowl, combine soy sauce, vinegar, garlic, bay leaf, and peppercorns.
Add the chicken or pork and toss to coat well. Let it marinate for at least 30 minutes or overnight in the refrigerator for deeper flavor.

2. Sear the Meat
Heat 2 tablespoons of oil in a pot or skillet over medium heat.
Remove the meat from the marinade (reserve the marinade) and sear it in batches until browned on all sides. This enhances flavor.

3. Simmer the Adobo
Pour the reserved marinade back into the pot along with water or broth.
Add sugar if desired, and bring to a boil.
Lower the heat, cover, and simmer for 30-40 minutes until the meat becomes tender.
If using potatoes, add them during the last 15 minutes of cooking.

4. Reduce the Sauce
Once the meat is tender, uncover the pot and let the sauce reduce to your desired consistency.
Add the boiled eggs in the last few minutes to absorb the sauce (optional).

5. Serve the Adobo
Transfer the adobo to a serving dish and enjoy with steamed rice.
For extra flavor, drizzle a little sauce over the rice!

Tips and Variations
Chicken Adobo: Use only chicken for a lighter version.
Pork Adobo: Pork belly gives a richer, fattier taste.
Adobong Puti (White Adobo): Omit the soy sauce for a lighter vinegar-based dish.
Crispy Adobo Flakes: Shred leftover adobo and fry until crispy for a delicious breakfast topping.

Enjoy this hearty and flavorful Filipino Adobo—the ultimate comfort food!''';

      default:
        return 'No recipe description available.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipeName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
            getRecipeDescription(recipeName),
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}

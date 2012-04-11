
--
-- Dumping data for table `k_recipes_cat1`
--
SET @cat1=seq_category.nextval;
SET @cat2=seq_category.nextval;
SET @cat3=seq_category.nextval;
SET @cat4=seq_category.nextval;
SET @cat5=seq_category.nextval;
SET @cat6=seq_category.nextval;
SET @cat7=seq_category.nextval;
SET @cat8=seq_category.nextval;
SET @cat9=seq_category.nextval;
SET @cat10=seq_category.nextval;
SET @cat11=seq_category.nextval;
INSERT INTO CATEGORY (ID, NAME, RANK, OWNER_ID, VERSION) VALUES (@cat1,'Main Dish',5,2,0);
INSERT INTO CATEGORY (ID, NAME, RANK, OWNER_ID, VERSION) VALUES (@cat2,'Dessert',6,2,0);
INSERT INTO CATEGORY (ID, NAME, RANK, OWNER_ID, VERSION) VALUES (@cat3,'Appetizers',2,2,0);
INSERT INTO CATEGORY (ID, NAME, RANK, OWNER_ID, VERSION) VALUES (@cat4,'Soup',3,2,0);
INSERT INTO CATEGORY (ID, NAME, RANK, OWNER_ID, VERSION) VALUES (@cat5,'Side Dish',4,2,0);
INSERT INTO CATEGORY (ID, NAME, RANK, OWNER_ID, VERSION) VALUES (@cat6,'Breakfast',1,2,0);
INSERT INTO CATEGORY (ID, NAME, RANK, OWNER_ID, VERSION) VALUES (@cat7,'Dips and Spreads',7,2,0);
INSERT INTO CATEGORY (ID, NAME, RANK, OWNER_ID, VERSION) VALUES (@cat8,'Bread',8,2,0);
INSERT INTO CATEGORY (ID, NAME, RANK, OWNER_ID, VERSION) VALUES (@cat9,'Snacks',9,2,0);
INSERT INTO CATEGORY (ID, NAME, RANK, OWNER_ID, VERSION) VALUES (@cat10,'Salads',10,2,0);
INSERT INTO CATEGORY (ID, NAME, RANK, OWNER_ID, VERSION) VALUES (@cat11,'Canning',11,2,0);


--
-- Dumping data for table `k_recipes_cat2`
--
SET @subcat1=seq_sub_category.nextval;
SET @subcat2=seq_sub_category.nextval;
SET @subcat3=seq_sub_category.nextval;
SET @subcat4=seq_sub_category.nextval;
SET @subcat5=seq_sub_category.nextval;
INSERT INTO SUB_CATEGORY (ID, NAME, RANK, CATEGORY_ID, OWNER_ID, VERSION) VALUES (@subcat1,'Ice Cream/Sorbet',1,@cat2,2,0);
INSERT INTO SUB_CATEGORY (ID, NAME, RANK, CATEGORY_ID, OWNER_ID, VERSION) VALUES (@subcat2,'Vegetable',1,@cat5,2,0);
INSERT INTO SUB_CATEGORY (ID, NAME, RANK, CATEGORY_ID, OWNER_ID, VERSION) VALUES (@subcat3,'Starch',2,@cat5,2,0);
INSERT INTO SUB_CATEGORY (ID, NAME, RANK, CATEGORY_ID, OWNER_ID, VERSION) VALUES (@subcat4,'Kinetix',1,@cat1,2,0);
INSERT INTO SUB_CATEGORY (ID, NAME, RANK, CATEGORY_ID, OWNER_ID, VERSION) VALUES (@subcat5,'Kinetix',1,@cat4,2,0);


-- 
-- Dumping data for table RECIPE
-- (ID, TITLE, BODY, rating, CATEGORY_ID, SUB_CATEGORY_ID, date, status)

INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Fruit or Berry Crisp', $$2 cups fruit (sliced peaches, apples or berries or a combination of) 
Topping: 
1/2 cup flour
1/2 cup oatmeal
1/2 cup brown sugar
3/4 stick of room temperature butter

Preheat oven to 350 degrees.  Blend all topping ingredients in one bowl until thoroughly mixed. Put the fruit or berries in the greased pie pan and spread the topping evenly.  Bake in 350 degree oven for 30 minutes.

Serve warm with ice cream or whipped cream.

$$,2,@cat2,NULL,PARSEDATETIME('2007-09-02','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Braised Pepper Bruschetta', $$1/4 cup olive oil
3 red, yellow, or orange sweet bell peppers, cored and thinly sliced
1 clove garlic, thinly sliced
1/4 teaspoon sea salt
8 basil leaves, chopped
Basic Bruschetta
Extra-virgin olive oil for drizzling

Heat the olive oil in a large frying pan over medium heat. Add peppers, garlic, and salt. Cook until peppers are very soft and sweet but not brown, about 30 minutes. Remove from heat. Stir in basil and let mixture cool to room temperature. Spoon onto bruschettas and drizzle with extra-virgin olive oil.
Yield:  Makes topping for 8 bruschettas

$$,2,@cat3,NULL,PARSEDATETIME('2007-09-02','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Classic Vanilla Bean Ice Cream', $$The best vanilla ice cream is made with vanilla beans that have been steeped in custard to release their maximum flavor. If vanilla beans are unavailable, simply omit the steeping and add 2 tsp. vanilla extract to the chilled custard before freezing. 
 
3 cups half-and-half
1 vanilla bean
3/4 cup sugar
6 egg yolks

Pour the half-and-half into a heavy saucepan. Place the vanilla bean on a work surface. Using a small, sharp knife, cut the bean in half lengthwise. Using the knife tip, scrape the seeds from the vanilla bean, then add the seeds and bean halves to the half-and-half. Bring to a simmer over medium-high heat. Remove from the heat, cover and let stand for 30 minutes.

Return the saucepan to the stovetop over medium-high heat and bring to a simmer. Meanwhile, in a heatproof bowl, whisk together the sugar and egg yolks until blended. Form a kitchen towel into a ring and place the bowl on top to prevent it from moving. Gradually pour the hot half-and-half mixture into the yolk mixture, whisking constantly. Return the mixture to the same saucepan and place over medium-low heat. Cook, stirring constantly with a wooden spoon, until the custard is thick enough to coat the back of the spoon and leaves a clear trail when a finger is drawn through it, about 5 minutes. Do not allow the custard to boil.

Pour the custard through a medium-mesh sieve set over a clean bowl. Refrigerate until cold, about 1 hour.

Transfer the custard to an ice cream maker and freeze according to the manufacturers instructions. Transfer the ice cream to a freezer-safe container, cover and freeze until firm, at least 4 hours or up to 3 days, before serving. Makes about 5 cups; serves 8. 

Adapted from Williams-Sonoma Kitchen Library Series, Ice Creams & Sorbets, by Sarah Tenaglia (Time-Life Books, 1996). $$,2,@cat2,@subcat1,PARSEDATETIME('2007-09-02','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Mint-Chocolate Chip Ice Cream', $$The preferred way to melt chocolate is in the top pan of a double boiler set over but not touching barely simmering water. As soon as the water simmers, it produces steam, the nemesis of melting chocolate. If even a droplet of moisture gets into the chocolate, it can seize or stiffen. If this happens, start over with new chocolate. Mixing the melted chocolate with vegetable oil causes the formation of small slivers of chocolate in the finished ice cream. This method, perfected by noted cookbook author Nick Malgieri, yields a distinctive and well-blended ice cream. 
 
1 1&#8260;2 cups milk
1 1&#8260;2 cups heavy cream
1 cup packed fresh mint leaves
4 egg yolks
1&#8260;2 cup plus 2 Tbs. sugar
Pinch of salt
1 or 2 drops green food coloring (optional)
1 or 2 drops blue food coloring (optional) 
3 oz. bittersweet or semisweet chocolate,
  finely chopped
2 tsp. canola oil 

In a heavy 2-quart saucepan over medium heat, combine the milk, 1 cup of the cream and the mint leaves. Cook until bubbles form around the edges of the pan, about 5 minutes. Remove from the heat and let stand for 20 minutes to steep. 

Meanwhile, in a bowl, combine the egg yolks, sugar, salt and the remaining 1&#8260;2 cup cream and whisk until smooth. Gradually whisk about 1&#8260;2 cup of the warm milk mixture into the egg mixture until smooth. Pour the egg mixture back into the pan. Cook over medium heat, stirring constantly with a wooden spoon and keeping the custard at a low simmer, until it is thick enough to coat the back of the spoon and leaves a clear trail when a finger is drawn through it, 4 to 6 minutes. Do not allow the custard to boil. Strain through a fine-mesh sieve into a bowl, pressing on the mint with the back of the spoon. Stir in the food colorings. 

Place the bowl in a larger bowl partially filled with ice water, stirring occasionally until cool. Cover with plastic wrap, pressing it directly on the surface of the custard to prevent a skin from forming. Refrigerate until chilled, at least 3 hours or up to 24 hours. 

About 1 hour before freezing the ice cream, in the top of a double boiler over barely simmering water, melt the chocolate, stirring until it is melted. Then stir in the oil. Transfer to a small pitcher and let cool to room temperature. 

Transfer the custard to an ice cream maker and freeze according to the manufacturer’s instructions. When nearly frozen and the consistency of thick whipped cream, add the chocolate while the machine is churning or stop the machine temporarily, add the chocolate and restart to mix. Transfer the ice cream to a freezer-safe container. Cover and freeze until firm, at least 3 hours or up to 3 days, before serving. Makes about 1 quart. 

Adapted from Williams-Sonoma Collection Series, Ice Cream, by Mary Goodbody (Simon & Schuster, 2003). $$,2,@cat2,@subcat1,PARSEDATETIME('2007-09-03','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Chocolate Ice Cream', $$This incredibly rich chocolate ice cream can be the base for many variations. At the end of the freezing process, stir in a handful of toasted nuts, such as almonds or hazelnuts, or bits of chocolate or crystallized ginger. 
 
3 cups half-and-half
6 oz. bittersweet chocolate, finely chopped
 (about 1 1/3 cups)
5 egg yolks
1 cup sugar
Pinch of salt
1 tsp. vanilla extract

In a saucepan over medium heat, warm the half-and-half until bubbles form around the edges of the pan. Remove from the heat, add the chocolate and stir until smooth and blended.

In a large bowl, whisk together the egg yolks, sugar and salt until blended. Slowly add the chocolate cream, whisking constantly until fully incorporated.

Pour the mixture into the top pan of a double boiler. Set the pan over but not touching simmering water in the bottom pan. Cook, stirring constantly with a wooden spoon, until a finger drawn across the back of the spoon leaves a path, 10 to 12 minutes; do not allow the custard to boil. Pour the custard through a fine-mesh sieve set over a clean bowl and stir in the vanilla. Nestle the bowl in a larger one filled halfway with ice and water. Cool the custard, stirring occasionally, about 30 minutes.

Transfer the custard to an ice cream maker and freeze according to the manufacturer's instructions. Transfer the ice cream to a freezer-safe container, cover and freeze until firm, 3 to 4 hours, before serving. Makes about 1 quart. 

Williams-Sonoma Kitchen.$$,2,@cat2,@subcat1,PARSEDATETIME('2007-09-03','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Toasted bread, bean and vegetable soup', $$Time: About 50 minutes. 

Serves 6 or 7 (makes 7 cups)

About 3 tbsp. olive oil, divided
1/2  white onion, chopped
3  garlic cloves, minced
3  medium carrots, chopped into 1/2-in. pieces
2  celery stalks, chopped into 1-in. pieces
1 1/2  qts. chicken broth
2  can (15 oz.) white beans, drained and rinsed
4  whole canned tomatoes*, quartered, plus some juice
4  cups  chopped Swiss chard
4  cups  rough-textured day-old bread (such as ciabatta), ripped into 1 1/2-in. pieces
Kosher salt and freshly ground black pepper
2  tablespoons  chopped fresh basil
2  tablespoons  chopped fresh cilantro
Wedge of parmesan cheese for grating (optional)

1. Heat 1 tbsp. olive oil in a large pot over medium heat. Add onion and garlic; cook until transparent, about 5 minutes. Add carrots and celery and cook, stirring often, 5 minutes. Stir in broth and beans, then bring to a boil. Reduce heat, cover, and simmer about 15 minutes. Add tomatoes and chard and simmer another 15 minutes, covered.

2. Meanwhile, preheat oven to 350°. Lay bread pieces on a rimmed baking sheet in a single layer. Drizzle with remaining 2 tbsp. olive oil and sprinkle with salt and pepper. Toast in oven until slightly golden, about 10 minutes. Set croutons aside.

3. Just before serving, add basil and cilantro and season to taste with salt and pepper.

4. Divide soup among serving bowls and top each with a few warm croutons. Grate parmesan directly over soup if you like.

Note: Nutritional analysis is per 1-cup serving.
Nutritional Information

Calories: 212 (41% from fat)
Protein: 9.7g
Fat: 9.9g (sat 0.8)
Carbohydrate: 29g
Fiber: 4.7g
Sodium: 812mg
Cholesterol: 0.0mg

Sunset, JANUARY 2009 $$,2,@cat4,NULL,PARSEDATETIME('2009-01-18','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Blueberry-Lemon Squares', $$2 1/4 cups all-purpose flour
About 1/2 cup powdered sugar
1 cup (1/2 lb.) butter or margarine
4 large eggs
1 cup granulated sugar
1 teaspoon grated lemon peel
1/3 cup lemon juice
1/2 teaspoon baking powder
1/8 teaspoon salt
1 1/2 cups blueberries, fresh and rinsed or frozen

1. In a food processor or a bowl, whirl or stir flour and 1/2 cup powdered sugar until blended. Add butter and whirl or rub in with your fingers until dough holds together when squeezed. Press evenly over the bottom of a 9- by 13-inch pan.
2. Bake in a 350° regular or convection oven until crust is golden brown, 20 to 25 minutes.

3. Meanwhile, in a bowl with a mixer on medium speed or a whisk, beat eggs to blend with granulated sugar, lemon peel, lemon juice, baking powder, and salt. Stir in blueberries.

4. Pour egg mixture into pan over warm crust. Return to oven and bake until filling no longer jiggles when pan is gently shaken, 20 to 25 minutes. Sprinkle lightly with powdered sugar and let cool at least 15 minutes. Serve warm or cool. If making up to 1 day ahead, wrap airtight when cool and chill. Cut into about 2-inch squares and lift out with a spatula.

Sunset, MARCH 2001

$$,2,@cat2,NULL,PARSEDATETIME('2007-09-03','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Tortilla Soup', $$1 tablespoon vegetable oil, plus more for frying
2 large onions, chopped
8 cloves garlic, minced
1 tablespoon plus 1 1/2 tsp. coarse kosher salt
1 teaspoon ground cumin
1/2 teaspoon red chile flakes
12 cups reduced-sodium chicken broth
1 can (28 oz.) diced tomatoes
Juice of 2 limes
1 package (8 oz.) small corn tortillas, cut into 1/4-in.-thick strips (see Notes)
2 pounds boneless, skinless chicken breast, cut into 1/4-in.-thick strips
1 cup chopped fresh cilantro
Sliced avocado, sour cream, grated Monterey jack cheese, additional chopped cilantro, and/or sliced green onions for topping

1. Heat 1 tbsp. vegetable oil in a large pot (at least 5 qts.) over medium heat. Add onions and cook until translucent, 5 to 7 minutes. Stir in two-thirds of the garlic, 1 tbsp. salt, cumin, and chile flakes and cook 2 minutes.
2. Add broth, tomatoes, and half the lime juice and increase heat to a gentle simmer; cook 20 minutes.

3. Meanwhile, pour about 1 in. of vegetable oil into a small frying pan set over medium-high heat. When oil is hot but not smoking, add one-third of the tortilla strips and cook until golden brown and crisp, about 2 minutes. With a slotted spoon, transfer strips to a paper towel-lined baking pan. Repeat with remaining tortilla strips in two batches. Sprinkle with 1 tsp. salt. Set aside.

4. Purée soup in batches in a blender. Return soup to pot and resume simmering. In a small bowl, toss chicken with remaining lime juice, garlic, and 1/2 tsp. salt. Marinate at room temperature for 10 minutes, then add to soup and simmer 5 minutes, until chicken is just cooked through. Stir in cilantro. Serve hot with tortilla strips and your choice of toppings.

Yield:  Makes about 4 1/2 qts. (serving size: 1 cup)

Sunset, JANUARY 2007$$,2,@cat4,NULL,PARSEDATETIME('2007-09-04','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Taku Lodge Basted Grilled Salmon', $$1/2 cup firmly packed brown sugar
1/2 cup dry white wine
1/4 cup lemon juice
About 1/2 teaspoon salt
About 1/4 teaspoon pepper
8 pieces (about 6 oz. each; max. 1 1/4 in. thick) boned, skinned wild salmon fillet
1/4 cup (1/8 lb.) butter
Lemon wedges

1. In a large, wide bowl or 9- by 13-inch baking dish, stir brown sugar, wine, lemon juice, 1/2 teaspoon salt, and 1/4 teaspoon pepper until sugar is dissolved.
2. Rinse fish and pat dry. Add to marinade and turn to coat. Cover and chill for 1 to 2 hours.

3. Lift salmon from marinade and transfer to a 12- by 17-inch baking pan. Pour marinade into a 1 1/2- to 2-quart pan over medium-high heat; add butter and stir until butter is melted and mixture is simmering, 4 to 5 minutes.

4. Lay salmon, skinned side down, on a generously oiled grill over a solid bed of medium-hot coals or medium-high heat on a gas grill (you can hold your hand at grill level only 3 to 4 seconds). Brush fish generously with the baste; close lid if using a gas grill. Cook until salmon pieces are well browned on the bottom, 3 1/2 to 4 minutes (keep a spray bottle filled with clean water on hand to spritz any flare-ups). With a wide spatula, carefully turn pieces; brush tops with baste and continue to cook, basting often, until the salmon is just opaque but still moist-looking in the center of the thickest part (cut to test), about 5 to 6 minutes longer. Discard any remaining baste.

5. Transfer salmon to a warm platter or plates and garnish with lemon wedges. Add more salt and pepper to taste. 

Yield:  Makes 8 servings

Sunset, MARCH 2003$$,2,@cat1,NULL,PARSEDATETIME('2007-09-04','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Creamy Leek and Potato Soup', $$Serves: 4  Prep time: 10 minutes  Cook time: 20 minutes

3 tablespoons olive oil
3 small leeks, ends trimmed, thinly sliced
1 teaspoon cumin
1 tablespoon grated fresh ginger
1 teaspoon smoked paprika
1 large apple, cored and diced
4 to 5 medium potatoes, cut into 1-inch chunks
2 to 3 cups vegetable or chicken broth
1 1/2 cups milk
Salt and freshly ground black pepper, to taste
Fresh chives, chopped 

In a large saucepan, heat olive oil over medium-high. Add leeks, saute 3 minutes. Add cumin, ginger and paprika, saute a minute. Add apple and potatoes, saute 1 minute. Add broth and milk, simmer. Reduce heat to medium, cover and simmer until potatoes are tender. Transfer to a blender and blend until smooth. Return to pan. Add salt, pepper. Garnish with chives.$$,2,@cat4,NULL,PARSEDATETIME('2007-09-17','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Butternut Squash Spice Cake', $$Prep and Cook Time: 1 1/2 hours. Notes: Extra mashed squash may be served hot with butter, salt, and pepper; stirred into soups or stews; or frozen for future cakes. 

1 small butternut squash
2 cups flour
1 teaspoon ground allspice
1 teaspoon ground cinnamon
1 teaspoon freshly ground nutmeg
1 teaspoon baking powder
3/4 teaspoon salt
1/2 teaspoon baking soda
1/4 teaspoon freshly ground black pepper
1/2 cup unsalted butter, at room temperature
1 1/2 cups packed light brown sugar
2 large eggs
1 teaspoon vanilla
Powdered sugar or whipped cream (optional)

1. Preheat oven to 350°. Cut squash in half lengthwise and remove seeds. Place the squash halves, cut side up, on a baking pan, then cover with foil and bake until tender when pierced with a fork, 20 to 30 minutes. Uncover and let sit until cool enough to handle, then use a spoon to scoop out the cooked squash from the peel. Mash with a fork. Measure out 1 cup of the squash and set aside any remaining for future use (see Notes).
2. Turn oven down to 325°. Butter an 8- by 8-in. baking pan and set aside.

3. In a small bowl, combine flour, allspice, cinnamon, nutmeg, baking powder, salt, baking soda, and pepper. Set aside.

4. With a mixer, cream together butter and brown sugar in a large bowl until smooth and a bit fluffy. Add eggs one at a time, beating for 30 seconds after each addition. Mix in vanilla.

5. Add half of the flour mixture to the butter mixture and stir to combine. Stir in the cup of mashed squash. Add remaining flour mixture and stir just enough to combine. Pour batter into prepared baking pan and bake until a toothpick inserted in the center comes out clean, 50 to 60 minutes. Serve plain or with a dusting of powdered sugar or a dollop of whipped cream.

Yield:  Makes 8 servings
Sunset, OCTOBER 2006


$$,2,@cat2,NULL,PARSEDATETIME('2007-09-21','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Caramelized Onion-Apple Bites', $$These savory hors d'oeuvres can be assembled in advance—ideal for relaxed entertaining. Prep and Cook Time: 1 1/2 hours. Notes: The onion-apple topping can be made up to 2 days ahead. The triangles can be prepared, covered, and chilled the morning of a party, then popped into the oven when guests arrive. They can also be frozen, wrapped well, for up to 3 months (do not defrost before baking). 

3 tablespoons unsalted butter
1 pound yellow onions, thinly sliced
About 1/2 tsp. salt
2 Granny Smith or other tart apples, peeled, cored, and thinly sliced
1/4 teaspoon freshly ground black pepper
1 sheet frozen puff pastry, defrosted just before use
3 ounces fontina cheese, shredded
1 tablespoon minced fresh thyme leaves

1. Melt butter in a large frying pan over medium-high heat. Add onions and 1/2 tsp. salt. Cook, stirring occasionally, until onions are soft, about 5 minutes. Add apples and stir to coat. Reduce heat to medium and cook, stirring often, until onions are medium brown, about 30 minutes. Stir in pepper and salt to taste. Set aside and let cool, about 10 minutes.
2. Preheat oven to 375°. Unwrap puff pastry sheet. Cut sheet into 16 squares, then halve those squares diagonally to make 32 triangles. Arrange them, not touching, on a baking sheet.

3. Place a spoonful of cooled onion-apple mixture on each triangle. Top with a sprinkle of shredded cheese and minced thyme. Bake until puffed and golden, 15 to 20 minutes. Serve hot.

Yield:  Makes 32 hors d'oeuvres
Sunset, NOVEMBER 2007

$$,2,@cat3,NULL,PARSEDATETIME('2007-11-11','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Mediterranean Rice Salad', $$The bright flavors of this dish make it the perfect side dish for anything grilled. Prep and Cook Time: 45 minutes. 

1 1/2 teaspoons salt
1 1/2 cups long-grain rice
1/4 cup fresh lemon juice
1/3 cup extra-virgin olive oil
1 clove garlic, minced
1 teaspoon fresh oregano, minced
1/4 teaspoon freshly ground black pepper
1/8 to 1/4 tsp. red pepper flakes
2 cups chopped spinach leaves
1 red bell pepper, finely chopped
1 small cucumber, peeled, seeded, and finely chopped
1/2 cup chopped green onion
1/2 cup chopped kalamata olives
1 cup crumbled feta cheese

1. In a medium saucepan, bring 2 1/2 cups water to a boil. Add 1/2 tsp. salt and the rice. Turn heat to low, cover, and simmer 15 minutes. Remove from heat and let sit 5 minutes. Uncover and fluff with a fork.
2. In a large bowl, whisk lemon juice, olive oil, garlic, oregano, pepper, pepper flakes, and remaining tsp. salt.

3. Add rice to dressing and toss to combine. Add spinach, toss, and let sit until no longer steaming, about 20 minutes. Add remaining ingredients and toss to combine. Serve at room temperature or cold.

Note: Nutritional analysis is per serving.



Yield:  Makes 6 to 8 servings

CALORIES 289 (47% from fat); FAT 15g (sat 4.2g); PROTEIN 5.6g; CHOLESTEROL 15mg; SODIUM 793mg; FIBER 1.3g; CARBOHYDRATE 32g 

Sunset, SEPTEMBER 2006

$$,2,@cat5,NULL,PARSEDATETIME('2007-09-21','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Carrot-Sweet Potato Soup', $$2 teaspoons olive oil
1 onion (8 oz.), peeled and chopped
2 cloves garlic, peeled and minced
1 tablespoon minced fresh ginger
2 teaspoons curry powder
1 teaspoon ground cumin
1/4 teaspoon cayenne
1 can (15 oz.) garbanzos, drained and rinsed
1 pound carrots, peeled and chopped
1 sweet potato (about 1 lb.), peeled and cut into 1-inch chunks
6 cups fat-skimmed chicken broth
3 tablespoons lemon juice
Salt and pepper

1. Pour oil into a 4- to 6-quart pan over medium-high heat. When hot, add onion, garlic, and ginger; stir often until onion is limp, about 5 minutes. Add curry powder, cumin, and cayenne; cook until fragrant, about 1 minute.
2. Add garbanzos, carrots, sweet potato, and broth; bring to a boil. Reduce heat to maintain a simmer, cover, and cook, stirring occasionally, until vegetables are tender when pierced, 30 minutes.

3. Whirl in batches in a blender or food processor until smooth. Return to pan and stir in lemon juice and salt and pepper to taste. Heat until steaming, then ladle into bowls. 

Yield:  Makes about 9 cups; 4 to 6 servings

CALORIES 203 (14% from fat); FAT 3.1g (sat 0.3g); PROTEIN 13g; CHOLESTEROL 0.0mg; SODIUM 188mg; FIBER 6.5g; CARBOHYDRATE 32g 

Sunset, OCTOBER 2003


$$,2,@cat4,NULL,PARSEDATETIME('2007-09-24','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Old-Fashioned Chocolate Layer Cake', $$Source:  America's Test Kitchen

Do not substitute semisweet chocolate chips for the chopped semisweet chocolate in the frosting—chocolate chips contain less cocoa butter than bar chocolate and will not melt as readily. For best results, don't make the frosting until the cakes are cooled, and use the frosting as soon as it is ready. If the frosting gets too cold and stiff to spread easily, wrap the mixer bowl with a towel soaked in hot water and mix on low speed until the frosting appears creamy and smooth. Refrigerated leftover cake should sit at room temperature before serving until the frosting softens. 

Serves 10 to 12

Cake
 
12 tablespoons unsalted butter (1 1/2 sticks), very soft, plus extra for greasing pans  
1 3/4 cups unbleached all-purpose flour (8 3/4 ounces), plus extra for dusting pans  
4 ounces unsweetened chocolate , coarsely chopped  
1/4 cup Dutch-processed cocoa (3/4 ounce)  
1/2 cup hot water   
1 3/4 cups sugar (12 1/4 ounces)  
1 1/2 teaspoons baking soda   
1 teaspoon table salt   
1 cup buttermilk   
2 teaspoons vanilla extract   
4 large eggs   
2 large egg yolks   

Frosting
 
16 ounces semisweet chocolate , finely chopped  
8 tablespoons unsalted butter (1 stick)  
1/3 cup sugar   
2 tablespoons corn syrup   
2 teaspoons vanilla extract   
1/4 teaspoon table salt   
1 1/4 cups heavy cream (cold)  


1. FOR THE CAKE: Adjust oven rack to middle position; heat oven to 350 degrees. Grease two 9-inch-round by 2-inch-high cake pans with softened butter; dust pans with flour and knock out excess. Combine chocolate, cocoa powder, and hot water in medium heatproof bowl; set bowl over saucepan containing 1 inch of simmering water and stir with rubber spatula until chocolate is melted, about 2 minutes. Add 1/2 cup sugar to chocolate mixture and stir until thick and glossy, 1 to 2 minutes. Remove bowl from heat and set aside to cool. 

2. Whisk flour, baking soda, and salt in medium bowl. Combine buttermilk and vanilla in small bowl. In bowl of standing mixer fitted with whisk attachment, whisk eggs and yolks on medium-low speed until combined, about 10 seconds. Add remaining 1 1/4 cups sugar, increase speed to high, and whisk until fluffy and lightened in color, 2 to 3 minutes. Replace whisk with paddle attachment. Add cooled chocolate mixture to egg/sugar mixture and mix on medium speed until thoroughly incorporated, 30 to 45 seconds, pausing to scrape down sides of bowl with rubber spatula as needed. Add softened butter one tablespoon at a time, mixing about 10 seconds after each addition. Add about one-third of flour mixture followed by half of buttermilk mixture, mixing until incorporated after each addition (about 15 seconds). Repeat using half of remaining flour mixture and all of remaining buttermilk mixture (batter may appear separated). Scrape down sides of bowl and add remaining flour mixture; mix at medium-low speed until batter is thoroughly combined, about 15 seconds. Remove bowl from mixer and fold batter once or twice with rubber spatula to incorporate any remaining flour. Divide batter evenly between prepared cake pans; smooth batter to edges of pan with spatula.

3. Bake cakes until toothpick inserted into center comes out with a few crumbs attached, 25 to 30 minutes. Cool cakes in pans 15 minutes, then invert onto wire rack. Cool cakes to room temperature before frosting, 45 to 60 minutes.

4. TO MAKE FROSTING: Melt chocolate in heatproof bowl set over saucepan containing 1 inch of barely simmering water, stirring occasionally until smooth. Remove from heat and set aside. Meanwhile, heat butter in small saucepan over medium-low heat until melted. Increase heat to medium; add sugar, corn syrup, vanilla, and salt and stir with heatproof rubber spatula until sugar is dissolved, 4 to 5 minutes. Add melted chocolate, butter mixture, and cream to clean bowl of standing mixer and stir to thoroughly combine. 

5. Place mixer bowl over ice bath and stir mixture constantly with rubber spatula until frosting is thick and just beginning to harden against sides of bowl, 1 to 2 minutes (frosting should be 70 degrees). Place bowl on standing mixer fitted with paddle attachment and beat on medium-high speed until frosting is light and fluffy, 1 to 2 minutes. Stir with rubber spatula until completely smooth.

6. TO FROST CAKE: Place one cake layer on serving platter or cardboard round. Spread 1 1/2 cups frosting evenly across top of cake with spatula. Place second cake layer on top, then spread remaining frosting evenly over top and sides of cake. Cut into slices and serve.
$$,2,@cat2,NULL,PARSEDATETIME('2007-09-24','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Black Bean Soup with Chipotle Chiles', $$Source:  America's Test Kitchen

Dried beans tend to cook unevenly, so be sure to taste several beans to determine their doneness in step 1. For efficiency, you can prepare the soup ingredients while the beans simmer and the garnishes while the soup simmers. Though you do not need to offer all of the garnishes listed below, do choose at least a couple; garnishes are essential for this soup as they add not only flavor but texture and color as well. Leftover soup can be refrigerated in an airtight container for 3 or 4 days; reheat it in a saucepan over medium heat until hot, stirring in additional chicken broth if it has thickened beyond your liking. The addition of chipotle chiles in adobo--smoked jalapeños packed in a seasoned tomato-vinegar sauce--makes this a spicier, smokier variation on Black Bean Soup.

Makes about 9 Cups, Serving 6

Beans
 
1 pound dried black beans (2 cups), rinsed and picked over  
4 ounces ham steak , trimmed of rind  
2 bay leaves   
5 cups water   
1/8 teaspoon baking soda   
1 teaspoon table salt   

Soup
 
3 tablespoons olive oil   
2 large onions , chopped fine (about 3 cups)  
1 large carrot , chopped fine (about 1/2 cup)  
3 ribs celery , chopped fine (about 1 cup)  
1/2 teaspoon table salt   
5 - 6 medium cloves garlic , minced or pressed through garlic press (about 1 1/2 tablespoon)  
1 1/2 tablespoons ground cumin   
1 tablespoon minced chipotle chiles in adobo   
2 teaspoons adobo sauce   
6 cups low-sodium chicken broth   
2 tablespoons cornstarch   
2 tablespoon water   
2 tablespoons lime juice , from 1 to 2 limes  

Garnishes
 
 lime wedges   
 minced fresh cilantro leaves   
 red onion , finely diced  
 avocado , diced medium  
 sour cream   


1. FOR THE BEANS: Place beans, ham, bay, water, and baking soda in large saucepan with tight-fitting lid. Bring to boil over medium-high heat; using large spoon, skim scum as it rises to surface. Stir in salt, reduce heat to low, cover, and simmer briskly until beans are tender, 1 1/4 to 1 1/2 hours (if necessary, add another 1 cup water and continue to simmer until beans are tender); do not drain beans. Discard bay. Remove ham steak (ham steak darkens to color of beans), cut into 1/4-inch cubes, and set aside.

2. FOR THE SOUP: Heat oil in 8-quart Dutch oven over medium-high heat until shimmering but not smoking; add onions, carrot, celery, and salt and cook, stirring occasionally, until vegetables are soft and lightly browned, 12 to 15 minutes. Reduce heat to medium-low and add garlic and cumin; cook, stirring constantly, until fragrant, about 3 minutes. Stir in beans, bean cooking liquid, chipotle chiles, adobo sauce, and chicken broth. Increase heat to medium-high and bring to boil, then reduce heat to low and simmer, uncovered, stirring occasionally, to blend flavors, about 30 minutes. 

3. TO FINISH THE SOUP: Ladle 1 1?2 cups beans and 2 cups liquid into food processor or blender, process until smooth, and return to pot. Stir together cornstarch and water in small bowl until combined, then gradually stir about half of cornstarch mixture into soup; bring to boil over medium-high heat, stirring occasionally, to fully thicken. If soup is still thinner than desired once boiling, stir remaining cornstarch mixture to recombine and gradually stir mixture into soup; return to boil to fully thicken. Off heat, stir in lime juice and reserved ham; ladle soup into bowls and serve immediately, passing garnishes separately.$$,2,@cat4,NULL,PARSEDATETIME('2007-09-24','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Carrots with Lemon Dressing', $$Source:  Everyday Food

Serves 6.

3 pounds carrots, (15 to 20 medium), cut into pieces 2 inches long and 1/2 inch thick 
2 tablespoons olive oil 
1/8 teaspoon cayenne pepper 
Coarse salt 
2 tablespoons honey 
1/2 teaspoon grated lemon zest, and 3 tablespoons juice (from about 1 lemon) 
 
Directions
Preheat oven to 450 degrees. On a large rimmed baking sheet, toss carrots with oil and cayenne; season with salt. Arrange in a single layer (use two baking sheets if necessary). Roast, tossing once halfway through, until tender, 30 to 40 minutes. 
In a small bowl, whisk together honey, zest, and lemon juice; season with salt. If making ahead of time, cover and refrigerate carrots and dressing separately, up to 1 day. Otherwise, drizzle dressing over cooked carrots (still on baking sheet); toss to coat. Transfer to a serving dish; serve warm or at room temperature. 
$$,2,@cat5,@subcat2,PARSEDATETIME('2007-10-06','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Curried Cauliflower Soup', $$Source: Everday Food
Serves 4.

1 head cauliflower, (about 2 1/4 pounds), cut into florets (about 6 cups) 
2 tablespoons vegetable oil 
Salt 
1 tablespoon chopped butter 
3 onions, sliced 1 inch thick 
3 teaspoons curry powder 
1/4 tsp cayenne 
2 cups water 
4 cups reduced-sodium canned chicken or vegetable broth 
fresh parsley 
nutmeg

Preheat oven to 450 degrees. On a baking sheet, toss cauliflower with vegetable oil and 1 teaspoon salt. Spread out, and roast until the florets turn brown, about 25 minutes. 
In a medium saucepan, melt butter over medium-high heat. Add onions, and cook until soft, about 5 minutes. Stir in curry powder, cayenne, cauliflower, water, and broth; cover, and bring to a boil. Uncover, lower heat, and simmer 5 minutes. 
Using a slotted spoon, transfer 3 cups cauliflower to a bowl, and set aside. Put remaining florets into a blender or food processor, add 1 teaspoon salt, and process until smooth. Stir puree into broth in pan, and reheat if necessary. Season with salt and pepper.  Ladle soup into bowls, and top with reserved florets, parsley and nutmeg.  $$,2,@cat4,NULL,PARSEDATETIME('2007-10-06','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Spiced couscous with raisins and almonds', $$Bon Appétit | October 2007 Try this with the Moroccan-Style Roast Chicken.

Makes 4 to 6 servings

2 cups hot water
3/4 cup raisins
4 tablespoons ( 1/2 stick) butter, divided
3 tablespoons dry white wine
1/2 teaspoon saffron threads
1 cup couscous
1 medium onion, chopped (about 1 1/2 cups)
3/4 cup sliced almonds, toasted
2 teaspoons ground cinnamon 

Combine 2 cups hot water and raisins in small bowl. Soak raisins until softened, about 15 minutes. Drain water into large saucepan; reserve raisins. Add 2 tablespoons butter, wine, and saffron to pan; bring to boil. Stir in couscous. Cover, remove from heat, and let stand until liquid is absorbed, about 15 minutes.

Meanwhile, melt remaining 2 tablespoons butter in medium skillet over medium-low heat. Add onion; cover and cook until translucent and tender, stirring occasionally, about 8 minutes. Mix onion, reserved raisins, almonds, and cinnamon into couscous. Season to taste with salt and pepper and serve. $$,2,@cat5,@subcat3,PARSEDATETIME('2007-10-06','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Glazed Carrots With Orange and Ginger', $$New York Times
Time: 30 minutes

1 pound carrots, trimmed and peeled if necessary, cut into coins or sticks
2 tablespoons butter or extra virgin olive oil
Salt and freshly ground black pepper
1 tablespoon minced or grated peeled fresh ginger
1/3 cup freshly squeezed orange juice
1 teaspoon freshly squeezed lemon juice
Chopped fresh parsley, dill, mint, basil or chervil leaves for garnish (optional).

1. Combine all ingredients except garnish in a saucepan no more than 6 inches across. Bring to a boil, then cover and adjust heat so mixture simmers.

2. Cook, more or less undisturbed, until carrots are tender and liquid is almost gone, 10 to 20 minutes. Uncover and boil off remaining liquid, then add lemon juice. Taste and adjust seasoning if necessary. Serve hot or within an hour or two, garnished with herbs, if you like. 

Yield: 4 servings.$$,2,@cat5,@subcat2,PARSEDATETIME('2007-10-10','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Dark Chocolate Mousse', $$
from the Episode: Dark Chocolate Desserts

When developing this recipe, we used our winning supermarket brand of dark chocolate, Ghirardelli bittersweet, which contains about 60 percent cacao. If you choose to make the mousse a day in advance, leave it out at room temperature for 10 minutes before serving. Serve with very lightly sweetened whipped cream and chocolate shavings. A hand-held mixer can do the job of a standing mixer in this recipe, though mixing times may vary slightly.

Makes 3 1/2 cups (6 to 8 servings)
8 ounces bittersweet chocolate , chopped fine  
2 tablespoons cocoa powder (preferably Dutch-processed)  
1 teaspoon instant espresso powder   
5 tablespoons water   
1 tablespoon brandy   
2 large eggs , separated  
1 tablespoon sugar   
1/8 teaspoon table salt   
1 cup heavy cream , plus 2 additional tablespoons (chilled)  


1. Melt chocolate, cocoa powder, espresso powder, water, and brandy in medium heatproof bowl set over saucepan filled with 1 inch of barely simmering water, stirring frequently until smooth. Remove from heat. 

2. Whisk egg yolks, 1 1/2 teaspoons sugar, and salt in medium bowl until mixture lightens in color and thickens slightly, about 30 seconds. Pour melted chocolate into egg mixture and whisk until combined. Let cool until just warmer than room temperature, 3 to 5 minutes.

3. In clean bowl of standing mixer fitted with whisk attachment, beat egg whites at medium-low speed until frothy, 1 to 2 minutes. Add remaining 1 1/2 teaspoons sugar, increase mixer speed to medium-high, and beat until soft peaks form when whisk is lifted, about 1 minute. Detach whisk and bowl from mixer and whisk last few strokes by hand, making sure to scrape any unbeaten whites from bottom of bowl. Using whisk, stir about one-quarter of beaten egg whites into chocolate mixture to lighten it; gently fold in remaining egg whites with rubber spatula until a few white streaks remain.

4. In now-empty bowl, whip heavy cream at medium speed until it begins to thicken, about 30 seconds. Increase speed to high and whip until soft peaks form when whisk is lifted, about 15 seconds more. Using rubber spatula, fold whipped cream into mousse until no white streaks remain. Spoon into 6 to 8 individual serving dishes or goblets. Cover with plastic wrap and refrigerate until set and firm, at least 2 hours. (The mousse may be covered and refrigerated for up to 24 hours.)

$$,2,@cat2,NULL,PARSEDATETIME('2007-10-10','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Premium Dark Chocolate Mousse', $$
from the Episode: Dark Chocolate Desserts

This recipe is designed to work with a boutique chocolate that contains a higher percentage of cacao than the Ghirardelli chocolate recommended in our Dark Chocolate Mousse. A handheld mixer can easily do the job of a standing mixer in this recipe, though mixing times may vary slightly. 

Makes 3 1/2 cups (6 to 8 servings)
8 ounces bittersweet chocolate , 62 to 70 percent cacao, chopped fine  
3 tablespoons granulated sugar   
2 tablespoons Cocoa powder , preferably Dutch-processed  
1 teaspoon instant espresso powder   
7 tablespoons water   
1 tablespoon brandy   
3 large eggs , separated  
1/8 teaspoon table salt   
1 cup heavy cream , plus 2 more tablespoons (chilled)  


1. Melt chocolate, 2 tablespoons sugar, cocoa powder, espresso powder, water, and brandy in medium heatproof bowl set over saucepan filled with 1 inch of barely simmering water, stirring frequently until smooth. Remove from heat. 

2. Whisk egg yolks, 1 1/2 teaspoons sugar, and salt in medium bowl until mixture lightens in color and thickens slightly, about 30 seconds. Pour melted chocolate into egg mixture and whisk until thoroughly combined. Let cool until slightly warmer than room temperature, 3 to 5 minutes.

3. In clean bowl of standing mixer fitted with whisk attachment, beat egg whites at medium-low speed until frothy, 1 to 2 minutes. Add remaining 1 1/2 teaspoons sugar, increase mixer speed to medium-high, and beat until soft peaks form when whisk is lifted, about 1 minute. Detach whisk and bowl from mixer and whisk last few strokes by hand, making sure to scrape any unbeaten whites from bottom of bowl. Using whisk, stir about one-quarter of beaten egg whites into chocolate mixture to lighten it; gently fold in remaining egg whites with rubber spatula until a few white streaks remain.

4. Whip heavy cream at medium speed until it begins to thicken, about 30 seconds. Increase speed to high and whip until soft peaks form when whisk is lifted, about 15 seconds longer. Using rubber spatula, gently fold whipped cream into mousse until no white streaks remain. Spoon mousse into 6 to 8 individual serving dishes or goblets. Cover with plastic wrap and refrigerate until set and firm, at least 2 hours. (The mousse may be covered and refrigerated for up to 24 hours.) 
$$,2,@cat2,NULL,PARSEDATETIME('2007-10-10','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Easy Vanilla Bean Buttercream', $$
from the Episode: Dark Chocolate Desserts

If you prefer to skip the vanilla bean, increase the extract to 1 1/2 teaspoons. Any of the buttercream frostings (see related recipes) can be made ahead and refrigerated; if refrigerated, however, they must stand at room temperature to soften before use. If using a hand-held mixer, increase mixing times significantly (at least 50 percent). This recipe can be doubled to make enough for a two-layer cake.

Makes 1 1/2 cups, enough for 12 cupcakes
10 tablespoons unsalted butter , softened  
1/2 vanilla bean , halved lengthwise  
1 1/4 cups confectioners' sugar (5 ounces)  
 Pinch table salt   
1/2 teaspoon vanilla extract   
1 tablespoon heavy cream   


In standing mixer fitted with whisk attachment, beat butter at medium-high speed until smooth, about 20 seconds. Using paring knife, scrape seeds from vanilla bean into butter and beat mixture at medium-high speed to combine, about 15 seconds. Add confectioners' sugar and salt; beat at medium-low speed until most of the sugar is moistened, about 45 seconds. Scrape down bowl and beat at medium speed until mixture is fully combined, about 15 seconds; scrape bowl, add vanilla and heavy cream, and beat at medium speed until incorporated, about 10 seconds, then increase speed to medium-high and beat until light and fluffy, about 4 minutes, scraping down bowl once or twice.

$$,2,@cat2,NULL,PARSEDATETIME('2007-10-10','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Easy Chocolate Buttercream', $$
from the Episode: Dark Chocolate Desserts

Any of the buttercream frostings (see related recipes) can be made ahead and refrigerated; if refrigerated, however, they must stand at room temperature to soften before use. If using a hand-held mixer, increase mixing times significantly (at least 50 percent). 

Makes 1 1/2 cups, enough for 12 cupcakes
10 tablespoons unsalted butter , softened  
1 cups confectioners' sugar   
 Pinch table salt   
1/2 teaspoon vanilla extract   
4 ounces semisweet or bittersweet chocolate , melted and cooled  


In standing mixer fitted with whisk attachment, beat butter at medium-high speed until smooth, about 20 seconds. Add confectioners' sugar and salt; beat at medium-low speed until most of the sugar is moistened, about 45 seconds. Scrape down bowl and beat at medium speed until mixture is fully combined, about 15 seconds; scrape bowl, add vanilla and beat at medium speed until incorporated, about 10 seconds, then reduce speed to low and gradually beat in chocolate. Increase speed to medium-high and beat until light and fluffy, about 4 minutes, scraping down bowl once or twice.


$$,2,@cat2,NULL,PARSEDATETIME('2007-10-10','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Easy Peppermint Buttercream', $$
from the Episode: Dark Chocolate Desserts

Any of the buttercream frostings (see related recipes) can be made ahead and refrigerated; if refrigerated, however, they must stand at room temperature to soften before use. If using a hand-held mixer, increase mixing times significantly (at least 50 percent). This recipe can be doubled to make enough for a two-layer cake.

Makes 1 1/2 cups, enough for 12 cupcakes
10 tablespoons unsalted butter , softened  
1 1/4 cups confectioners' sugar (5 ounces)  
 Pinch table salt   
1/4 teaspoon vanilla extract   
3/4 teaspoon peppermint extract   
1 tablespoon heavy cream   


In standing mixer fitted with whisk attachment, beat butter at medium-high speed until smooth, about 20 seconds. Add confectioners' sugar and salt; beat at medium-low speed until most of the sugar is moistened, about 45 seconds. Scrape down bowl and beat at medium speed until mixture is fully combined, about 15 seconds; scrape bowl, add vanilla, peppermint extract, and heavy cream, and beat at medium speed until incorporated, about 10 seconds, then increase speed to medium-high and beat until light and fluffy, about 4 minutes, scraping down bowl once or twice.

$$,2,@cat2,NULL,PARSEDATETIME('2007-10-10','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Curried Butternut Squash Soup with Cilantro Yogurt', $$from the Episode: Cooking with Squash

If you don't own a folding steamer basket, a pasta pot with a removable pasta insert works well. Sprinkle lightly toasted pumpkin seeds over each bowl of soup for a nice textural contrast.

Makes 1 1/2 quarts, serving 4 to 6
4 tablespoons unsalted butter   
2 medium shallots , minced (about 4 tablespoons)  
3 pounds butternut squash (about 1 large), unpeeled, squash halved lengthwise, seeds and stringy fibers scraped with spoon and reserved (about 1/4 cup), and each half cut into quarters  
 Table salt   
1/4 cup plain yogurt   
2 tablespoons minced fresh cilantro leaves   
1 teaspoon lime juice   
1 1/2 teaspoons curry powder   
1/2 cup heavy cream   
1 teaspoon dark brown sugar   


1. Heat butter in large Dutch oven over medium-low heat until foaming; add shallots and cook, stirring frequently, until softened and translucent, about 3 minutes. Add squash scrapings and seeds and cook, stirring occasionally, until fragrant and butter turns saffron color, about 4 minutes. Add 6 cups water and 1 1/2 teaspoons salt to Dutch oven and bring to boil over high heat; reduce heat to medium-low, place squash cut-side down in steamer basket, and lower basket into pot. Cover and steam until squash is completely tender, about 30 minutes.

2. While squash is steaming, stir together plain yogurt, minced cilantro, lime juice, and 1/8 teaspoon salt in small bowl.

3. Off heat, use tongs to transfer squash to rimmed baking sheet; reserve steaming liquid. When cool enough to handle, use large spoon to scrape flesh from skin into medium bowl; discard skin.

2. Pour reserved steaming liquid through mesh strainer into second bowl; discard solids in strainer. Rinse and dry Dutch oven.

3. In blender, puree squash and reserved liquid in batches, pulsing on low until smooth. While pureeing, add curry powder. Transfer puree to Dutch oven; stir in cream and brown sugar and heat over medium-low heat until hot. Add salt to taste; serve immediately, garnishing each bowl of soup with a dollop of cilantro yogurt.

$$,2,@cat4,NULL,PARSEDATETIME('2007-10-10','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Silky Butternut Squash Soup', $$
from the Episode: Cooking with Squash

If you don’t own a folding steamer basket, a pasta pot with a removable pasta insert works well. Some nice garnishes for the soup are freshly grated nutmeg, a drizzle of balsamic vinegar, a sprinkle of paprika, or Buttered Cinnamon-Sugar Croutons, (see related recipe).

Makes 1 1/2 quarts, serving 4 to 6
4 tablespoons unsalted butter   
2 medium shallots , minced (about 4 tablespoons)  
3 pounds butternut squash (about 1 large), unpeeled, squash halved lengthwise, seeds and stringy fibers scraped with spoon and reserved (about 1/4 cup), and each half cut into quarters  
 Table salt   
1/2 cup heavy cream   
1 teaspoon dark brown sugar   


1. Heat butter in large Dutch oven over medium-low heat until foaming; add shallots and cook, stirring frequently, until softened and translucent, about 3 minutes. Add squash scrapings and seeds and cook, stirring occasionally, until fragrant and butter turns saffron color, about 4 minutes. Add 6 cups water and 1 1/2 teaspoons salt to Dutch oven and bring to boil over high heat; reduce heat to medium-low, place squash cut-side down in steamer basket, and lower basket into pot. Cover and steam until squash is completely tender, about 30 minutes. Off heat, use tongs to transfer squash to rimmed baking sheet; reserve steaming liquid. When cool enough to handle, use large spoon to scrape flesh from skin into medium bowl; discard skin.

2. Pour reserved steaming liquid through mesh strainer into second bowl; discard solids in strainer. Rinse and dry Dutch oven.

3. In blender, puree squash and reserved liquid in batches, pulsing on low until smooth. Transfer puree to Dutch oven; stir in cream and brown sugar and heat over medium-low heat until hot. Add salt to taste; serve immediately.
$$,2,@cat4,NULL,PARSEDATETIME('2007-10-10','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Carnival Squash Soup', $$2 medium size Carnival Squash
2 tablespoons olive oil
3/4 cup sliced onion
3-4 cups chicken broth
salt and pepper
2 tablespoons butter
1/4 cup heavy cream (optional)
fresh sage
grated parmesan

Preheat oven to 350 degrees.


Cut tops off of squash and scoop out seeds, drizzle with olive oil and sprinkle with salt. Roast in oven about 45 minutes. When cool, scoop out flesh. Reserve. Saute onion in olive oil and add squash flesh and chicken broth. Cook for about 20 minutes, stirring occasionally. Puree with hand immersion blender until smooth. Season with salt and white pepper. Add butter to smooth out soup. Stir in cream if desired. Top with parmesan cheese and fried sage leaves.  If fresh sage is not available, stir in dried sage. 

Fried sage leaves.

Heat 2 inches of oil in pan. Fry sage leaves for about 20 seconds or until translucent. Remove from oil and drain on paper towels. Sprinkle with salt.

Serves 2-4$$,2,@cat4,NULL,PARSEDATETIME('2007-10-20','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Cranberry-Pear Crisp', $$1 cup all-purpose flour
1/2 cup granulated sugar
1/4 cup light brown sugar
1/2 teaspoon cinnamon
1/4 teaspoon nutmeg
1/4 teaspoon salt
1/2 cup (1/4 lb.) cold butter, cut into chunks
1/4 cup chopped walnuts
3 pounds firm-ripe pears, peeled, cored, and cut into 1-inch chunks
1 cup fresh cranberries, rinsed and any bruised or decaying berries discarded

1. In a bowl, mix flour, 1/4 cup granulated sugar, the brown sugar, cinnamon, nutmeg, and salt. With a mixer fitted with a paddle attachment on low speed, or your fingers, mix or rub in butter until mixture forms coarse crumbs and begins to come together. Stir in walnuts.
2. In a large bowl, mix pears, cranberries, and remaining 1/4 cup granulated sugar. Divide fruit among eight 8-ounce ramekins or pour into a 9-inch square or round baking dish; spread level. Top evenly with flour mixture.

3. Bake in a 375° regular or convection oven until juices are bubbly, pears are tender when pierced, and topping is golden brown, 30 to 35 minutes for ramekins, 40 to 50 minutes for large crisp. $$,2,@cat2,NULL,PARSEDATETIME('2007-11-11','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Latkes- Classic Potato', $$Prep and Cook Time: 1 hour, 15 minutes. Notes: See \"Tips for Terrific Latkes,\" below. 


3 pounds russet potatoes, rinsed and peeled
2 large yellow onions, peeled and quartered lengthwise
4 large eggs, beaten
About 1/2 cup matzo meal
1 tablespoon coarse kosher salt
1 teaspoon freshly ground black pepper
Vegetable oil for frying
Sour cream and applesauce

1. Fill a large mixing bowl three-quarters full with cold water. Using the coarse side of a box grater or a food processor fitted with a medium-coarse grating disk, grate potatoes, transferring them to the water as you go. Let potatoes stand in water 20 minutes. Meanwhile, grate onion in the same way and set aside.
2. Pour potato mixture into a fine-mesh colander and rinse well with water. Pour onions into colander with potatoes and toss together. Rinse bowl and wipe dry.

3. Take a large handful of potato-onion mixture and squeeze to remove some of the water. Pile mixture onto a clean kitchen towel, gather towel corners up into one hand, and twist hard to wring out any remaining moisture. Repeat with rest of mixture, using fresh towels if needed. Return mixture to bowl.

4. Add eggs, matzo meal, salt, and pepper to potato mixture and toss to mix well. If at any time you notice a pool of liquid in the bottom of the bowl, stir in more matzo meal, 2 tbsp. at a time.

5. Pour 3/4 in. oil into a 10- to 12-in. frying pan (with sides at least 2 in. high) over medium-high heat. When oil reaches 350°, scoop 1/4 cup of potato mixture from bowl, then gently turn onto a wide spatula. Press into a patty about 1/3 in. thick, then gently slide pancake into hot oil. Cook 3 or 4 pancakes at a time (do not crowd pan) until edges are crispy and well browned and undersides are golden brown, 2 to 3 minutes. Gently turn and cook until other sides are golden brown, 2 to 3 minutes longer.

6. Transfer pancakes to paper towels to drain briefly, then keep warm in a 200° oven while you cook remaining pancakes. Serve pancakes hot, with sour cream and applesauce.

Tips for Terrific Latkes: Soaking, rinsing, and drying the grated potatoes removes excess starch and makes the latkes crispy (not necessary for sweet potatoes).

Use restraint when adding eggs and matzo meal. Too much will make the latkes heavy.

Keep oil between 300° and 350° while frying to prevent latkes from turning greasy. Check heat with a candy thermometer and adjust heat accordingly.

If making latkes ahead, let cool on paper towels, then arrange in a single layer in a zip-lock plastic bag and refrigerate up to 3 days. Reheat in a 300° oven until crispy and hot, about 15 minutes.

Note: Nutritional analysis is per latke. 

Yield:  Makes about 20 latkes

CALORIES 124 (40% from fat); FAT 5.5g (sat 0.9g); PROTEIN 3.2g; CHOLESTEROL 42mg; SODIUM 311mg; FIBER 1.2g; CARBOHYDRATE 16g 

Sunset, DECEMBER 2006$$,2,@cat6,NULL,PARSEDATETIME('2007-11-25','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Latkes- Herbed Yukon Gold Potato', $$Flavored with chives, parsley, rosemary, and thyme, these elegant latkes also make a great starter course or brunch entrée. Prep and Cook Time: 1 hour, 10 minutes. Notes: The skins of Yukon Golds are so thin that there's no need to peel them--just clean them well. See \"Tips for Terrific Latkes\" (below) for more ideas. 


3 1/2 pounds Yukon Gold potatoes, scrubbed, with any brown spots or eyes removed
5 large eggs, beaten
About 1/2 cup matzo meal
3/4 cup finely chopped fresh chives
1/2 cup chopped fresh parsley
2 teaspoons chopped fresh thyme leaves
2 teaspoons chopped fresh rosemary leaves
1 tablespoon coarse kosher salt
1 teaspoon freshly ground black pepper
Vegetable oil for frying
9 to 12 oz. thinly sliced smoked salmon, cut into 20 to 25 slices (optional)
Sour cream
thinly sliced red onion and/or 2-in. lengths of chive
capers

1. Fill a large mixing bowl three-quarters full with cold water. Using the coarse side of a box grater or a food processor fitted with a medium-coarse grating disk, grate potatoes, transferring them to the water as you go. Let potatoes stand in water 15 minutes.
2. Pour potatoes into a fine-mesh colander and rinse well with water. Rinse mixing bowl and wipe dry.

3. Take a large handful of potato and squeeze to remove some water. Pile onto a clean kitchen towel, gather towel corners up into one hand, and twist hard to wring out any remaining moisture. Repeat with rest of potatoes, using fresh towels if needed. Return mixture to bowl.

4. In a medium bowl, stir together eggs, matzo meal, herbs, salt, and pepper, then pour over potatoes and toss to mix well. If at any time you notice a pool of liquid in the bottom of the bowl, toss in more matzo meal, 2 tbsp. at a time.

5. Pour 3/4 in. oil into a 10- to 12-in. frying pan (with sides at least 2 in. high) over medium-high heat. When oil reaches 350°, scoop a scant 1/4 cup of potato mixture from bowl, then gently turn onto a wide spatula. Press into a patty about 1/3 in. thick, then gently slide pancake into hot oil. Cook 3 or 4 pancakes at a time (do not crowd pan) until edges are crispy and well browned and undersides are golden brown, 2 to 3 minutes. Gently turn and cook until other sides are golden brown, 2 to 3 minutes longer.

6. Transfer pancakes to paper towels to drain briefly, then keep warm in a 200° oven while you cook remaining pancakes. Serve with sliced smoked salmon, sour cream, onion and/or chives, and capers.

Tips for Terrific Latkes: Soaking, rinsing, and drying the grated potatoes removes excess starch and makes the latkes crispy (not necessary for sweet potatoes).

Use restraint when adding eggs and matzo meal. Too much will make the latkes heavy.

Keep oil between 300° and 350° while frying to prevent latkes from turning greasy. Check heat with a candy thermometer and adjust heat accordingly.

If making latkes ahead, let cool on paper towels, then arrange in a single layer in a zip-lock plastic bag and refrigerate up to 3 days. Reheat in a 300° oven until crispy and hot, about 15 minutes.

Note: Nutritional analysis is per latke. 

Yield:  Makes 20 to 24 latkes

CALORIES 122 (41% from fat); FAT 5.6g (sat 0.9g); PROTEIN 3.2g; CHOLESTEROL 44mg; SODIUM 263mg; FIBER 0.9g; CARBOHYDRATE 14g 

Sunset, DECEMBER 2006$$,2,@cat6,NULL,PARSEDATETIME('2007-11-25','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Latkes- Sweet Potato-Parsnip', $$Prep and Cook Time: 1 hour, 10 minutes. Notes: See \"Tips for Terrific Latkes,\" below. 


2 pounds Garnet sweet potatoes (often labeled \"yams\"), rinsed and peeled
1 pound parsnips, peeled
10 shallots, peeled
6 large eggs, beaten
3/4 cup plus 2 tbsp. matzo meal
1 tablespoon coarse kosher salt
1 teaspoon freshly ground black pepper
Vegetable oil for frying
Gingered Sour Cream

1. Using the coarse side of a box grater or a food processor fitted with a medium-coarse grating disk, grate potatoes, parsnips, and shallots. Toss together in a large bowl.
2. Add eggs, matzo meal, salt, and pepper to potato mixture and toss to mix well.

3. Pour 3/4 in. oil into a 10- to 12-in. frying pan (with sides at least 2 in. high) over medium-high heat. When oil reaches 350°, scoop 1/3 cup of potato mixture from bowl, then gently turn onto a wide spatula. Press into a patty about 1/3 in. thick, then gently slide pancake into hot oil. Cook 3 or 4 pancakes at a time (do not crowd pan) until edges are crispy and well browned and undersides are golden brown, 2 to 3 minutes. Gently turn and cook until other sides are golden brown, 2 to 3 minutes longer.

4. Transfer pancakes to paper towels to drain briefly, then keep warm in a 200° oven while you cook remaining pancakes. Serve hot, with Gingered Sour Cream.

Tips for Terrific Latkes: Soaking, rinsing, and drying the grated potatoes removes excess starch and makes the latkes crispy (not necessary for sweet potatoes).

Use restraint when adding eggs and matzo meal. Too much will make the latkes heavy.

Keep oil between 300° and 350° while frying to prevent latkes from turning greasy. Check heat with a candy thermometer and adjust heat accordingly.

If making latkes ahead, let cool on paper towels, then arrange in a single layer in a zip-lock plastic bag and refrigerate up to 3 days. Reheat in a 300° oven until crispy and hot, about 15 minutes.

Note: Nutritional analysis is per latke. 

Yield:  Makes about 25 latkes

CALORIES 123 (39% from fat); FAT 5.3g (sat 0.9g); PROTEIN 2.7g; CHOLESTEROL 51mg; SODIUM 256mg; FIBER 2.1g; CARBOHYDRATE 16g 

Sunset, DECEMBER 2006$$,2,@cat6,NULL,PARSEDATETIME('2007-11-25','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Sweet-Potato Gratin', $$Both orange sweet potatoes (such as Garnet and Jewel varieties) and white sweet potatoes work well in this dish, but the vibrant orange ones bring a splash of color to the table. Prep and Cook Time: 1 hour. 


3 tablespoons butter
4 pounds sweet potatoes, peeled and cut crosswise into 1/4-in.-thick slices
3/4 cup grated parmesan cheese
2 cups heavy whipping cream
1 teaspoon salt
1/2 teaspoon freshly ground black pepper
1/4 teaspoon cayenne

1. Preheat oven to 400°. Butter a 9- by 13-in. baking dish with 1 tbsp. butter. Arrange a third of the sweet potatoes, overlapping slightly, in the dish. Sprinkle with 1/4 cup cheese. Repeat with two more layers of sweet potatoes and cheese.
2. In a small bowl, combine cream, salt, pepper, and cayenne. Pour over potatoes. Dot with the remaining 2 tbsp. butter. Cover dish with foil and bake 20 minutes. Remove foil and continue baking until sweet potatoes are tender and top is browned, 20 to 25 minutes.

Note: Nutritional analysis is per serving. 

Yield:  Makes 8 to 10 servings

CALORIES 400 (59% from fat); FAT 26g (sat 16g); PROTEIN 6.3g; CHOLESTEROL 88mg; SODIUM 461mg; FIBER 4.4g; CARBOHYDRATE 37g 

Sunset, DECEMBER 2006$$,2,@cat5,@subcat3,PARSEDATETIME('2007-11-25','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Clementine Sorbet', $$Prep Time: 40 minutes.  

2 1/2 pounds clementines (about 16)
1/3 cup sugar, or more to taste

1. Cut clementines in half crosswise and juice them.

2. Stir sugar into clementine juice. Taste and, if the mixture is sour, add more sugar. It should taste sweet-tart.

3. Pour mixture into an ice cream maker (at least 3-cup capacity) and freeze according to the manufacturer's instructions.

Note: Nutritional analysis is per 1/2-cup serving. 

Yield:  Makes about 3 cups

CALORIES 107 (3% from fat); FAT 0.4g (sat 0.0g); PROTEIN 0.8g; CHOLESTEROL 0.0mg; SODIUM 0.1mg; FIBER 0.0g; CARBOHYDRATE 25g 

Sunset, DECEMBER 2006$$,2,@cat2,@subcat1,PARSEDATETIME('2007-11-25','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Coriander Citrus Shrimp', $$Makes 16 to 20 pieces

Marinade:

1 tablespoon ground coriander
2 tablespoons orange juice concentrate
3 tablespoons olive oil
1 tablespoon finely minced orange zest
2 tablespoons fresh lime juice
1 tablespoon minced garlic
2 teaspoons Dijon mustard
¼ cup chopped cilantro
½ teaspoon red chili flakes
½ teaspoon salt
Nonstick cooking spray
1 pound large (16 to 20 per pound) raw shrimp/prawns
16 to 20 short (4- to 6-inch) skewers
Garnish: fresh cilantro sprigs

1. To marinate the shrimp: In a large bowl stir together the marinade ingredients until well combined.

2. Meanwhile, peel and devein the shrimp and remove the tails. (Or purchase cleaned raw shrimp.) Add shrimp to the marinade and stir to coat well. Cover and refrigerate for at least 1 hour or up to 4 hours. Soak the skewers in water for at least 1 hour.

3. To prepare the shrimp: Preheat oven to 450 degrees. Lightly spray a baking sheet with cooking spray and set aside. Skewer a shrimp, curled into a circle, on the tip of a skewer, so that it looks like a shrimp \"lollipop.\" (Be sure to thread both head and tail ends of shrimp onto the skewer.) As each skewer is done, lay it on the prepared baking sheet, spacing the skewers apart, not touching. Spoon some of the marinade on top of each shrimp. (Discard remaining marinade.)

4. Roast the shrimp for about 5 minutes or until just cooked through and pink. Serve the shrimp skewers on a platter and garnish with cilantro springs.

Copyright 2007, Kathy Casey Food Studios

$$,2,@cat3,NULL,PARSEDATETIME('2007-12-05','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Biscuit-topped Chicken Potpies', $$For a grown-up take on this childhood favorite, we dropped the traditional pastry crust in favor of a no-fuss biscuit topping, then added cremini mushrooms and fresh thyme to the filling for a little earthiness. Prep and Cook Time: 1 hour, 45 minutes. Notes: One standard-size rotisserie chicken supplies just enough meat for the pies. You will need six or seven 8- to 10-oz. ovenproof containers for this recipe. 


2 1/2 cups reduced-sodium chicken stock
3 carrots, peeled and finely chopped
2 medium Yukon Gold potatoes, peeled and finely chopped
1 stalk celery, finely chopped
4 tablespoons salted butter
1 medium onion, finely chopped
12 small cremini or button mushrooms, finely chopped
1 teaspoon chopped fresh thyme
5 tablespoons plus 2 cups flour
1 cup milk
1/4 teaspoon freshly grated nutmeg
2 teaspoons salt
Freshly ground black pepper
2 teaspoons finely chopped flat-leaf parsley
2 1/2 cups chopped cooked chicken, preferably a mixture of white and dark meat (see Notes)
1/4 cup frozen sweet peas
1 1/2 teaspoons baking powder
1/2 teaspoon baking soda
5 tablespoons cold unsalted butter, cubed
1/2 cup grated sharp cheddar cheese
2 teaspoons minced fresh sage
1 egg
1/2 cup plus 2 tbsp. well-shaken buttermilk
Egg wash (1 egg yolk whisked with 1 tbsp. milk)

1. In a medium saucepan over high heat, bring chicken stock to a boil. Add carrots, potatoes, and celery. Lower heat to medium and cook until vegetables are tender, 5 to 7 minutes. Drain vegetables, reserving stock; set both aside separately.
2. In a large, heavy-bottomed saucepan, melt salted butter over medium heat. Add onion and cook until golden, 6 to 8 minutes. Add mushrooms and cook 5 minutes. Add fresh thyme and 5 tbsp. flour and cook 2 minutes. Slowly add milk, whisking constantly, until combined, then add stock and cook, stirring often, until mixture thickens, 8 to 10 minutes. Season with nutmeg, 1 tsp. salt, and pepper to taste. Add parsley, chicken, cooked vegetables, and peas and divide filling evenly among 6 or 7 ovenproof containers (8 to 10 oz. each), leaving the top 1/4 in. unfilled.

3. Preheat oven to 425°. To make biscuit topping, sift remaining 2 cups flour with baking powder, baking soda, and remaining 1 tsp. salt. Using your fingers or a pastry cutter, work in unsalted butter to form a coarse meal, working quickly to keep the butter from warming up and melting into the dough. Stir in cheese and sage. In a separate bowl, whisk together egg and buttermilk and add to the flour mixture, stirring gently until a shaggy dough forms.

4. Lightly flour a counter, a rolling pin, and your hands. Divide dough into 2 balls. Roll out first ball to a 1/4-in. thickness, then use a 2 1/2-in. biscuit cutter to cut into rounds, scraping and rerolling dough as needed. Repeat with second ball.

5. Place 3 rounds of dough on each potpie, overlapping as necessary (any unused rounds can be baked on their own as biscuits). Brush dough with egg wash, put potpies on a cookie sheet lined with aluminum foil, and bake until crust is golden brown and filling is bubbling, 17 to 22 minutes.

Note: Nutritional analysis is per serving. 

Yield:  Makes 6 or 7 individual potpies

CALORIES 538 (42% from fat); FAT 25g (sat 13g); PROTEIN 28g; CHOLESTEROL 160mg; SODIUM 1034mg; FIBER 3.5g; CARBOHYDRATE 51g 

Sunset, JANUARY 2007


$$,2,@cat1,NULL,PARSEDATETIME('2007-12-06','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Pasta with Pumpkin and Sausage', $$1 tablespoon extra-virgin olive oil, plus 1 tablespoon 
1 pound bulk sweet Italian sausage 
4 cloves garlic, cracked and chopped 
1 medium onion, finely chopped 
1 bay leaf, fresh or dried 
4 to 6 sprigs sage leaves, cut into chiffonade, about 2 tablespoons 
1 cup dry white wine 
1 cup chicken stock, canned or paper container 
1 cup canned pumpkin 
1/2 cup (3 turns around the pan) heavy cream 
1/8 teaspoon ground cinnamon 
1/2 teaspoon ground nutmeg, ground or freshly grated 
Coarse salt and black pepper 
1 pound penne rigate, cooked to al dente 
Romano or Parmigiano, for grating 

Heat a large, deep nonstick skillet over medium high heat. Add 1 tablespoon of olive oil to the pan and brown the sausage in it. Transfer sausage to paper towel lined plate. Drain fat from skillet and return pan to the stove. Add the remaining tablespoon oil, and then the garlic and onion. Saute 3 to 5 minutes until the onions are tender. 
Add bay leaf, sage, and wine to the pan. Reduce wine by half, about 2 minutes. Add stock and pumpkin and stir to combine, stirring sauce until it comes to a bubble. Return sausage to pan, reduce heat, and stir in cream. Season the sauce with the cinnamon and nutmeg, and salt and pepper, to taste. Simmer mixture 5 to 10 minutes to thicken sauce. 

Return drained pasta to the pot you cooked it in. Remove the bay leaf from sauce and pour the sausage pumpkin sauce over pasta. Combine sauce and pasta and toss over low heat for 1 minute. Garnish the pasta with lots of shaved cheese and sage leaves. $$,2,@cat1,NULL,PARSEDATETIME('2007-12-12','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Spiced Molasses Cookies', $$2 1/4 cups all-purpose flour
2 tsp. baking soda
1 tsp. ground cinnamon
1 tsp. ground ginger
1/2 tsp. ground nutmeg
1/2 tsp. ground allspice
1/2 tsp. ground cloves
1/4 tsp. salt
12 Tbs. (1 1/2 sticks) unsalted butter, at room
  temperature
1 cup firmly packed dark brown sugar
1 egg
1/4 cup molasses
About 3 Tbs. granulated sugar

In a bowl, stir together the flour, baking soda, cinnamon, ginger, nutmeg, allspice, cloves and salt.

In a large bowl, using an electric mixer set on medium speed, beat together the butter and brown sugar until fluffy. Beat in the egg and molasses. Reduce the speed to low and add the flour mixture, mixing until blended. Cover the bowl and refrigerate for at least 1 hour or for up to 8 hours.

Preheat an oven to 350° F. Grease 2 baking sheets.

Place a large sheet of waxed paper on a work surface and sprinkle it with the granulated sugar. Using your palms, shape the dough into balls 1 1/4 inches in diameter. Then roll the balls in the granulated sugar, coating them evenly. Arrange the balls on the prepared baking sheets, spacing them about 2 inches apart.

Using the tines of a fork, press the fork into each cookie, pushing down to create a decorative top.

Bake until just set and lightly browned, 10 to 12 minutes. Remove from the oven and let cool on the sheets for 10 minutes. Gently transfer cookies to racks and let cool completely. Store in an airtight container at room temperature for up to 1 week. Makes about 40 cookies. 

Adapted from Williams-Sonoma Outdoors Series, Snow Country Cooking, by Diane Rossen Worthington (Time-Life Books, 1999). $$,2,@cat2,NULL,PARSEDATETIME('2007-12-16','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Pound Cake', $$Blend together---2 sticks margarine
                        1/2/C Crisco (solid)
                         3 C sugar
 
Add-----5 eggs --one at a time -mix well between each additional ingredient
           1/4 tsp salt
            1 c milk alternate with 3 c flour
            2Tbsp Butternut extract
Bake at 325 for 1 1/2 hours in greased and floured bunt pan
$$,2,@cat2,NULL,PARSEDATETIME('2008-01-09','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Banana Bread', $$1 c. sugar
1/2c shortening
2eggs
3ripe bananas
1 tsp baking soda
1/2 tsp salt
2c. flour
1/2c chopped nuts(opt)
Cream sugar and shortening. Add eggs, mix then add bananas and soda. Add flour salt and nuts. Mix bake in 4 small loaf pans for 30-35 min at 350.
You can also peel, bag and freeze the babanas if you don't want to use them right away
$$,2,@cat2,NULL,PARSEDATETIME('2008-01-09','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Peak of Summer Berry Crisp', $$topping
2/3 c old fashioned oats
2/3 c firm packed brown sugar
2/3 c flour
1/2 t cinnamon
6 T butter cold, cut into/diced

berries
2 c fresh raspberries
2c blueberries
1/2 c sugar (or less)
2 T flour

1- Preheat oven to 350.  Topping:  combine dry ingredients, add the
diced butter and beldnd with a pastry blender or tips of your fingers
until crumbly.  Set aside

2-In another bowl, toss the berries with the sugar and flour using a
rubber spatula.  Pour the berries into a 9 in pie pan.  Cover berriew
with the crisp topping  Set the filled pie pan on a baking sheet to
catch any juices, then place in the oven and bake until the toppping is
golden brown and the juices are bubbling.  40-45 min.

Spoon generous portions into wide shallow bowls andtop with scoops of
ice cream or whipped cream.  
$$,2,@cat2,NULL,PARSEDATETIME('2008-01-09','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'corn and crab chowder', $$1 16-ounce bag frozen petite white corn (do not thaw), divided
1 cup low-fat (1%) milk
1 8-ounce bottle clam juice
4 tablespoons sliced green onions, divided
2 teaspoons minced peeled fresh ginger, divided
4 1/2 teaspoons fresh lemon juice, divided
2 tablespoons (1/4 stick) butter
4 ounces cooked crabmeat, flaked 
 
Reserve 1/4 cup corn. Bring remaining corn and milk to boil in medium saucepan. Cover; remove from heat. Let stand 10 minutes. Puree mixture in blender. Add clam juice, 3 tablespoons green onions, and 1 teaspoon ginger; puree again until almost smooth. Return puree to saucepan; bring to simmer. Mix in 1 1/2 teaspoons lemon juice. Season with salt and pepper.

Melt butter in small skillet over medium heat. Add reserved 1/4 cup corn; sauté 1 minute. Add crab, 1 tablespoon green onions, 1 teaspoon ginger, and 3 teaspoons lemon juice; stir just until warm. Season with salt and pepper. Divide soup among bowls; mound crab mixture in center. 
 
$$,2,@cat4,NULL,PARSEDATETIME('2008-01-10','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Artichoke Dip (gluten free and vegetarian)', $$Makes about 4 cups
1 package (8 ounce) reduced fat (Neufchatel) cream cheese 
1/2 cup light canola or safflower mayonnaise 
1/2 cup low fat sour cream 
1/2 cup grated Parmesan cheese 
3 cloves garlic, or to taste 
3 cups shredded part-skim mozzarella cheese 
Freshly ground black pepper 
Pinch of cayenne pepper (optional) 
1 jar (12 ounce) marinated artichoke hearts, drained and roughly chopped 
1 small onion, diced 
Preheat oven to 350°F. In the bowl of a food processor, place the cream cheese, mayonnaise, sour cream, Parmesan cheese and garlic. Purée until all ingredients are combined. Add mozzarella cheese, black pepper and cayenne, pulsing just until combined. Add artichoke hearts and pulse again just until combined. Transfer mixture to a bowl and stir in the onion.

Bake in a 9-inch square glass baking dish for 40 to 45 minutes, until bubbly and browned. Serve immediately.$$,2,@cat7,NULL,PARSEDATETIME('2008-02-04','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Bundt- Lemon Cake', $$You will need between five and six tablespoons of lemon juice for this recipe. Because the amount of juice can vary from lemon to lemon, we suggest you first measure the juice from the three lemons you have zested, then juice a fourth lemon if necessary. Serve this cake as is or dress it up with lightly sweetened berries. The cake has a light, fluffy texture when eaten the day it is baked, but if well wrapped and held at room temperature overnight its texture becomes more dense -- like that of pound cake -- the following day. 

Serves 12 to 14

Cake
 
3 lemons , zest grated and saved, then juiced for 3 tablespoons juice (see note above)  
3 cups unbleached all-purpose flour (15 ounces)  
1 teaspoon baking powder   
1/2 teaspoon baking soda   
1 teaspoon table salt   
1 teaspoon vanilla extract   
3/4 cup low-fat buttermilk (preferably)  
3 large eggs , at room temperature  
1 large egg yolk , at room temperature  
18 tablespoons unsalted butter (2 1/4 sticks), at room temperature  
2 cups sugar (14 ounces)  

Glaze
 
2–3 tablespoons fresh lemon juice (see note above)  
1 tablespoon buttermilk   
2 cups confectioners' sugar (8 ounces)  


1. FOR THE CAKE: Adjust oven rack to lower-middle position; heat oven to 350 degrees. Spray 12-cup Bundt pan with nonstick baking spray with flour (alternatively, brush pan with mixture of 1 tablespoon flour and 1 tablespoon melted butter). Mince lemon zest to fine paste (you should have about 2 tablespoons). Combine zest and lemon juice in small bowl; set aside to soften, 10 to 15 minutes. 

2. Whisk flour, baking powder, baking soda, and salt in large bowl. Combine lemon juice mixture, vanilla, and buttermilk in medium bowl. In small bowl, gently whisk eggs and yolk to combine. In standing mixer fitted with flat beater, cream butter and sugar at medium-high speed until pale and fluffy, about 3 minutes; scrape down sides of bowl with rubber spatula. Reduce to medium speed and add half of eggs, mixing until incorporated, about 15 seconds. Repeat with remaining eggs; scrape down bowl again. Reduce to low speed; add about one-third of flour mixture, followed by half of buttermilk mixture, mixing until just incorporated after each addition (about 5 seconds). Repeat using half of remaining flour mixture and all of remaining buttermilk mixture. Scrape bowl and add remaining flour mixture; mix at medium-low speed until batter is thoroughly combined, about 15 seconds. Remove bowl from mixer and fold batter once or twice with rubber spatula to incorporate any remaining flour. Scrape into prepared pan.

3. Bake until top is golden brown and wooden skewer or toothpick inserted into center comes out with no crumbs attached, 45 to 50 minutes. 

4. FOR THE GLAZE: While cake is baking, whisk 2 tablespoons lemon juice, buttermilk, and confectioners' sugar until smooth, adding more lemon juice gradually as needed until glaze is thick but still pourable (mixture should leave faint trail across bottom of mixing bowl when drizzled from whisk). Cool cake in pan on wire rack set over baking sheet for 10 minutes, then invert cake directly onto rack. Pour half of glaze over warm cake and let cool for 1 hour; pour remaining glaze evenly over top of cake and continue to cool to room temperature, at least 2 hours. Cut into slices and serve.$$,2,@cat2,NULL,PARSEDATETIME('2008-02-04','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval, $$Salmon rub- Etta's$$, $$1 1/4 cups brown sugar , to taste 
1 1/2 tablespoons sweet Hungarian paprika , to taste 
1 tablespoon paprika , to taste 
1 teaspoon sea salt 
1/2 teaspoon fresh ground black pepper (1 tsp if not freshly ground) 
1 teaspoon white pepper 
1 tablespoon dried thyme , to taste 

Directions

1Mix all ingredients together. 

2Use as a rub on your approx 12-lb prepared salmon half. 

Oven directions: Rub the salmon with the above and baked it with a drizzle of olive oil in one of those handy baking-bags and it was moist and delicious! 
$$,2,@cat1,NULL,PARSEDATETIME('2008-02-14','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Bundt- Apple Cake', $$Bon Appétit | December 1999 
 
4 medium Golden Delicious apples (about 1 1/2pounds), peeled, cut into 1/3-inch pieces
5 tablespoons plus 2 1/2 cups sugar
2 teaspoons ground cinnamon
4 large eggs
1 cup vegetable oil
1/4 cup orange juice
1 tablespoon grated orange peel
1 teaspoon vanilla extract
3 cups all purpose flour
3 1/2 teaspoons baking powder
1/2 teaspoon salt
Powdered sugar 

 
Preheat oven to 350°F. Oil and flour 12-cup Bundt pan. Mix apple pieces, 5 tablespoons sugar and ground cinnamon in medium bowl. Combine 2 1/2 cups sugar, eggs, vegetable oil, orange juice, orange peel and vanilla extract in large bowl; whisk to blend. Stir flour, baking powder and salt into egg mixture. Spoon 1 1/2 cups batter into prepared Bundt pan. Top with half of apple mixture. Cover with 1 1/2 cups batter. Top with remaining apples, then batter.  
Bake cake until top is brown and tester inserted near center comes out with moist crumbs attached, about 1 hour 30 minutes. Cool cake in pan on rack 15 minutes. Run knife around sides of pan to loosen. Turn cake out onto rack. Cool at least 45 minutes. Dust with powdered sugar. Serve slightly warm or at room temperature.$$,2,@cat2,NULL,PARSEDATETIME('2008-02-08','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Peas and Prosciutto', $$2 tablespoons olive oil 
3 shallots, chopped 
2 garlic cloves, minced 
Salt and freshly ground black pepper 
1 (1-pound) bag frozen peas, thawed 
4 ounces (1/8-inch-thick slices) prosciutto, diced 
1/4 cup chopped fresh Italian parsley leaves

Heat the oil in a heavy large skillet over medium-low heat. Add the shallots, garlic, salt, and pepper, and saute until tender, about 1 minute. Add the peas and saute until heated through, about 5 minutes. Stir in the prosciutto and cook for 1 to 2 minutes. Add the parsley and remove from the heat. Season, to taste, with salt and pepper, and serve.
$$,2,@cat5,NULL,PARSEDATETIME('2008-02-19','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Pasta with peas, cream, parsley, and mint', $$Bon Appétit | March 2008 
Makes 6 to 8 servings
 
1 16-ounce package large shell pasta or elbow pasta
1 1/4 cups heavy whipping cream
1 16-ounce package frozen petite peas (do not thaw)
2 1/4 cups freshly grated Parmesan cheese plus additional for serving
1/4 cup chopped fresh mint
1/2 cup chopped fresh Italian parsley, divided

 
Cook pasta in large pot of boiling salted water until just tender but still firm to bite, stirring occasionally. Drain, reserving 1/2 cup pasta cooking liquid. Return pasta to pot.

Meanwhile, bring cream to simmer in large skillet over medium-high heat. Add peas and simmer just until heated through, 1 to 2 minutes. Add 2 1/4 cups cheese and stir until melted and sauce thickens slightly, about 1 minute. Stir in mint and 1/4 cup parsley. Pour sauce over pasta and toss to coat, adding pasta cooking liquid by tablespoonfuls if dry. Season to taste with salt and pepper. Transfer to bowl. Sprinkle with remaining parsley. Serve, passing additional Parmesan alongside.

 

 

$$,2,@cat1,NULL,PARSEDATETIME('2008-02-20','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Cauliflower steaks with cauliflower puree', $$Bon Appétit | February 2008 

Makes 2 servings

1 1 1/2-pound head of cauliflower
1 1/2 cups water
1 cup whole milk
2 tablespoons vegetable oil plus additional for brushing

Preheat oven to 250°F. Using sharp heavy knife and starting at top center of cauliflower head, cut two 1-inch-thick slices of cauliflower, cutting through stem end. Set cauliflower steaks aside.

Cut enough florets from remaining cauliflower head to measure 3 cups. Combine florets, 1 1/2 cups water, and milk in medium saucepan, and sprinkle with salt and pepper. Bring to boil and cook until cauliflower florets are very tender, about 10 minutes. Strain, reserving 1 cup cooking liquid. Spread florets on large rimmed baking sheet, and bake 10 minutes until slightly dry. Transfer florets to blender. Add reserved 1 cup cooking liquid and puree until smooth. Return puree to same saucepan and increase oven temperature to 350°F.

Heat 2 tablespoons vegetable oil in heavy large ovenproof skillet over medium-high heat. Brush cauliflower steaks with additional oil and sprinkle with salt and pepper. Add cauliflower steaks to skillet and cook until golden brown, about 2 minutes per side. Transfer skillet to oven and bake cauliflower steaks until tender, about 10 minutes.

Rewarm cauliflower puree over medium heat. Divide puree between 2 plates; top each with cauliflower steak.

  
$$,2,@cat5,@subcat2,PARSEDATETIME('2008-02-20','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Curried Chicken Penne', $$Preparation Time: 15 minutes 
Cooking Time: 10 minutes 
  
Total Time: 25 minutes 
  
Servings: 4 
Ingredients
1/2 cup bottled mango chutney 
1/2 cup well-shaken canned coconut milk 
1 tablespoon reduced-sodium soy sauce 
2 teaspoons red curry paste 
1 1/4 pounds boneless, skinless chicken breast, cut into 1/2-inch pieces 
Salt and ground black pepper 
8 ounces penne 
2 medium carrots, peeled and thinly sliced 
1 pound asparagus, cut into 1-inch pieces 
Instructions
In a small bowl whisk together the chutney, coconut milk, soy sauce and curry paste. Place the chicken in a non-reactive dish and pour half the sauce over the chicken. Toss to coat and set aside. 
Preheat the broiler. Line a baking sheet with foil. 
Bring a large saucepan of water to a boil and add salt to taste. Add the pasta and cook 6 minutes. Add the carrots and asparagus and cook 2 to 3 minutes longer or until both the vegetables and pasta are cooked. Drain well and pour into a large serving bowl. Pour the remaining chutney mixture over and toss. 
Meanwhile, place the chicken in one layer on the baking sheet, sprinkle with salt and pepper and broil until cooked through, about 5 to 6 minutes. Add to the bowl with the pasta and toss. Season with salt and pepper and serve.$$,2,@cat1,@subcat4,PARSEDATETIME('2008-03-13','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Almost No-Knead Whole Grain Bread', $$3 cups whole wheat flour, or use 2 cups plus a combination of other whole grain flours like buckwheat, rye, or cornmeal

1/2 teaspoon instant yeast

2 teaspoons salt

2 tablespoons olive oil or vegetable oil

Cornmeal or wheat bran for dusting (optional)


Up to 1 cup chopped nuts, seeds, dried fruit, or proofed whole grains (Optional. To proof grains, soak 1/2 cup grain in a small bowl, covered with water, for an hour or so. Drain and add to the dough as described in step 2.)

1. Combine the flour, yeast, and salt in a large bowl. Add 1 3/4 cups water and stir until blended; the dough should be quite wet, almost like a batter (add some more water if it seems dry.) Cover the bowl with plastic wrap and let it rest in a warm place for at least 12 and up to 24 hours. The dough is ready when its surface is dotted with bubbles. Rising time will be shorter at warmer temperatures or a bit longer if your kitchen is chilly.

2. Use some of the oil to grease the loaf pan. If you are adding nuts or anything else, fold them into the dough now with your hands or a rubber spatula. Transfer the dough to the loaf pan, and use a rubber spatula to gently settle it in evenly. Brush the top with the remaining oil and sprinkle with cornmeal if you like. Cover with a towel and let rise until doubled, an hour or two depending on the warmth of your kitchen. When it's almost ready heat the oven to 350 degrees.

3. Bake the bread until deep golden and hollow-sounding when tapped, about 45 minutes. (An instant-read thermometer should register 200 degrees when inserted into the center of the loaf.) Immediately turn out of the pan onto a rack and let cool before slicing.

**For fast whole grain bread, increase the yeast to 1 1/2 teaspoons. Reduce the initial rise to 2 hours and the final rise in the pan to 60 minutes or so. Proceed immediately to Step 3. **

-- Mark Bittman, \"Food Matters\"
$$,2,@cat8,NULL,PARSEDATETIME('2008-12-11','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Burgers with Sweet Potato Fries', $$Preparation Time: 15 minutes 
Cooking Time: 30 minutes 
  
Total Time: 45 minutes 
  
Servings: 4 
Ingredients
3 8 ounce sweet potatoes 
nonstick cooking spray 
1 3/4 teaspoons kosher salt or sea salt, divided 
1/2 teaspoon ground cumin 
1/4 teaspoon cayenne, divided 
1 pound extra-lean ground beef 
4 ounces ground turkey breast 
1/4 cup finely chopped red onion 
1/4 teaspoon ground black pepper 
1 garlic clove 
1/2 cup reduced-fat mayonnaise 
1/2 teaspoon fresh lemon juice 

Instructions
Preheat the oven to 425°F. Line a large baking sheet with parchment paper. 
Cut each sweet potato lengthwise into 8 wedges, then cut crosswise in half. Spray the potatoes lightly with nonstick cooking spray. In a small mixing bowl, combine 1 teaspoon of the salt, the cumin and 1/8 teaspoon of the cayenne and sprinkle over the potatoes. Arrange the potatoes, cut side down, on the baking sheet. Roast until browned and tender, 20 to 25 minutes. 
Meanwhile, in a large mixing bowl, lightly mix together the beef, turkey, onion, ground pepper and 1/2 teaspoon salt. Shape the mixture into 4 1-inch-thick patties. 
Spray a grill pan or heavy skillet with nonstick cooking spray and warm over medium-high heat until almost smoking. Cook the patties until browned, about 5 minutes. Turn and cook until browned and cooked through, about 5 minutes more. 
Meanwhile, mash the garlic with the remaining 1/4 teaspoon salt with a mortar and pestle or with a chef’s knife until it becomes a paste. Stir into the mayonnaise along with the remaining 1/8 teaspoon cayenne and the lemon juice. 
To serve, put each burger on a plate and place 2 tablespoons of the mayo next to each burger. Place the sweet potatoes on the plates, dividing them evenly. 
$$,2,@cat1,@subcat4,PARSEDATETIME('2008-03-13','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Chicken Enchiladas', $$This updated version of our popular Chicken Enchiladas gives you two whole enchiladas as a serving-and it's still a K4!

Preparation Time: 30 minutes 
Cooking Time: 30 minutes 
  
Total Time: 1 hours, 0 minutes 
  
Servings: 8 
Ingredients
1 pound boneless, skinless chicken breast 
nonstick cooking spray 
1/2 chopped onion 
1 7-ounce can chopped green chiles 
1 package low-sodium taco seasoning 
1 cup water 
2 cups 1% cottage cheese 
2 cups shredded low-fat cheddar cheese 
1/2 cup fat-free sour cream 
1 4-ounce can jalapeño peppers, diced, optional 
salt, to taste 
ground black pepper, to taste 
16 corn tortillas-6\" 
1 10-ounce can red enchilada sauce 
Instructions
Preheat the oven to 350°F. 
Over high heat, bring a medium saucepan of cold water to a boil. Add salt to taste and the chicken and simmer over medium-high heat until no longer pink inside, about 8 to 10 minutes. Transfer the chicken to a cutting board and shred the chicken using 2 forks. Discard the cooking water. 
Spray a large skillet with nonstick cooking spray and warm over medium-high heat. Add the shredded chicken, green chili peppers and onion and cook for 5 minutes. Add the taco seasoning and water. Simmer, stirring occasionally, until the mixture has thickened, about 7 minutes. Remove the pot from the heat. 
Stir in the cottage cheese, 1 cup of the cheddar, sour cream and jalapeño peppers (if using) and season with salt and pepper to taste. 
Spray a 9 X 13-inch baking dish with nonstick cooking spray. 
Wrap the tortillas in a paper towel and heat in the microwave until soft, about 30 seconds. Working with one tortilla at a time (keep the others wrapped), place 1/4 cup of the filling in the center and roll up the tortilla. Place seam side down in the baking dish and repeat with the remaining tortillas, making 2 rows of 8. 
Top the rolled tortillas with any remaining filling. Pour the enchilada sauce over the tortillas and top with the remaining 1 cup cheddar. 
Bake until the cheese has melted and the enchiladas start to bubble, about 25-30 minutes. Let stand for 10 minutes. Makes 8 servings (2 tortillas each). 
Tips
Go ahead and have some fun with this one -- add as many K0 jalapeños as you would like for some extra heat.Go ahead and have some fun with this one -- add as many K0 jalapeños as you would like for some extra heat. $$,2,@cat1,@subcat4,PARSEDATETIME('2008-03-13','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Chicken Parmesan', $$Preparation Time: 20 minutes 
Cooking Time: 20 minutes 
  
Total Time: 40 minutes 
  
Servings: 4 
Ingredients
3/4 cup panko, or plain breadcrumbs 
1/2 cup grated Parmesan cheese 
1 teaspoon dried oregano 
1/2 teaspoon dried basil 
salt 
pepper 
2 large egg whites 
1 pound boneless, skinless chicken breasts 
1/2 cup grated part-skim mozzarella 
nonstick cooking spray 
1 large red onion, thinly sliced 
1 pound zucchini, thinly sliced 
2 cups low-fat pasta sauce 

Instructions
Preheat the oven to 425°F. Line a baking sheet with foil or parchment. 
In a medium bowl, combine the breadcrumbs, Parmesan cheese, oregano, basil and salt and pepper. Place the egg whites in a small bowl and whisk until foamy. 
Using the heel of your hand, pound the chicken to lightly flatten it. Dip the chicken in the egg whites and then into the breadcrumb mixture. Press any leftover breadcrumbs onto the top of the chicken. Place on the baking sheet and bake 20 minutes. Remove the chicken from the oven and turn the oven to broil. Sprinkle the chicken with the mozzarella and broil until melted, 1 minute longer. 
Meanwhile, spray a large skillet with the cooking spray and warm over high heat. Add the onion and cook until lightly browned and softened, about 4 minutes. Add the zucchini and cook, stirring frequently, until softened about 3 minutes more. Stir in the pasta sauce and cook 2 minutes more or until simmering. Season with salt and pepper. 
To serve, ladle 1 1/4 cups zucchini mixture and 1 piece of chicken onto each plate and serve. 
Tips
Panko breadcrumbs will make this chicken extra-crispy. Look for Ian's brand, with no added preservatives or fats. $$,2,@cat1,@subcat4,PARSEDATETIME('2008-03-13','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval, $$Tart 'n' Tangy Frozen Yogurt$$, $$
Time: 25 minutes, plus 2 hours to freeze. The quality of yogurt really matters here; look for brands without unnecessary additives (Straus Family Creamery is our favorite). We prefer a fairly tangy yogurt, so add more sugar if you want yours sweeter. Like most frozen desserts, this fro-yo tastes best when fresh.


32 ounces (about 4 cups) plain nonfat yogurt
About 3/4 cup sugar

1. In a medium bowl, whisk together yogurt and sugar until sugar dissolves. Taste and add more sugar if you like.

2. Spoon mixture into an ice cream maker and freeze according to manufacturer's directions. Transfer yogurt to a container and freeze until firm, about 2 hours.

Make ahead: Freeze up to 1 week. Let soften at room temperature about 45 minutes before scooping, or microwave a few seconds until softened.

Note: Nutritional analysis is per 1/2-cup serving.


Yield:  Makes about 4 3/4 cups; 9 servings

CALORIES 121 (1% from fat); FAT 0.2g (sat 0.2g); CHOLESTEROL 2mg; CARBOHYDRATE 24g; SODIUM 77mg; PROTEIN 5.8g; FIBER 0.0g

Sunset, JUNE 2009
$$,2,@cat2,@subcat1,PARSEDATETIME('2009-06-15','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Shepherds Pie', $$Preparation Time: 15 minutes
Cooking Time: 15 minutes
  
Total Time: 30 minutes
Servings: 4

Ingredients

    * 1 pound russet potatoes, peeled and cut into 1-inch pieces
    * 1 1/2 tablespoons unsalted butter
    * 1 3/4 teaspoons kosher salt or sea salt, divided
    * 1/2 teaspoon ground black pepper, divided
    * nonstick cooking spray
    * 1/2 large white onion, chopped
    * 8 ounces crimini mushrooms, thinly sliced
    * 1 pound extra-lean ground beef
    * 1 tablespoon all-purpose unbleached flour
    * 1 cup reduced-sodium chicken broth
    * 1 tablespoon fresh thyme, 1 teaspoon dried
    * 1 tablespoon tomato paste
    * 1/2 cup frozen baby peas

Instructions

   1. Place the potatoes in a pot with cold water to cover and bring to a boil over high heat. Simmer until tender, about 10 minutes. Reserve 1/3 cup cooking water, drain and mash the potatoes with a fork or potato masher adding 3/4 teaspoon salt, 1/4 teaspoon pepper, the reserved cooking water and the butter. Cover and keep warm.
   2. Preheat the broiler.
   3. While the potatoes are cooking, spray a large skillet with nonstick spray and add the onions and mushrooms. Cook over medium-high heat, stirring occasionally, until the vegetables are browned and tender, about 5 minutes. Stir in the beef and cook, stirring frequently, until no longer pink, about 5 minutes. Stir in the flour and stir about 1 minute. Add the broth, thyme, tomato paste, remaining 1 teaspoon salt and 1/4 teaspoon pepper and bring to a simmer. Stir in the peas and cook mixture until thickened, about 3 minutes.
   4. Spoon the beef mixture into a 9-inch pie plate or small baking dish and spoon the potatoes over the top, scoring the potatoes with a fork. Broil until lightly browned, about 3-5 minutes and serve.$$,2,@cat1,@subcat4,PARSEDATETIME('2008-03-13','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Chicken, Carrot and Pasta Soup', $$Preparation Time: 15 minutes
Cooking Time: 1 hours, 30 minutes
Total Time: 1 hours, 45 minutes
Servings: 8

3 pounds bone-in chicken thighs, skin removed
2 1/2 quarts cold water
8 medium carrots, thinly sliced
1 jumbo (about 1 pound) onion, chopped
3 medium parsnips, thinly sliced
2 garlic cloves, peeled
2 teaspoons kosher salt or sea salt
ground black pepper
3 cups shredded green cabbage
6 ounces whole-wheat pasta
1/4 cup chopped Italian parsley
1/4 cup shredded fresh basil leaves
1/2 cup grated Parmesan cheese

In a soup pot or large Dutch oven, combine the chicken and water and bring to a boil over high heat. Simmer for 5 minutes, skimming off any foam. Reserve 2 cups of the sliced carrots and add the remaining carrots, the onion, parsnips, garlic, salt and 1/4 teaspoon pepper to the pot. Simmer, partially covered, until the chicken is cooked through, about 45 minutes.

Remove the chicken to a plate and with two forks, shred the meat into bite-sized pieces. Return the bones to the soup and simmer, partially covered, for 30 minutes longer.

Pour the soup through a fine strainer set over a large saucepan, pressing on the solids with the back of a spoon. Add the reserved carrots to the broth, add the salt and season to taste with pepper. Bring to a simmer. Cover and cook for 5 minutes, or until the carrots are crisp-tender. Add the cabbage and pasta (such as fusilli) and cook until the pasta is just al dente, 7 to 9 minutes. Stir in the parsley and basil.

To serve, ladle the soup into bowls and sprinkle 1 tablespoon Parmesan over each bowl. Makes 11 cups; each serving is about 1 1/3 cups.$$,2,@cat4,@subcat5,PARSEDATETIME('2008-03-13','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Creamy Corn Chowder', $$    * Preparation Time: 15 minutes
    * Cooking Time: 20 minutes
    *  
    * Total Time: 35 minutes
    *  
    * Servings: 6

Ingredients

    * nonstick cooking spray
    * 1 large yellow onion, chopped
    * 2 stalks celery, chopped
    * 8 ounces ham, chopped
    * 4 cups reduced-sodium chicken broth
    * 8 ounces frozen corn kernels
    * 1 teaspoon dried thyme or savory
    * 1 bay leaf
    * 1 cup 1% milk
    * 2 tablespoons vital wheat gluten
    * 2 tablespoons unbleached flour
    * 1 tablespoon heavy cream
    * pinch sugar
    * 1/2 teaspoon kosher salt or sea salt
    * 1/4 teaspoon ground black pepper

Instructions

   1. Spray a large saucepan with nonstick cooking spray and warm over medium-high heat. Add the onion, celery and ham and cook, stirring frequently, until the vegetables are tender about 10 minutes. Stir in the broth, corn, and thyme or savory and bay leaf.
   2. In a small bowl, slowly whisk together the flour and wheat gluten, then slowly whisk the milk into the flour mixture, making sure it’s smooth. Pour into the soup along with the cream and bring to a simmer (do not let it boil or the soup will separate.) Stir in the sugar, salt and pepper. Remove 2 cups soup to a blender and puree; stir puree back into soup or lightly puree with an immersion blender. Serve hot.$$,2,@cat4,@subcat5,PARSEDATETIME('2008-03-13','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Curried Chicken, Lentil, and Vegetable Soup', $$Servings: 6

nonstick cooking spray
1 cup diced yellow onion
2 large carrots, cut into 1/2-inch dice
2 large parsnips, peeled and cut into 1/2-inch dice
1 celery stalk, thinly sliced
1 teaspoon grated fresh ginger
2 teaspoons curry powder
1 teaspoon ground cumin
1 teaspoon kosher salt or sea salt
1/2 teaspoon ground black pepper
pinch cayenne
3/4 cup dried brown lentils, rinsed and drained
6 cups reduced-sodium chicken broth
1 pound boneless, skinless chicken thighs, cut into 1/2-inch pieces
1/2 cup cilantro leaves

Spray a large Dutch oven with the cooking spray and warm over high heat. Add the onion, carrot, parsnips, celery, ginger and cook, stirring frequently, until the vegetables are tender, about 8 minutes. Stir in the curry powder, cumin, salt, pepper and cayenne and mix well. Add the lentils, broth and chicken and bring to a simmer. Skim any floating foam off with a large spoon and simmer until the lentils are cooked, about 25 minutes. Stir in the cilantro and serve.

Tips

    * If using Madras curry powder, use only 1 teaspoon.
    * Serve with a side dish of K0 Roasted Cauliflower.$$,2,@cat4,@subcat5,PARSEDATETIME('2008-03-13','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Mexican Meatball Soup', $$    * Preparation Time: 15 minutes
    * Cooking Time: 15 minutes
    *  
    * Total Time: 30 minutes
    *  
    * Servings: 4

Ingredients

    * 1/2 slice whole-grain bread
    * 3/4 pound ground turkey breast
    * 1 egg white
    * 1 teaspoon dried oregano
    * 1 1/2 tablespoons ground cumin
    * 3 tablespoons fresh cilantro, divided
    * 1/2 teaspoon kosher salt or sea salt
    * 1/4 teaspoon ground black pepper
    * nonstick cooking spray
    * 1 cup chopped white onion
    * 1/2 cup thinly sliced carrot
    * 1 can (4 ounces) diced green chiles
    * 6 cups low-sodium chicken broth
    * 2 cups drained canned golden hominy
    * 1 can (8 ounces) tomato sauce
    * 1 medium zucchini, diced

Instructions

   1. In a food processor, process the bread into fine crumbs. Transfer to a large bowl and add the turkey, egg white, oregano, cumin, 1 tablespoon of the chopped cilantro, salt and pepper. Using wet hands, shape mixture into 16 1-inch meatballs.
   2. Spray a large saucepan with the nonstick cooking spray and warm over medium-high heat. Add the onion, carrot and chiles and cook until the vegetables are softened, about 5 minutes. Add the broth, hominy and tomato sauce and bring to a simmer. Add the meatballs and simmer 5 minutes. Stir in the zucchini and cook 3 to 4 minutes or until tender and the meatballs are cooked through. Stir in the remaining 2 tablespoons cilantro and season with salt and pepper to taste.

Tips

    * Serve with K0 Radish, Celery and Cucumber Salad.
    * *Hominy is corn kernels from which the hull and germ have been removed. When dried hominy is ground, it’s called grits.$$,2,@cat4,@subcat5,PARSEDATETIME('2008-03-13','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Quick Beef Soup', $$    * Preparation Time: 15 minutes
    * Cooking Time: 20 minutes
    *  
    * Total Time: 35 minutes
    *  
    * Servings: 8

Ingredients

    * olive oil cooking spray
    * 1 1/4 pounds lean sirloin, cut into 1/2-inch dice
    * 1 teaspoon kosher salt or sea salt
    * 1/4 teaspoon ground black pepper
    * 1 large yellow onion, chopped
    * 2 garlic cloves, finely chopped
    * 2 tablespoons all-purpose unbleached flour
    * 32 ounces reduced-sodium beef broth
    * 1 can (15 ounces) diced tomatoes
    * 1/2 teaspoon dried thyme
    * pinch red pepper flakes
    * 1 15 ounce can white beans, rinsed and drained
    * 1 bag (16 ounces) frozen classic mixed vegetables
    * 2 cups baby spinach

Instructions

   1. Spray a large saucepan with the olive oil spray and warm over medium-high heat. Add half the steak, season with half the salt and pepper and cook, stirring occasionally, until browned on all sides, about 2 minutes per batch. With a slotted spoon, transfer beef to a bowl. Repeat with the remaining beef.
   2. Add the onion and garlic to the pot and cook until lightly browned, about 5 minutes. Add the flour and stir 1 minute. Add the broth, tomatoes, thyme and red pepper flakes and bring to a boil. Reduce the heat to medium and simmer 5 minutes. Stir in the beans, vegetables, spinach and beef and cook until vegetables are tender, about 2 minutes longer. Taste for salt and pepper and serve. Makes 1 1/4 cups per serving.

Tips

    * A big green salad with a K0 vinaigrette would be terrific with this soup.$$,2,@cat4,@subcat5,PARSEDATETIME('2008-03-13','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Savory Chicken Stew', $$Preparation Time: 15 minutes
Cooking Time: 45 minutes
Total Time: 1 hours, 0 minutes
Servings: 4

6 cups low-sodium chicken broth, divided
1 pound boneless, skinless chicken breasts
1 tablespoon extra virgin olive oil
1 small white onion, diced
2 medium carrots, peeled and diced
2 medium celery stalks, diced
2 garlic cloves, finely minced
1/4 cup flour
1/4 cup white wine
2 large potatoes, peeled and diced
1/2 pound button mushrooms, sliced
2 teaspoons dried rosemary
1 teaspoon dried basil
2 bay leaves
salt, to taste
ground black pepper, to taste
1/2 cup frozen peas

In a medium pot, bring 4 cups of the chicken broth to a boil over medium-high heat. Reduc the heat, add the chicken and simmer until no longer pink inside, about 8 to 10 minutes.

Remove the chicken from the pot, cool slightly and then shred the chicken with a fork. (Refrigerate the used chicken broth for future use in another recipe).

In a large pot, heat the olive oil over medium heat. Add the onion, carrots, celery and garlic and sauté for 5 minutes. Stir in the flour. Slowly add the wine and the remaining 2 cups chicken broth. Bring to a boil and reduce heat to medium. Add the shredded chicken, potatoes, mushrooms, rosemary, basil, bay leaves, salt and pepper. Simmer for 20 to 30 minutes, until vegetables are cooked as desired.

Add peas, and heat through and serve.
$$,2,@cat4,@subcat5,PARSEDATETIME('2008-03-13','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Chicken & Sausage Paella', $$An iron skillet works really well here. If your skillet has a non-oven proof handle, wrap it in a double-layer of foil.

Preparation Time: 15 minutes 
Cooking Time: 35 minutes 
  
Total Time: 50 minutes 
  
Servings: 6 
Ingredients
3 1/2 cups reduced-sodium chicken broth 
1 tablespoon extra virgin olive oil 
12 ounces Isernio's chicken sausage, cut into 1-inch pieces 
1/2 pound boneless chicken breast halves, cut into 1-inch chunks 
1 medium onion, chopped 
tablespoon minced garlic 
1 tablespoon tomato paste 
Pinch saffron 
2 teaspoons smoked paprika 
1 teaspoons ground cumin
2 cups short grain rice 
1 cup frozen peas 
2 tablespoons chopped Italian parsley 
Salt and ground black pepper 
I
nstructions
Preheat the oven to 450°F. Warm the broth in a saucepan over high heat or in the microwave. 
Warm the oil in a large (10 or 12-inch ovenproof skillet) over medium-high heat. Add the sausage and chicken, sprinkle with salt and pepper and cook, stirring occasionally, until browned but not cooked through, about 5 minutes. Remove with a slotted spoon and add the onion and garlic. Cook, until lightly browned, about 3 minutes. Add the tomato paste, saffron, paprika and cumin and cook 1 minute. Stir in the rice until shiny, about 1 minute. Stir in the broth, sausage, chicken and transfer to the oven. Roast 20 minutes. Stir together and taste to see if the rice is cooked, if not, return pan to cook 5 minutes longer. When rice is ready, turn off the oven and sprinkle with the peas and let sit in the oven for 5 minutes. Remove from the oven, sprinkle with the parsley, season with salt and pepper and serve. 
Nutrition Information Per Serving
Calories: 271 
Carbohydrates: 24 
Protein: 28 
Fat: 6 
Serves: 6$$,2,@cat1,NULL,PARSEDATETIME('2008-04-09','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Roast Pork Tenderloin with White Beans', $$Servings: 6 
Ingredients
1 3/4 pounds pork tenderloin 
2 tablespoons extra virgin olive oil, divided 
3 garlic cloves, finely chopped 
2 teaspoons dried thyme 
2 teaspoons dried oregano or mint 
2 teaspoons kosher salt or sea salt, divided 
pinch red pepper flakes 
1 1/2 cups chopped yellow onion 
2 cans (15 ounces each) cannellini beans, rinsed and drained 
15 ounces canned diced tomatoes, drained 
1/4 cup orange juice 
1 tablespoon honey 
1 tablespoon finely grated orange zest 
1/4 teaspoon ground black pepper 
1 bay leaf 

Instructions
Rub the pork with 1 tablespoon of the olive oil, the garlic, thyme, oregano or mint, 1 teaspoon of the salt and the pepper flakes. Place in a zip lock bag or on a plate covered with plastic wrap and marinate overnight in the refrigerator. 
Preheat the oven to 350°F. Heat the remaining olive oil in a large Dutch oven over medium-high heat. Add the pork and brown on all sides, about 4 to 6 minutes. Remove to a plate. 
Add the onions to the Dutch oven and cook, stirring frequently, until soft but not browned about 4 minutes. Stir in the beans, tomatoes, orange juice, honey, zest, remaining salt and black pepper and bay leaf and bring to a simmer. Place the pork on top and bake 25 to 30 minutes or until the pork registers 140°F on an instant-read thermometer. Let the dish rest on top of the stove 10 minutes. Slice the pork into 1/2-inch thick diagonal slices and serve with the beans.$$,2,@cat1,@subcat4,PARSEDATETIME('2008-04-14','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Steak Kebabs & Tzatziki Sauce K4', $$Preparation Time: 20 minutes 
Cooking Time: 12 minutes 
Standing Time: 1 hours, 0 minutes 
  
Total Time: 1 hours, 32 minutes 
  
Servings: 4 
Ingredients
8 cherry tomatoes 
1 green bell pepper, seeded and cut into 8 pieces 
For the Steak Kebabs: 
2 tablespoons honey 
2 tablespoons low-sodium soy sauce 
2 garlic cloves, minced 
2 tablespoons fresh ginger, minced 
1/2 teaspoon red pepper flakes 
1/4 teaspoon ground cumin 
1 pound lean sirloin, or eye of round, cut into 1 1/2-inch chunks 
For the Tzatziki Sauce: 
1 cup non-fat greek style yogurt 
1 small cucumber, seeded and grated 
3 to 4 tablespoons honey 
2 tablespoons chopped fresh mint leaves 
2 tablespoons finely chopped red onion 
1 garlic clove, minced 
salt, to taste 
ground black pepper, to taste 
Instructions
Marinate the meat: in a large ziplock bag or non-reactive bowl, combine the honey, soy sauce, garlic, ginger, red-pepper flakes and cumin. Mix well. Add the meat to the mixture and re-seal the bag or cover the bowl. Refrigerate for at least 1 hour and up to 6 hours. 
If using bamboo skewers, soak for 20 minutes. 
To make the Tzatziki Sauce, combine the yogurt, cucumber, honey, mint, onion, garlic, salt and pepper. Cover and refrigerate. 
Preheat a grill or warm a grill pan over high heat. Remove the beef from the marinade and discard the marinade. Pat the beef dry with toweling and thread the meat, tomatoes and peppers onto four skewers, dividing evenly. 
Place the skewers on the grill and cook for about 3 minutes per side, about 8 to 12 minutes total. 
Serve with the Tzatziki Sauce. 
Tips
Coach Myrissa says: \"For the Sauce, lightly salt the cukes and put in strainer and refrigerate overnight. Squeeze to get rid of the excess water. That way the sauce isn't so watery. This is GREAT! Love it!\" $$,2,@cat1,@subcat4,PARSEDATETIME('2008-04-10','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Sloppy Joes', $$Preparation Time: 5 minutes 
Cooking Time: 10 minutes 
  
Total Time: 15 minutes 
  
Servings: 4 
Ingredients
nonstick cooking spray 
1 large yellow onion, chopped 
1 celery stalk, chopped 
1 serrano chile, finely chopped 
3 garlic cloves, chopped 
1 1/4 pounds extra-lean ground beef 
3/4 cup tomato sauce 
1/3 cup ketchup 
2 teaspoons Worcestershire sauce 
1/2 teaspoon kosher salt or sea salt 
1/4 teaspoon ground black pepper 
4 whole-grain hamburger buns, toasted 
2 cups finely shredded romaine lettuce 
hot sauce, optional 
Instructions
Spray a large skillet with nonstick spray and warm over medium-high heat. Add the onion, celery, serrano chile and garlic and cook, stirring frequently, until vegetables are lightly browned about 4 minutes. Stir in the beef and stir until no longer pink, about 3 minutes. Add the tomato sauce, ketchup, Worcestershire sauce and salt and pepper. 
Bring to a simmer and cook until hot about 2 minutes longer. Arrange roll bottoms on plates and ladle the meat mixture over. Cover with lettuce and roll tops and serve. 
Tips
If you like, substitute 1 1/4 pounds of extra lean ground turkey and use 1 tablespoon of oil to brown and cook the vegetables. 
 
Nutrition Information Per Serving
K-Count: 4 
Calories: 338 
Carbohydrates: 34 
Protein: 36 
Fat: 8 
Serves: 4$$,2,@cat1,@subcat4,PARSEDATETIME('2008-04-15','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Grilled Cilantro Chicken with Mango Salsa K4', $$Preparation Time: 15 minutes 
Cooking Time: 45 minutes 
  
Total Time: 1 hours, 0 minutes 
  
Servings: 4 
Ingredients
2/3 cup brown rice 
1 1/3 cups water 
1/2 teaspoon kosher salt or sea salt, divided 
6 tablespoons cilantro, chopped, divided 
2 garlic cloves, minced 
3 tablespoons lime juice, divided 
1 tablespoon honey 
1 tablespoon extra virgin olive oil 
1/4 teaspoon ground black pepper 
1 pound boneless, skinless chicken breast, cut into 1/2-inch thick cutlets 
1 mango, skinned and finely diced 
1/4 finely diced red onion 
1 teaspoon minced jalapeño 
Instructions
In a small saucepan bring the rice, water and 1/4 teaspoon salt to a boil over high heat. Cover and simmer until the water is absorbed and rice is cooked about 40 minutes. 
Meanwhile, combine the remaining salt, 2 tablespoons cilantro, garlic, 1 1/2 tablespoons lime juice, honey, olive oil and pepper in a non-reactive pie plate or shallow dish. Add the chicken and turn to coat. Let stand while preparing the salsa. 
Preheat the grill or broiler. 
Combine the mango, remaining lime juice, remaining 1/4 cup cilantro, red onion and jalapeño. Season with salt and pepper. 
Grill or broil the chicken until just cooked through, about 3 to 5 minutes. $$,2,@cat1,@subcat4,PARSEDATETIME('2008-05-14','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'East of the Lake Tofu  ', $$from PCC Market 

Serves 4

2/3 cup tamari
1/4 cup mirin (rice wine)
2 tablespoons sesame oil
3 cloves minced garlic
1 tablespoon fresh grated ginger
1 pound firm or extra-firm tofu
4 green onions
1 tablespoon sesame seeds

Combine tamari, mirin, sesame oil, garlic and ginger to make marinade. Mix well. Cut tofu in slices, drain well and place in marinade in baking pan. Turn to coat with marinade.

Bake in a 300º F oven for 15 to 18 minutes. Flip all pieces and continue to bake an additional 15 to 18 minutes until marinade is absorbed and tofu is brown. Cool. Garnish with diagonally cut green onions and sesame seeds. Serve with quinoa or other grain. 
$$,2,@cat1,NULL,PARSEDATETIME('2008-06-20','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Almost no knead bread- Cooks Illustrated', $$An enameled cast-iron Dutch oven with a tight-fitting lid yields best results, but the recipe also works in a regular cast- iron Dutch oven or heavy stockpot. Use a mild-flavored lager, such as Budweiser (mild non-alcoholic lager also works). The bread is best eaten the day it is baked but can be wrapped in aluminum foil and stored in a cool, dry place for up to 2 days.
INGREDIENTS
 
3   cups  unbleached all-purpose flour (15 ounces), plus additional for dusting work surface  
1/4   teaspoon  instant or rapid-rise yeast   
1 1/2   teaspoons  table salt   
3/4   cup plus 2 tablespoons  water (7 ounces), at room temperature  
1/4   cup plus 2 tablespoons  mild-flavored lager (3 ounces)  
1   tablespoon  white vinegar   

 
1. Whisk flour, yeast, and salt in large bowl. Add water, beer, and vinegar. Using rubber spatula, fold mixture, scraping up dry flour from bottom of bowl until shaggy ball forms. Cover bowl with plastic wrap and let sit at room temperature for 8 to 18 hours. 
2. Lay 12- by 18-inch sheet of parchment paper inside 10-inch skillet and spray with nonstick cooking spray. Transfer dough to lightly floured work surface and knead 10 to 15 times. Shape dough into ball by pulling edges into middle. Transfer dough, seam-side down, to parchment-lined skillet and spray surface of dough with nonstick cooking spray. Cover loosely with plastic wrap and let rise at room temperature until dough has doubled in size and does not readily spring back when poked with finger, about 2 hours.
3. About 30 minutes before baking, adjust oven rack to lowest position, place 6- to 8-quart heavy-bottomed Dutch oven (with lid) on rack, and heat oven to 500 degrees. Lightly flour top of dough and, using razor blade or sharp knife, make one 6-inch-long, 1/2-inch-deep slit along top of dough. Carefully remove pot from oven and remove lid. Pick up dough by lifting parchment overhang and lower into pot (let any excess parchment hang over pot edge). Cover pot and place in oven. Reduce oven temperature to 425 degrees and bake covered for 30 minutes. Remove lid and continue to bake until loaf is deep brown and instant-read thermometer inserted into center registers 210 degrees, 20 to 30 minutes longer. Carefully remove bread from pot; transfer to wire rack and cool to room temperature, about 2 hours.$$,2,@cat8,NULL,PARSEDATETIME('2008-07-28','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Blueberry Sorbet', $$This bright-tasting sorbet gains an exquisite aroma from a small amount of lavender. Prep and Cook Time: 1 hour, plus at least 1 1/2 hours of chilling and freezing time.


3/4 cup sugar
1/4 teaspoon dried culinary lavender (optional)
1/4 teaspoon salt
3 pints fresh or frozen blueberries (6 cups)
3 tablespoons fresh lemon juice

1. In a saucepan, bring sugar, 1 cup water, and lavender, if using, to a boil. Add salt and simmer 2 minutes. Transfer sugar syrup to a metal bowl and let cool to room temperature. Strain and discard lavender.

2. In a blender, purée sugar syrup, blueberries, and lemon juice. Strain and discard seeds and skin. Cover and chill sorbet mixture at least 30 minutes and up to overnight.

3. Freeze in an ice cream maker according to manufacturer's instructions. Transfer to a freezer-safe dish, cover, and freeze until hard, at least 1 hour and up to overnight.

Note: Nutritional analysis is per serving.


Yield:  Makes about 5 cups (serving size: 1/2 cup)

CALORIES 108 (3% from fat); FAT 0.3g (sat 0.0g); CHOLESTEROL 0.0mg; CARBOHYDRATE 28g; SODIUM 64mg; PROTEIN 0.6g; FIBER 2g

Sunset, JUNE 2008
$$,2,@cat2,@subcat1,PARSEDATETIME('2008-08-16','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Grilled Skirt Steak Tacos With Caramelized Onions', $$Ingredients
1 large white onion, sliced into 1/2-inch rounds (keep the rounds intact for easy grilling)
3 garlic cloves, peeled and roughly chopped
3 tablespoons fresh lime juice
1/4 teaspoon cumin, preferably freshly ground
Salt
1 pound skirt steak, trimmed of surface fat as well as the thin white membrane called \"silver skin\"
Vegetable or olive oil for brushing or spritzing the onions and meat
A small bowlful of lime wedges for serving
12 warm corn tortillas

 
 NPR.org, October 4, 2008 · Makes 12 tacos, serving 4 as a light meal

1. Marinate the meat. In a food processor or blender, combine 1/4 of the onion, the garlic, lime juice, cumin and 1/2 teaspoon salt. Process to a smooth puree. Place the skirt steak in a non-aluminum baking dish. Using a spoon, smear the marinade over both sides of the skirt steak. Cover and refrigerate 1 hour or up to 8 hours.

2. Caramelize the onions. Heat a gas grill to medium-high or light a charcoal fire and let it burn just until the coals are covered with gray ash. Either turn the burner(s) in the center of the grill to medium-low or bank the coals to one side of the grill for indirect cooking.

Brush or spray the remaining onion slices with oil and sprinkle with salt. Lay the whole rounds of onions on the grill, not over direct heat. When they start to soften and brown, about 10 minutes, use a spatula to flip them and brown the other side. Remove from the grill and break onions into rings.

3. Grill the meat. While the onions are browning, remove the steak from the marinade and gently shake off the excess. Oil the steak well on both sides, and lay it over the hottest part of the grill or directly over the coals. Grill, turning once, until richly browned and done to your liking, about 2-3 minutes per side for medium. Remove to a cooling rack set over a large plate — this keeps the juices in the meat rather than running out. Let the steaks rest until the onions have finished grilling. 

4. Serve the tacos. Cut the long piece of skirt steak into 3- to 4-inch sections, then cut each section into thin strips across the grain (that is, in line with the full length of the skirt steak). Mix with the onions, season with a little salt and set on the table, along with the lime wedges, roasted tomatillo guacamole (see recipe below) and hot tortillas, for your guests to make into soft tacos.$$,2,@cat1,NULL,PARSEDATETIME('2008-11-03','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Roasted Tomatillo Guacamole', $$Ingredients
3 large ripe avocados, preferably the pebbly-skin Hass variety
1 cup roasted tomatillo salsa (see recipe below) 
Salt
Cilantro sprigs for garnish

 
 NPR.org, October 4, 2008 · Makes 3 generous cups

Remove the little nub of stem that is sometimes lodged at the top of each avocado. Cut each avocado in half by slicing straight down through the spot where the stem was attached, until you reach the pit, then rotating the knife all the way around the pit. Twist the two halves apart, then scoop out the pits. With a spoon, scoop out the soft flesh from the skin, collecting it in a large bowl as you go. Coarsely mash with the spoon (or you can use an old-fashioned potato masher or large fork).

Gently stir the salsa into the avocado. Taste and season with salt, usually about 1/2 teaspoon. Cover with plastic wrap directly on the surface and refrigerate until you're ready to serve. (Not only will the guacamole improve if made half an hour or so before serving, but it also will maintain its fresh look longer if served cold.) Scoop into a decorative bowl, garnish with cilantro sprigs and you're ready to set it out for your guests to enjoy.

Roasted Tomatillo Salsa
 
Ingredients
4 medium (about 8 ounces total) tomatillos, husked, rinsed and halved 
2 large garlic cloves, peeled
Hot green chilies to taste (I like 2 serranos or 1 jalapeno), stemmed and roughly chopped
About 1/3 cup (loosely packed) roughly chopped cilantro
1/2 small white onion, finely chopped
Salt

 
 NPR.org, October 4, 2008 · Makes 1 1/2 cups

Set a large (10-inch) nonstick skillet over medium-high heat (if a nonstick skillet is unavailable, lay a piece of foil in the skillet). Lay in the garlic and tomatillos (cut side down). When the tomatillos are well browned, 3 or 4 minutes, turn everything and brown the other side. (The tomatillos should be completely soft.)

Scrape the tomatillos and garlic into a blender or food processor, and let cool to room temperature. Add the chili and cilantro, and blend to a coarse puree. Pour into a salsa dish.

Scoop the chopped onion into a strainer and rinse under cold water, shaking off the excess water. Stir into the salsa. Taste and season with salt, usually about 1/2 teaspoon. You'll need 1 cup of this salsa to flavor the guacamole. Refrigerate the leftover salsa for another use.

$$,2,@cat3,NULL,PARSEDATETIME('2008-11-03','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Quinoa Salad with Chickpeas, Walnuts and Fall Fruit', $$Makes 8 servings

1 1/2 cups quinoa, rinsed
1 cup canned chickpeas, rinsed and drained
1 cup diced persimmons or pomegranate seeds or 1/2 cup dried cranberries
3 green onions, thinly sliced
1/2 cup walnut pieces, toasted
1 teaspoon pomegranate syrup or honey
1/2 teaspoon whole grain mustard
2 tablespoons red wine vinegar or sherry vinegar
Kosher salt, to taste
Freshly ground pepper, to taste
1/4 cup walnut oil or olive oil
2/3 cup crumbled feta cheese or fresh goat cheese

1. Bring a medium pot of salted water to a boil over high heat. Add quinoa and boil until it is translucent but still has a bit of crunch, about 10 minutes. Drain and spread out on a baking sheet to cool.

2. Combine the quinoa with the chickpeas, fruit, green onions and walnuts in a large serving bowl.

3. In a small bowl, combine the syrup, mustard, vinegar and salt and pepper to taste. Slowly whisk in the walnut oil. Add the dressing to the salad and toss with a little more salt and pepper to taste.

4. Serve immediately or chill, covered tightly, for several hours or overnight. Top with the cheese right before serving.

$$,2,@cat5,@subcat3,PARSEDATETIME('2008-11-06','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Sweet Roasted Butternut Squash and Greens Over Bow-Tie Pasta', $$Serves 4 to 6 

Roasted vegetables:
3 to 3.5 pounds butternut squash, peeled, seeded, and cut into bite-size chunks (note: I used more like 4.5 pounds. I was in the mood for squash.)
1 medium to large onion, cut into 1-inch chunks
2 big handfuls escarole or curly endive, washed, dried, and torn into small pieces, or spring mix (note: Instead, I used an entire bundle of crinkly lacinato kale. I was also in the mood for greens.)
1/3 cup tight-packed basil leaves, torn
16 large fresh sage leaves, torn
5 large garlic cloves, coarse chopped
1/3 cup good-tasting olive oil
1/4 teaspoon red pepper flakes
1 tight-packed tablespoon brown sugar
salt and fresh-ground black pepper

Pasta and finish:
1 pound imported bow-tie pasta
1/2 cup half and half (note: resist the temptation to use more. You won't need it.)
1 to 1.5 cups shredded Asiago cheese

Slip one large or two smaller shallow sheet pans into the oven. Preheat the oven to 450 degrees. Bring 5 quarts of salted water to boil in a 6-quart pot.

In a big bowl, toss together all ingredients for the roasted vegetables. Be generous with the salt and pepper.

Pull out the oven rack holding the sheet pan. Taking care not to burn yourself, turn the squash blend onto the hot sheet pan and spread it out. Bake for 25 minutes, or until the squash is tender, turning the squash two or three times during roasting. (note: Or not. I didn't want to deal with chasing the vegetables around a hot oven, and they came out fine without turning.)

As the squash becomes tender, drop the pasta into the boiling water and cook until tender, but with some firmness to the bite. Drain in a colander.

Once the squash is tender, turn on the broiler to caramelize it. Watch the vegetables closely, turning the pieces often. Anticipate about 5 minutes under the broiler. You want crusty brown edges on the squash and wilted, almost crisp greens.

Scrape everything into a serving bowl. Add the half-and-half, hot pasta, and one cup of the cheese. Toss to blend, tasting for salt and pepper. Add more cheese if desired. Serve hot.

-- From \"The Splendid Table's How To Eat Supper\" 
$$,2,@cat1,NULL,PARSEDATETIME('2008-11-11','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Molasses Crunch Cookies ', $$Prep and cook time: About 1 hour. Notes: Molasses gives these crisp cookies a tangy sweetness. Store the cookies airtight for up to 3 days.


1/2 cup (1/4 lb.) butter, at room temperature
6 tablespoons firmly packed brown sugar
6 tablespoons molasses
1 large egg
1/2 teaspoon vanilla
1 cup all-purpose flour
1/2 teaspoon baking soda
1/4 teaspoon salt
1/2 cup chopped walnuts

1. In a bowl, with a mixer on medium speed, beat butter, brown sugar, and molasses until blended. Beat in egg and vanilla until smooth, scraping down sides of bowl as needed.

2. In another bowl, mix flour, baking soda, and salt. Stir into butter mixture until well blended. Stir in walnuts.

3. Drop dough in 1 1/2-teaspoon portions, 1 1/2 inches apart, onto buttered or cooking parchment-lined 12- by 15-inch baking sheets.

4. Bake cookies in a 350° oven until slightly darker brown at edges, 10 to 12 minutes; if baking more than one pan at a time, switch pan positions halfway through baking.

5. With a wide spatula, transfer cookies to racks to cool. If hot cookies start to break, slide a thin spatula under them to release; let stand on pan to firm up, 2 to 5 minutes, then transfer to racks to cool completely.

Note: Nutritional analysis is per cookie.


Yield:  Makes about 70 cookies

CALORIES 34 (50% from fat); FAT 1.9g (sat 0.9g); CHOLESTEROL 6.6mg; CARBOHYDRATE 3.9g; SODIUM 33mg; PROTEIN 0.4g; FIBER 0.1g

Sunset, NOVEMBER 2003
$$,2,@cat2,NULL,PARSEDATETIME('2008-12-19','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Speedy No-Knead Bread - Mark Bittman', $$3 cups bread flour
1 packet ( 1/4 ounce) instant yeast
1 1/2 teaspoons salt 
Oil as needed. 

1. Combine flour, yeast and salt in a large bowl. Add 1 1/2 cups water and stir until blended; dough will be shaggy. Cover bowl with plastic wrap. Let dough rest about 4 hours at warm room temperature, about 70 degrees.

2. Lightly oil a work surface and place dough on it; fold it over on itself once or twice. Cover loosely with plastic wrap and let rest 30 minutes more.

3. At least a half-hour before dough is ready, heat oven to 450 degrees. Put a 6-to-8-quart heavy covered pot (cast iron, enamel, Pyrex or ceramic) in oven as it heats. When dough is ready, carefully remove pot from oven. Slide your hand under dough and put it into pot, seam side up. Shake pan once or twice if dough is unevenly distributed; it will straighten out as it bakes. 

4. Cover with lid and bake 30 minutes, then remove lid and bake another 15 to 30 minutes, until loaf is beautifully browned. Cool on a rack.

Yield: 1 big loaf.$$,2,@cat8,NULL,PARSEDATETIME('2008-12-23','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Simple Crusty Bread - Artisan Bread in 5 Minutes', $$Adapted from “Artisan Bread in Five Minutes a Day,” by Jeff Hertzberg and Zoë François (Thomas Dunne Books, 2007) 

Time: About 45 minutes plus about 3 hours’ resting and rising

1 1/2 tablespoons yeast

1 1/2 tablespoons kosher salt

6 1/2 cups unbleached, all-purpose flour, more for dusting dough

Cornmeal.

1. In a large bowl or plastic container, mix yeast and salt into 3 cups lukewarm water (about 100 degrees). Stir in flour, mixing until there are no dry patches. Dough will be quite loose. Cover, but not with an airtight lid. Let dough rise at room temperature 2 hours (or up to 5 hours).

2. Bake at this point or refrigerate, covered, for as long as two weeks. When ready to bake, sprinkle a little flour on dough and cut off a grapefruit-size piece with serrated knife. Turn dough in hands to lightly stretch surface, creating a rounded top and a lumpy bottom. Put dough on pizza peel sprinkled with cornmeal; let rest 40 minutes. Repeat with remaining dough or refrigerate it.

3. Place broiler pan on bottom of oven. Place baking stone on middle rack and turn oven to 450 degrees; heat stone at that temperature for 20 minutes. 

4. Dust dough with flour, slash top with serrated or very sharp knife three times. Slide onto stone. Pour one cup hot water into broiler pan and shut oven quickly to trap steam. Bake until well browned, about 30 minutes. Cool completely.

Yield: 4 loaves.

Variation: If not using stone, stretch rounded dough into oval and place in a greased, nonstick loaf pan. Let rest 40 minutes if fresh, an extra hour if refrigerated. Heat oven to 450 degrees for 5 minutes. Place pan on middle rack. $$,2,@cat8,NULL,PARSEDATETIME('2008-12-23','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Wilted Spinach Salad with Warm Feta Dressing ', $$Bon Appétit | December 2007 

Yield: Makes 4 servings
 
1 9-ounce bag fresh spinach leaves
5 tablespoons olive oil, divided
1 medium red onion, halved, cut into 1/3-inch-thick wedges with some core attached
1 7-ounce package feta cheese, coarsely crumbled
2 tablespoons Sherry wine vinegar

Place spinach in large bowl. Heat 2 tablespoons oil in heavy large skillet over high heat. Add onion; sauté until brown and softened, about 7 minutes. Transfer to bowl with spinach; remove skillet from heat. Add remaining 3 tablespoons oil and cheese to skillet. Stir to melt cheese slightly, about 1 minute. Stir in vinegar. Season to taste with salt and pepper. Pour over spinach; toss to coat and wilt slightly.
 
$$,2,@cat10,NULL,PARSEDATETIME('2009-02-24','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Pasta Dough- Sunset Magazine', $$Time: 1 hour, plus 30 minutes to rest. Semolina gives this dough a slight and very satisfying chewiness.
This recipe goes with Giant Butternut Squash Ravioli

2 2/3 cups all-purpose flour
1 1/3 cups fine semolina*
1 teaspoon salt
4 large eggs
4 teaspoons extra-virgin olive oil

1. Put flour, semolina, and salt in a food processor and pulse to combine. In a glass measuring cup, whisk 1/3 cup water, the eggs, and olive oil to blend. With motor running, pour egg mixture into flour mixture. Process until dough comes together. If it seems dry, add 1 tbsp. water.

2. On a lightly floured work surface, knead dough until smooth (it will be very stiff), 5 to 7 minutes. Wrap airtight and let stand at room temperature about 30 minutes.

3. Set rollers of a pasta machine at widest setting. Cut dough into 8 equal pieces. Flatten 1 portion (keep others covered) and feed through rollers, then fold dough in thirds crosswise. Repeat rolling and folding, feeding an unfolded side through rollers, until dough looks very smooth and sheets are about 5 in. wide, about 5 times; if dough gets sticky, lightly dust with flour, and if sheets are too narrow, fold and reroll. Then roll dough once without folding at each successively thinner setting until it's as thin as possible; when dough gets too long to handle, cut in half and continue rolling the halves. Set finished pieces on sheets of flour-dusted parchment paper. Let stand uncovered until a bit drier, about 5 minutes. Stack sheets between parchment and wrap airtight; set aside. Repeat with remaining dough.

*Buy in the baking aisle of well-stocked markets.

Make ahead: Prepare dough through step 2, then chill overnight (bring to room temperature before rolling out).



Yield:  Makes enough for 24 to 30 giant ravioli



Sunset, JANUARY 2009
$$,2,@cat1,NULL,PARSEDATETIME('2008-12-29','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Pasta Dough- Mario Batali', $$makes 1 pound

3 1/2 to 4 cups unbleached all-purpose flour
4 extra large eggs
1 extra large egg yolk
1 1/2 teaspoons extra-virgin olive oil

Add 3 1/2 cups of the flour to a bowl and add the eggs and olive oil. Using a fork, beat together the eggs and oil into the flour slowly. 

Start out by kneading the dough with both hands, using the palms of your hands. Once you have a cohesive mass, remove the dough from the board and scrape up and discard any leftover crusty bits. Lightly re-flour the board and continue kneading for 6 more minutes. The dough should be elastic and a little sticky. Wrap the dough in plastic, and allow it to rest for 30 minutes at room temperature. Roll or shape as desired.

Note: Do not skip the kneading or resting portions for the dough. They are essential for light pasta. $$,2,@cat1,NULL,PARSEDATETIME('2009-11-23','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Maple-Almond Granola', $$4 cups regular oats
1/4 cup slivered almonds
1 1/2 teaspoons ground cinnamon
1/4 teaspoon salt
1/3 cup water
1/3 cup honey
1/3 cup maple syrup
2 tablespoons brown sugar
2 tablespoons canola oil
Cooking spray
Dried fruit

Preheat oven to 325°.
Combine first 4 ingredients in a large bowl.
Combine water, honey, syrup, sugar, and oil in a small saucepan; bring to a boil. Pour over oat mixture; toss to coat. Spread oat mixture on a jelly-roll pan coated with cooking spray. Bake at 325° for 35 minutes or until golden, stirring every 10 minutes. Cool completely.  Add dried fruit. Store in an airtight container for up to a week.

Yield:  6 cups (serving size: 1/4 cup)

CALORIES 129 (20% from fat); FAT 2.8g (sat 0.3g,mono 1.4g,poly 0.7g); IRON 1.2mg; CHOLESTEROL 0.0mg; CALCIUM 20mg; CARBOHYDRATE 25.7g; SODIUM 28mg; PROTEIN 2.7g; FIBER 1.9g

Cooking Light, JANUARY 2005$$,2,@cat6,NULL,PARSEDATETIME('2008-12-29','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval, $$Rocco Dispirito's Meatballs$$, $$1/3 cup chicken stock
1/4 cup diced yellow onion
1 clove garlic, minced
1/4 cup fresh flat-leaf Italian parsley, chopped fine
1/2 lb ground beef
1/2 lb ground pork
1/2 lb ground veal
1/3 cup plain breadcrumbs
2 eggs
1/4 cup parmigiano-reggiano cheese, grated
1 teaspoon red pepper flakes
1 teaspoon salt
1/4 cup extra virgin olive oil
3-6 cups of your favorite marinara sauce

Place the chicken stock, onion, garlic, and parsley in a blender or food processor and puree.
In a large bowl, combine the pureed stock mix, meat, bread crumbs, egg, Parmigiano-Reggiano cheese, red pepper flakes, and salt.
Combine with hands until mixture is uniform, do not overmix.
Put a little olive oil on your hands and form mixture into balls a little larger than golf balls.
Pour about 1/2 inch of extra virgin olive oil in straight sided, 10-inch-wide saute pan and heat over medium-high flame.
Add the meatballs to the pan, working in batches if necessary, and brown meatballs, turning once.
This should take about 10-15 minutes.
While meatballs are browning, heat the marinara sauce in a large pot.
Transfer the meatballs to the pot with the marinara sauce and simmer for one hour.
Serve alone or over your favorite pasta.

$$,2,@cat1,NULL,PARSEDATETIME('2009-01-18','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Pasta with zucchini', $$Gourmet Magazine
This recipe can be prepared in 45 minutes or less.

Yield: Serves 4 as a main course or 6 as a first course

6 small zucchini
2 teaspoons salt
2 cups packed fresh basil leaves
1 pound
1/4 cup extra-virgin olive oil
3 tablespoons unsalted butter
1/2 cup finely grated fresh Parmigiano-Reggiano plus additional for serving

Cut zucchini crosswise into 1/8-inch-thick slices and in a colander toss with salt. Let zucchini stand to drain 45 minutes. Pat zucchini dry.

While zucchini is draining, cut basil into thin strips and bring a 6-quart pasta pot three fourths full with salted water to a boil for farfalle. Cook pasta in boiling water until al dente and ladle out and reserve 1 cup pasta cooking water. Drain pasta in colander.

While pasta is cooking, in a deep 12-inch heavy skillet heat oil over moderately high heat until hot but not smoking and sauté zucchini, stirring occasionally, until golden and tender, about 7 minutes. Reduce heat to low and stir in half of basil. Stir in pasta and butter and gently toss until butter is melted. Stir in 1/2 cup reserved pasta water and gently toss (adding more pasta water as needed if mixture becomes too dry). Stir in 1/2 cup Parmigiano-Reggiano, remaining basil, and salt and pepper to taste.

Serve pasta with additional cheese.$$,2,@cat1,NULL,PARSEDATETIME('2009-01-18','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Cardamom Brown-Sugar Palmiers', $$Time: 30 minutes, plus at least 1 hour chilling time.
Bakers' Tip: As with any super-buttery dough, chilling it makes it much easier to slice.

1/2 cup packed light brown sugar
2 teaspoons ground cardamom
1 sheet (8.6 oz.) frozen puff pastry dough, thawed according to package instructions

1. Combine brown sugar and cardamom in a small bowl. Unfold dough flat on a work surface and sprinkle evenly with half the sugar mixture.

2. Using a rolling pin, lightly roll sugar into dough so that most of sugar sticks, being careful not to change the shape of the dough. Turn pastry over and sprinkle evenly with remaining sugar.

3. Beginning with the side closest to you, fold in dough, 1 in. at a time, to the center of the rectangle. Repeat with the opposite side. Fold one half on top of other as if closing a book. Wrap dough airtight and chill at least 1 hour.

4. Preheat oven to 400°. Using a sharp knife, cut dough into 1/2-in. slices. Line 2 baking sheets with parchment paper and lay slices on flat sides about 2 in. apart. Bake slices until doubled in size and golden, about 10 minutes. Let cookies cool completely on trays.

Make ahead: Unbaked palmiers can be frozen up to 2 weeks; baked palmiers may be made up to 2 days ahead and kept airtight at room temperature.

Note: Nutritional analysis is per palmier.



Yield:  Makes 16

CALORIES 111 (47% from fat); FAT 5.8g (sat 0.8g); CHOLESTEROL 0.0mg; CARBOHYDRATE 14g; SODIUM 41mg; PROTEIN 1.1g; FIBER 0.2g 

Sunset, DECEMBER 2008

$$,2,@cat2,NULL,PARSEDATETIME('2009-01-19','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Ham and Potato Gratin', $$Preparation Time: 30 minutes
Cooking Time: 60 minutes
Standing Time: 15 minutes
Total Time: 1 hours, 45 minutes
Servings: 6

2 teaspoons extra virgin olive oil
8 ounces (2 large) leeks, cut in half lengthwise and thinly sliced; white and pale green parts only
2 cups 1% milk
1/4 cup all-purpose unbleached flour
1 1/2 cup shredded low-fat cheddar cheese
1 teaspoon chopped fresh marjoram or thyme
1/2 teaspoon kosher salt or sea salt
1/4 teaspoon cayenne
nonstick cooking spray
2 pounds Yukon Gold potatoes, unpeeled and very thinly sliced (1/8-inch thickness)
1/2 pounds low-fat deli ham, finely diced

Instructions

   1. Preheat the oven to 400°F.
   2. Warm the olive oil in a large skillet over medium heat. Add the leeks and cook, stirring frequently, until soft about 4 minutes. Set aside.
   3. In a medium saucepan, slowly whisk the milk into the flour, making sure to whisk out any lumps. Bring to a simmer over medium heat, stirring frequently. Simmer 5 minutes until thickened and stir in the cheese, marjoram or thyme, salt and cayenne.
   4. Spray a 9 X 13-inch casserole with cooking spray and cover the bottom with a layer of a third of the potatoes, a third of the ham and a third of the leeks. Cover with a third of the cheese sauce and repeat layers two more times, using up all the ingredients. Cover lightly with foil and bake 40 minutes. Uncover and bake 15-20 minutes longer or until the potatoes are tender when a knife is inserted in the center and the top is browned and bubbling. Let cool 10-15 minutes before slicing.

Nutrition Information Per Serving

    * K-Count: 4
    * Calories: 381
    * Carbohydrates: 34
    * Protein: 41
    * Fat: 8

Serves: 6
$$,2,@cat1,@subcat4,PARSEDATETIME('2009-01-29','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval, $$Hosea's Chicken and Duck Andouille Gumbo$$, $$Chicken, Duck, Andouille Gumbo
Source: Hosea Rosenberg, Top Chef Season 5
Prep Time: About 3 Hours
Serves: 12-15
Ingredients

Roux:
2# Butter
2# Flour

Stock:
2# Duck Bones
2# Chicken Bones
1 Head Celery
4 Carrots
4 Yellow Onions
2oz Thyme
2oz Bay Leaf
1T Peppercorns
4G Water

Gumbo:

1C Oil
4# diced, Skinless Duck Thighs & Legs, boneless
4# diced, Skinless Chicken Thighs & Legs, boneless
4# Andouille, diced
4 Onions, diced
2 Heads Celery, diced
4 Green Bell Peppers, diced
¼C Garlic, minced
4C Stewed Tomato, crushed
½C Creole Seasoning Blend
2C White Wine
4 Fresh Bay Leaves


Directions

Roux:
Cook until dark and smelling of toasted popcorn. Takes 2 hours and you must visit the voodoo priestess afterward.

Stock:
Roast bones in oven till brown. Put in stockpot. Cover with water. Add other ingredients and simmer 3 hours. Strain and keep warm.

Gumbo:
Brown chicken, andouille, and duck in hot oil. Season with a little Creole blend. Take out of pot and add bay leaf, celery, and peppers to pot and add a little Creole blend (1 teaspoon). Cook for about 10 minutes. Add garlic & cook 2 minutes. Add wine & tomatoes & a pinch of Creole blend and cook until most liquid has evaporated. Return meats to pot and add stock. Simmer 30 minutes.$$,2,@cat1,NULL,PARSEDATETIME('2009-02-19','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Pea and Bacon Risotto', $$No need to open a bottle of white wine for the few tablespoons you'd require: Lemon brightens up this easy risotto.

Yield: Makes 4 servings
Active Time: 35 min
Total Time: 35 min

3.5 cups reduced-sodium chicken broth
2 cup water
4 bacon slices, chopped
4 large garlic cloves, finely chopped
1 1/3  cup Arborio rice
1 cup frozen peas
1/2 C grated Parmigiano-Reggiano
4 tablespoon unsalted butter
1 teaspoon grated lemon zest
1 teaspoon fresh lemon juice
  
preparation

Bring broth and water to a simmer in a small saucepan.

Cook bacon in a small heavy saucepan over medium-low heat, stirring, until crisp. Transfer with a slotted spoon to a paper towel to drain.

Add garlic to bacon fat in pan and cook, stirring occasionally, until pale golden, about 1 minute. Add rice, stirring to coat.

Add 1/4 cup hot broth mixture and simmer briskly, stirring constantly, until broth is absorbed. Continue simmering and adding hot broth mixture, about 1/4 cup at a time, stirring frequently and letting each addition be absorbed before adding the next, until rice is just tender and creamy-looking but still al dente, 18 to 22 minutes. (Reserve leftover broth mixture.)

Add peas and cook, stirring occasionally, 2 minutes.

Stir in cheese, butter, zest, and juice. Thin risotto with some of reserved broth mixture if desired and season with salt and pepper. Top with bacon.
 
$$,2,@cat1,NULL,PARSEDATETIME('2009-02-22','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Chicken Chili Verde', $$From Epicurious

3 pounds skinless boneless chicken thighs, cut into 1/2-inch pieces
5 tablespoons all purpose flour
7 tablespoons olive oil

3 cups chopped onions
3 tablespoons chopped garlic
1 1/2 cups chopped fresh Anaheim chilies (about 4)
1 jalapeno pepper (optional)
2 green bell peppers, cut lengthwise into 1/4-inch-thick strips
5 cups frozen corn kernels, thawed

6 cups canned low-salt chicken broth
12 tomatillos, husked, coarsely chopped
2 tablespoons chopped fresh oregano or 1 tablespoon dried
2 tablespoons chili powder
1 tablespoon ground cumin
1 teaspoon paprika
2 cinnamon sticks

1 cup chopped fresh cilantro
Tortilla chips

Sprinkle chicken with salt and pepper. Coat with flour. Heat 1 tablespoon oil in heavy large skillet over medium-high heat. Add half of chicken to skillet and sauté until golden brown, about 10 minutes. Transfer to large pot. Repeat with 1 tablespoon oil and remaining chicken.
Heat 2 tablespoons oil in same skillet over medium-high heat. Add onions and garlic; sauté until onions are tender, about 5 minutes. Transfer to pot with chicken. Heat 1 tablespoon oil in same skillet over medium-high heat. Add Anaheim chilies and green bell peppers. Sauté until tender, about 4 minutes. Transfer to pot with chicken. Heat 1 tablespoon oil in same skillet. Sauté half of corn until tender, about 2 minutes. Transfer to pot with chicken. Repeat with remaining 1 tablespoon oil and corn.
Add chicken broth, tomatillos, oregano, chili powder, cumin, paprika and cinnamon sticks to pot. Bring liquid to boil. Reduce heat and simmer until mixture thickens and flavors blend, stirring occasionally, about 2 hours. (Can be prepared 1 day ahead. Refrigerate until cool. Cover and keep refrigerated. Rewarm over medium heat before continuing.)
Mix cilantro into chili. Transfer to large serving bowl. Garnish with tortilla chips and serve.
$$,2,@cat4,NULL,PARSEDATETIME('2011-05-02','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Golden and Crimson Beet Salad with Oranges, Fennel, and Feta ', $$Bon Appétit | October 2006 
by Alfred Portale
Gotham Bar and Grill
Yield: Makes 6 servings

2 large (3-inch-diameter) red beets, all but 1 inch of tops trimmed
2 large (3-inch-diameter) golden beets, all but 1 inch of tops trimmed
5 tablespoons extra-virgin olive oil, divided

4 oranges
1 small fresh fennel bulb, trimmed, quartered, cored, cut into paper-thin strips

1/4 cup finely chopped fresh mint
1/4 cup finely chopped fresh Italian parsley
1/4 cup hazelnuts, toasted, husked, halved
1 small shallot, finely chopped
1 tablespoon balsamic vinegar
Coarse kosher salt
Freshly ground white pepper

1 1/2 cups coarsely crumbled feta cheese

 
Preheat oven to 400°F. Place all beets in 9x9x2-inch metal pan. Drizzle 3 tablespoons oil over; sprinkle with salt and pepper and toss to coat. Cover pan with foil and roast beets until tender, about 1 1/2 hours. Uncover and cool completely. Peel beets, cut into 1/2-inch cubes, and place in large bowl, each color on opposite side; sprinkle with salt and pepper. Do ahead Can be made 1 day ahead. Cover and chill. Bring to room temperature before using.
 
$$,2,@cat10,NULL,PARSEDATETIME('2009-02-24','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Watermelon, Ricotta Salata, Basil, and Pine Nut Salad ', $$Bon Appétit | August 2005 

by Cat Cora

One of Cat Cora's signature dishes is a watermelon, feta, and mint salad (a nod to her Greek heritage). Here, she gives the recipe an Italian accent.

Yield: Makes 6 servings

 
3 tablespoons thinly sliced fresh basil
2 tablespoons fresh lime juice
2 tablespoons extra-virgin olive oil
1 4-pound seedless watermelon, cut into 1/2-inch cubes (about 6 cups)
1/2 pound ricotta salata (salted dry ricotta cheese),* cut into 1/4-inch cubes  (or use Feta)
1/4 cup pine nuts, toasted

 
Whisk first 3 ingredients in small bowl. Season dressing with salt and pepper. Place watermelon and ricotta salata in medium serving bowl. Drizzle with dressing; toss. Sprinkle with pine nuts.

*Available at supermarkets, Italian markets, and specialty foods stores.

  
$$,2,@cat10,NULL,PARSEDATETIME('2009-02-24','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Bakeshop Blueberry Muffins', $$Prep: 10 min., Bake: 25 min., Cool: 5 min. 

3 cups all-purpose flour
1 cup sugar
4 teaspoons baking powder
3/4 teaspoon salt
3/4 cup milk
2/3 cup vegetable oil
2 large eggs
2 cups frozen blueberries
4 teaspoons sugar

Combine first 4 ingredients in a large bowl; make a well in center of mixture. Stir together milk, oil, and eggs in a small bowl; add to dry ingredients, stirring just until dry ingredients are moistened. Fold in frozen blueberries. (Batter will be thick.) Spoon batter into 12 greased muffin cups, generously filling completely full. Sprinkle batter evenly with 4 teaspoons sugar.

Bake at 400° for 20 to 25 minutes or until tops are golden and a wooden pick inserted in center comes out clean. Remove from pan immediately, and cool on a wire rack 5 minutes.


Yield:  Makes 1 dozen
$$,2,@cat6,NULL,PARSEDATETIME('2009-03-22','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Pierogi', $$Basic dough

3 eggs
1 t salt
2 to 2 1/2 cups flour
1 t oil
water as needed added 1 t. at a time
Mix and knead until smooth. Cover and refrigerate 20 min.
Roll out THIN, turn dough and roll on reverse side.
Cut out with donut cutter or glass, about 4 inches round.

Filling

mashed potatoes (1 to 2 cups)
cooked onions in butter until golden
1/2 cup cheese (I used farmers)

Put 1 T. filling in each Pierogi, fold in half, seal edges.
Put in boiling water, boil until they raise to the top (about 6-8 min.) At this point you can freeze them. To use frozen reboil 3-4 min. then fry.

Fry them in butter for one minute turning until golden.$$,2,@cat1,NULL,PARSEDATETIME('2009-03-22','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'  Orecchiette Pasta with Peas, Ham, and Cream', $$Yield: Makes 4 to 6 servings

1 pound orecchiette pasta
3 tablespoons butter
1 small white onion, diced, (about 1/2 cup)
1/2 cup frozen or shelled fresh peas
2 tablespoon water
4 ounces cooked ham, cut into thin strips
3/4 cup heavy cream
1/4 cup grated Parmesan cheese
Salt and pepper to taste

  preparation

1. Cook pasta according to package directions.

2. Meanwhile, warm 1 tablespoon of the butter in a medium saucepan over medium-low heat. When the butter starts to bubble, add onion and cook for 3 to 4 minutes, until translucent, stirring often.

3. Add the peas and water to the pan and cook 3 minutes, stirring. Stir in the ham and cook 2 minutes. Add the cream; bring to a low simmer and cook 5 minutes.

4. Drain pasta; place in large serving bowl. Stir remaining 2 tablespoons butter into the cream mixture over low heat until melted. Stir in the cheese. Pour sauce over pasta and toss to coat. Season with salt and pepper to taste.
$$,2,@cat1,NULL,PARSEDATETIME('2009-03-24','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Quick Tomato Sauce', $$Makes 3 cups, enough for 1 pound of pasta.

This full-flavored tomato sauce takes only 15 minutes to prepare. High-quality canned tomatoes will make a big difference in this sauce. Our preferred brands of crushed tomatoes are Tuttorosso and Muir Glen. Grate the onion on the large holes of a box grater.

2 tablespoons unsalted butter
1/4 cup grated onion , from 1 medium onion (see note above)
1/4 teaspoon dried oregano
Table salt
2 medium garlic cloves , minced or pressed through garlic press (about 2 teaspoons)
1 (28-ounce) can crushed tomatoes (see note)
1/4 teaspoon sugar
2 tablespoons coarsely chopped fresh basil leaves
1 tablespoon extra virgin olive oil
Ground black pepper

Heat butter in medium saucepan over medium heat until melted. Add onion, oregano, and ½ teaspoon salt; cook, stirring occasionally, until liquid has evaporated and onion is golden brown, about 5 minutes. Add garlic and cook until fragrant, about 30 seconds. Stir in tomatoes and sugar; increase heat to high and bring to simmer. Lower heat to medium-low and simmer until thickened slightly, about 10 minutes. Off heat, stir in basil and oil; season with salt and pepper. Serve. $$,2,@cat1,NULL,PARSEDATETIME('2009-04-01','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'LINGUINE WITH SPRING VEGETABLES', $$Makes 4 servings

Prep time: 20 minutes. Total time: 20 minutes.

Coarse salt and ground pepper

3/4 pound linguine
1 pound asparagus washed (tough ends removed), cut into 1-inch lengths
1 medium zucchini washed, halved lengthwise (quartered if large) and thinly sliced
4 ounces sugar snap peas washed (stem ends trimmed), halved
1/2 cup heavy cream
1 tablespoon butter, cut into pieces
2 tablespoons fresh tarragon leaves

1. In a large pot of boiling salted water, cook pasta 4 minutes short of al dente; add asparagus, zucchini and snap peas. Cook until vegetables are crisp-tender, about 3 minutes. Reserve 1/2 cup pasta water; drain pasta mixture and set aside.

2. In the same pot, bring cream and butter to a simmer. Toss in pasta mixture and enough pasta water to create a thin sauce (it will thicken as it stands). Season with salt and pepper, and top with tarragon.

Nutritional information per serving: 475 calories; 15.2 grams fat (9 grams saturated fat); 14.9 grams protein; 70.7 grams carbohydrates; 5.1 grams fiber$$,2,@cat1,NULL,PARSEDATETIME('2009-04-01','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Spring Vegetable Risotto', $$Serves 4 as a main course or 6 as a first course.   

To make this dish vegetarian, replace the chicken broth with vegetable broth; the test kitchen’s favorite brand is Swanson Vegetarian Vegetable Broth (see related tasting). Onions can be substituted for the leeks. If substituting onions, use 1 roughly chopped medium onion (1 cup) in the broth and 2 minced medium onions (2 cups) in the risotto. At the end of cooking, you may have up to a cup of broth left over.
Ingredients
Gremolata
2 	tablespoons minced fresh parsley leaves , stems reserved
2 	tablespoons minced fresh mint leaves , stems reserved
1/2 	teaspoon finely grated zest from 1 lemon
Risotto
1 	pound asparagus , tough ends snapped off and reserved, spears cut on bias into 1/2-inch thick pieces
2 	medium leeks , white and light green parts halved lengthwise, washed, and sliced thin (about 4 cups), 2 cups roughly chopped greens reserved (see note)
4 	cups low-sodium chicken broth (see note)
3 	cups water
5 	tablespoons unsalted butter
	Table salt and ground black pepper
1/2 	cup frozen peas
2 	medium garlic cloves , minced or pressed through garlic press (about 2 teaspoons)
1 1/2 	cups Arborio rice (see note)
1 	cup dry white wine
1 1/2 	ounces grated Parmesan cheese (about 3/4 cup), plus extra for serving
2 	teaspoons juice from 1 lemon
Instructions

   1.

      1. For the Gremolata: Combine ingredients in small bowl and set aside.
   2.

      2. For the Risotto: Chop tough asparagus ends and leek greens into rough 1/2-inch pieces. Bring chopped vegetables, reserved parsley and mint stems, broth, and water to boil in large saucepan over high heat. Reduce heat to medium-low, partially cover, and simmer 20 minutes. Strain broth through fine-mesh strainer into medium bowl, pressing on solids to extract as much liquid as possible. Return strained broth to saucepan; cover and set over low heat to keep broth warm.
   3.

      3. . Heat 1 tablespoon butter in large Dutch oven over medium heat. When foaming subsides, add asparagus spears, pinch of salt, and pepper to taste. Cook, stirring occasionally, until asparagus is crisp-tender, 4 to 6 minutes. Add peas and continue to cook 1 minute. Transfer vegetables to plate and set aside.
   4.

      4. Melt 3 tablespoons butter in now-empty Dutch oven over medium heat. When foaming subsides, add leeks, garlic, 1/2 teaspoon salt, and 1/2 teaspoon pepper. Cook, stirring occasionally, until leeks are softened, 4 to 5 minutes. Add rice and cook, stirring frequently, until grains are translucent around edges, about 3 minutes. Add wine and cook, stirring frequently, until fully absorbed, 2 to 3 minutes.
   5.

      5. When wine is fully absorbed, add 3 cups hot broth to rice. Simmer, stirring every 3 to 4 minutes, until liquid is absorbed and bottom of pan is almost dry, about 12 minutes.
   6.

      6. Stir in about 1/2 cup hot broth and cook, stirring constantly, until absorbed, about 3 minutes; repeat with additional broth 3 or 4 times until rice is al dente. Off heat, stir in remaining tablespoon butter, Parmesan, and lemon juice; gently fold in asparagus and peas. If desired, add up to 1/4 cup additional hot broth to loosen texture of risotto. Serve immediately, sprinkling each serving with gremolata and passing Parmesan separately.

$$,2,@cat1,NULL,PARSEDATETIME('2009-04-25','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Banana cake with chocolate chips', $$3 very ripe bananas (the size doesn’t much matter; medium to large works)
2 large eggs
1 ½ cups unbleached all-purpose flour
1 cup granulated sugar
1 tsp. baking soda
2 tsp. ground cinnamon
1 tsp. pure vanilla extract
1 cup semisweet chocolate chips

Preheat the oven to 375 degrees Fahrenheit. Butter or spray an 8-inch square pan.

In a medium mixing bowl, mash the bananas well with a fork or potato masher. Add the eggs, and stir well to combine. Add the flour, sugar, baking soda, cinnamon, and vanilla, and stir to mix. Add ¾ cup of the chocolate chips, and stir briefly. Pour the batter into the prepared pan, and set aside.

In a small bowl, stir together the topping ingredients. Sprinkle the mixture evenly over the batter in the pan, and top with the remaining ¼ cup chocolate chips.

Bake for 35-40 minutes, or until a toothpick inserted into the center comes out clean. Let cool in the pan on a wire rack for at least 15 minutes before serving.
$$,2,@cat2,NULL,PARSEDATETIME('2009-05-02','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Beer-battered Salmon Tacos with Chipotle Crema', $$Prep: 10 minutes; Cook: 20 minutes.

8 corn tortillas
1 cup all-purpose flour
1 teaspoon sea salt
1 teaspoon coarsely ground pepper
1 cup beer, room temperature
Vegetable oil
1 pound salmon fillets, cut into pieces

Chipotle Crema- 8 ounces sour cream, 1/2 teaspoon lime zest, 2 tablespoons fresh lime juice, 1 to 2 teaspoons minced chipotle chiles in adobo sauce
1/2 teaspoon ground cumin, 1/4 teaspoon salt

Garnishes: lime wedges, shredded cabbage, chopped fresh cilantro

1. Wrap tortillas in foil, and bake at 200° for 10 to 15 minutes or until warm.

2. Combine flour and next 3 ingredients in a large, shallow bowl. Let stand 5 minutes.

3. Heat 1 inch oil in a 10-inch heavy pot (2 to 3 inches deep) over moderate heat until a deep-fat thermometer registers 360°.

4. Dip fish into batter to coat, draining excess. Fry fish in batches, turning once, 4 to 5 minutes or until golden. Drain on paper towels.

5. Assemble tacos with warm tortillas, fish, and Chipotle Crema. Garnish, if desired.

Yield:  Makes 4 servings$$,2,@cat1,NULL,PARSEDATETIME('2009-07-18','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Shrimp Tacos with Grilled Corn Salsa', $$Prep: 8 minutes; Marinate: 30 minutes; Cook: 10 minutes.

1 pound large shrimp, peeled and deveined
1 tablespoon olive oil
2 teaspoons fresh lime juice
1 tablespoon Mexican or taco seasoning mix
8 flour or corn tortillas
2 cups thinly shredded cabbage
Grilled Corn Salsa- see below

1. Combine first 4 ingredients in a bowl. Cover and let stand 30 minutes.

2. Grill, covered with grill lid, over medium-high heat (400°) 2 to 3 minutes on each side or until shrimp turn pink.

3. Wrap tortillas in foil; grill until warm.

4. Assemble tacos with tortillas, cabbage, and shrimp. Top with Grilled Corn Salsa.


Yield:  Makes 4 servings

Grilled Corn Salsa
Prep: 5 minutes; Cook: 12 minutes; Cool: 5 minutes.

4 ears fresh corn, shucked
1/2 teaspoon lime zest
1/4 cup fresh lime juice
1 tablespoon olive oil
1 small jalapeño chile, minced
1/2 teaspoon ground cumin
3/4 teaspoon salt
1 avocado, diced

1. Grill corn, covered with grill lid, over medium-high heat (400°) 12 to 15 minutes or until browned on all sides, turning occasionally. Remove from grill; cool.

2. Cut corn from cob into a bowl; stir in lime zest and next 5 ingredients. Fold in avocado.

Yield:  Makes 2 cups$$,2,@cat1,NULL,PARSEDATETIME('2009-07-18','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Fish Tacos with Jicama-Cilantro Coleslaw', $$Prep: 5 minutes; Marinate: 8 hours; Cook: 10 minutes.

1 lime
2 tablespoons ground cumin
3 tablespoons canola oil
2 1/2 pounds mahi-mahi, cut into 2-ounce pieces
24 taco-size corn or flour tortillas
Jicama-Cilantro Coleslaw- see below
Fire-roasted Tomatillo-and-Poblano Salsa- see below
Garnish: sliced radishes

1. Grate rind from lime, and squeeze juice to measure 3 tablespoons. Place rind and juice in a 1-gallon zip-top freezer bag. Add cumin and oil. Seal bag, and shake to combine. Add fish to marinade. Reseal bag, and turn to coat fish. Chill several hours.

2. Heat a large cast-iron or nonstick skillet over medium-high heat until hot. Add fish, and cook 10 minutes or until browned on all sides. Remove each piece of fish from skillet when it is done. (Do not overcook.) Break fish into smaller chunks.

3. Toast tortillas on both sides in a large skillet over medium heat while fish cooks. Cover tortillas, and keep warm.

4. Spoon fish into tortillas; top with Jicama-Cilantro Coleslaw and Fire-roasted Tomatillo-and-Poblano Salsa. Garnish, if desired.


Yield:  Makes 8 servings

Jicama-Cilantro Coleslaw
Prep: 12 minutes; Marinate: 30 minutes.
1 large jicama, peeled and cut into julienne strips
1 head green cabbage, cored and finely shredded
2 teaspoons sugar
2 teaspoons salt
1 lime
1 tablespoon ground cumin
1/2 teaspoon ground cayenne pepper
1 cup mayonnaise
1 large bunch fresh cilantro, coarsely chopped (about 1 cup)

1. Toss first 4 ingredients in a large bowl. Let stand, covered, 30 minutes.

2. Grate rind from lime, and squeeze juice to measure 3 tablespoons. Stir together rind, juice, cumin, cayenne, and mayonnaise in a small bowl. Add to cabbage mixture, and toss well. Toss in cilantro.

Yield:  Makes 8 cups

Fire-roasted Tomatillo-and-Poblano Salsa
Prep: 10 minutes; Cook: 25 minutes; Cool: 30 minutes. This salsa is excellent with fish tacos but also simply with tortilla chips. For a milder flavor, seed the jalapeños.
4 small poblano chiles, halved lengthwise
2 jalapeño chiles, stems removed and halved lengthwise
24 fresh tomatillos, husks removed
2 tablespoons canola oil, divided
4 garlic cloves, coarsely chopped
1 white onion, quartered
1 teaspoon ground coriander
2 small bunches fresh cilantro, trimmed and coarsely chopped
1 teaspoon salt

1. Place peppers and tomatillos on a large rimmed baking sheet. Drizzle with 1 tablespoon oil, turning to coat with a wide spatula. Place peppers cut side down, and broil vegetables 15 minutes or until charred, turning tomatillos but not peppers. Remove from oven; set aside.

2. Combine garlic and onion in a food processor; process until finely chopped.

3. Heat a large nonstick skillet over medium heat; add remaining 1 tablespoon oil. Add onion mixture. Cover and cook 6 minutes or until translucent, stirring often. Stir in coriander, and cook 10 seconds.

4. Process pepper, tomatillo, and accumulated juices in food processor until finely chopped; stir into onion mixture, and add 1 1/2 cups water. Bring mixture to a boil; reduce heat, and simmer 10 minutes. Stir in cilantro and salt. Cool completely; cover and chill.

Yield:  Makes 6 cups
$$,2,@cat1,NULL,PARSEDATETIME('2009-07-18','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Smoked Fish Tacos with Caribbean Salsa', $$Prep: 30 minutes; Cook: 10 minutes.

Hickory or alderwood chips
2 pounds firm whitefish fillets
2 tablespoons olive oil
1/2 teaspoon salt
1/2 teaspoon freshly ground pepper
12 (6 1/2-inch) flour or red chile tortillas
Caribbean Salsa
Garnishes: thinly sliced red cabbage, thinly sliced red onion, fresh cilantro leaves, lime wedges

1. Soak hickory chips in water to cover at least 30 minutes; drain. Wrap chips in heavy-duty aluminum foil; poke several holes in foil. Set aside.

2. Brush fillets with oil; sprinkle with salt and pepper.

3. Light gas or charcoal grill; place foil-wrapped chips directly on hot coals on 1 side. Coat grill rack on opposite side with cooking spray, and place on grill. Let grill preheat 10 to 15 minutes or until wood chips begin smoking.

4. Grill fillets, covered with lid, over medium heat (325° to 350°) 5 minutes on each side or until fish flakes with a fork.

5. Wrap flour tortillas in heavy-duty aluminum foil. Place on grill during last 5 minutes of cooking time to warm. Serve immediately with Caribbean Salsa. Garnish, if desired.


Yield:  Makes 6 servings

Caribbean Salsa
Prep: 10 minutes.
1 ripe mango, peeled and diced
1 cup diced fresh pineapple
1 cup diced papaya
2 tablespoons minced red onion
1 teaspoon jerk seasoning
2 tablespoons chopped fresh cilantro
2 teaspoons fresh lime juice
1/4 teaspoon salt (optional)
1/4 teaspoon freshly ground pepper

Combine all ingredients; cover and chill.


Yield:  Makes 3 cups$$,2,@cat1,NULL,PARSEDATETIME('2009-07-18','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'JO GOLDENBERG’S PARISIAN BAGELS ', $$MAKES 10 LARGE BAGELS

3 1/2 cups (approximately), bread flour [or substitute all-purpose flour] 
2 packages, dry yeast 
3 tablespoons, sugar 
1 tablespoon, salt 
1 1/2 cups, hot water (120-130 degrees) 
3 quarts water 
1 1/2 tablespoons, barley malt syrup [or substitute sugar in the same amount] 
1 egg white – beaten with 1 teaspoon, water 
topping of choice, if any (see Variations, below) 
cornmeal for sprinkling on the baking sheet 


 
Make the dough: In a mixing bowl (or the bowl of an electric mixer) measure 3 cups of the flour and stir in all the remaining dry ingredients. Pour in the hot water, and stir vigorously with a wooden spoon (or with the flat paddle attachment of the electric mixer at low speed) and beat for about 2 minutes. 

Add the remaining half-cup of flour, a little at a time, stirring by hand. When the batter becomes thick and heavy, attach the mixer’s dough hook (if using) or lift the dough from the bowl and place it on a lightly floured work surface for kneading by hand. 

Knead the dough: Knead the dough at medium low speed on the mixer – or by hand (using a push, turn and fold motion, energetically) for about 10 minutes – or until the dough is firm and solid when pinched with the fingers. Add flour as needed if the dough is sticky in your hands, or sticks to the sides of the mixing bowl (if using electric mixer). 

First Rising: When dough is kneaded enough, place it in an oiled mixing bowl, cover the bowl tightly with plastic wrap, and set aside at room temperature until it has doubled in volume – about 1 hour. 

Prepare water bath: Near the end of this rising time, bring the 3 quarts of water to the boil in a large saucepan. Add the malt syrup or sugar; then, reduce the heat and leave the water just barely moving – at a slow simmer. 

Shape the bagels: When the dough has doubled in volume, turn it out onto a lightly floured work surface and punch it down with extended fingers to remove excess gas. 

Divide the dough into 10 pieces (each will weigh about 3-4 ounces). Shape each piece into a ball. Allow the balls to stand and relax for a few minutes – then flatten each one with the palm of your hand. 

With your thumb, press deep into the center of the bagel and tear the depression open with your fingers. Pull the hole open, pull it down over a finger and smooth the rough edges. It should look like a bagel! Form all of the bagels and place them on your work surface. 

Second Rising: Cover the shaped bagels with wax paper or parchment paper. Leave them at room temperature just until the dough has risen slightly – about 10 minutes (this is called a “half proof”). [Cook’s Note: If the bagels are allowed to rise too much during this “second rise” – they will not sink when put in the simmering water; but, if that should happen, just pretend that they DID sink – and cook them for the same 1 minute as described below. The difference will be unnoticeable to most anyone.] 

Prepare the baking sheet: Preheat the oven to 400 degrees. [Cook’s Note: If using a convection oven, reduce the heat by 50 degrees.] Grease a baking sheet with shortening (or use a non-stick baking sheet, or line a baking sheet with “Silpat” or similar material) and sprinkle the baking sheet with cornmeal. 

Water-bathing the bagels: Into the gently simmering water prepared earlier, slip one bagel at a time (use a large skimmer, and gently lower them into the water). Simmer only 2 or 3 bagels at a time – do not crowd the pan. The bagels will sink and then rise again after a few seconds. Simmer gently for one minute, turning each bagel over once during that time. Lift each bagel out of the water with the skimmer, drain briefly on a towel, then place each bagel on the prepared baking sheet. Repeat until all bagels are simmered, drained and on the baking sheet. [Cook’s Note: Thanks to the malt syrup or the sugar that was added to the simmering water, the bagels will be shiny as they come from the water.] 

Baking the bagels: If toppings are desired, (see “Variations” below) now is the time to add them, by sprinkling the desired topping over the bagels. Brush each bagel lightly with the egg-white-water mixture first, then sprinkle the topping if desired – or leave unadorned, for water bagels. 

Place the baking sheet on the middle rack of the preheated oven for 25-30 minutes. When the bagel tops are a light brown, turn them over to complete baking. This turning-over step will keep the bagels in a rounded shape, instead of their being flat on the bottom. When brown and shiny, remove the finished bagels from the oven. 
Place the bagels on a metal rack to cool.

 
Variations:
Toppings may include: coarse salt, shredded onion, sesame seeds, poppy seeds, caraway seeds, or other flavors of your choice. Sprinkle toppings over before baking bagels, as described above. 

Another tasty treat: slice each bagel crosswise into 4 thin rounds. Return the rounds to the oven and bake the rounds until dry throughout, and just beginning to brown – about 20 minutes. Remove the rounds from the oven, immediately butter them and salt lightly – then return to the oven for about 5 minutes until the butter is absorbed by the rounds. Serve hot or at room temperature as a snack. 
 
$$,2,@cat8,NULL,PARSEDATETIME('2009-08-14','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Fresh Goat Cheese Ravioli', $$Inspired by Mario Batali’s recipe: Goat Cheese Tortelloni with Dried Orange and Fennel Pollen in The Babbo Cookbook

Filling:
6 oz. fresh goat cheese
1/2 cup whole milk
1 tablespoon Italian parsley, chopped (plus more for garnish)
5 sage leaves, chopped
1 tablespoon fresh rosemary, chopped
1/2 teaspoon grated nutmeg
1/4 cup parmigiano reggiano

salt and fresh ground black pepper

Fresh pasta dough. 

White winde sauce:
3 tablespoons olive oil
1 tablespoon butter
1/4 cup dry white wine
3-4 cloves of garlic, chopped finely

  
Mix filling ingredients in a bowl and chill in the fridge for at least 30 minutes.
Prepare fresh pasta and roll into sheets. Use 2 Tbl of filling for each ravioli leaving 1 1/2 inch on each side.  Use water to close ravioli and allow to sit for 10 minutes. Boil in water for 3-4 minutes. Coat with white wine sauce or your favorite pasta sauce. 
$$,2,@cat1,NULL,PARSEDATETIME('2009-08-27','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Herbed Summer Squash and Potato Torte with Parmesan', $$Bon Appétit | June 2001

Yield: Makes 8 servings
ingredients
1 bunch green onions, thinly sliced
1 cup grated Parmesan cheese
2 tablespoons all purpose flour
1 tablespoon chopped fresh thyme
1 1/2 teaspoons salt
3/4 teaspoon ground black pepper

3 pounds peeled Yukon Gold potatoes and summer squash, cut into 1/8-inch-thick rounds
6 teaspoons olive oil

Preheat oven to 375°F. Butter 8-inch square pan. Set aside 1/4 cup sliced green onions. Toss remaining green onions, cheese, flour, thyme, salt and pepper in medium bowl to blend.

Layer 1/4 of potatoes in bottom of prepared pan, overlapping slightly. Layer 1/4 of squash atop potatoes. Drizzle with 1 teaspoon oil. Sprinkle with 1/4 of cheese mixture.  Repeat 3 times. 

Cover pan with foil. Bake until potatoes are almost tender, about 40 minutes. Remove foil; bake uncovered until tortes begin to brown and potatoes are tender, about 25 minutes longer. (Can be made 6 hours ahead. Cool. Cover with foil and chill. Rewarm, covered with foil, in 350°F oven until heated through, about 30 minutes.)

Use remaining green onions as garnish. 
$$,2,@cat5,@subcat2,PARSEDATETIME('2009-09-06','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Apple-Squash Fritters', $$2 apples, peeled, cored, and cut into 2-inch cubes (we used Jonagolds)
2 pounds Kabocha squash, peeled, seeded, and cut into 1-inch cubes
4 garlic cloves, peeled
3 tablespoons olive oil
2 tablespoons sugar
1 teaspoon ground cinnamon
2 teaspoons garam masala
1 teaspoon salt
1 tablespoon cornstarch
1/4 cup sorghum flour
1/4 cup sweet rice flour plus 2 tablespoons sweet rice flour
1/2 teaspoon xanthan gum
2 cups peanut oil

Preheating. Preheat the oven to 350°.

Roasting the apples, squash, and garlic. Put the apple and squash pieces, plus the garlic cloves, on a baking sheet. Brush them with the olive oil. Roast in the oven until the garlic has softened, about 15 minutes. Take out the garlic and put the baking sheet back in the oven. Roast the apple and squash until they are soft, about 20 more minutes.

Making cinnamon sugar. Mix the cinnamon and sugar together.

Mashing the squash mixture. Put the roasted apples, squash, and garlic in a large bowl. Mash them all together with a fork or potato masher. Add the garam masala, salt, cornstarch, the sorghum flour, 1/4 cup of the sweet rice flour, and xanthan gum. Stir until combined. Shape the dough, which will be soft, into 2-inch balls. Roll the balls in the remaining sweet rice flour.

Frying the fritters. Heat the peanut oil in a deep pot (make sure no little ones are nearby) until it reaches 350° on a candy thermometer. Lower the squash balls into the oil, gently, and let them fry, turning them once in a while, until they are golden brown, about 4 minutes. Take the fritters out of the oil with a slotted spoon, pausing to let the oil drip back into the pot, and put them on paper towels.

Sprinkle the fritters with the cinnamon sugar and eat as soon as they are cool enough to touch.

Feeds 4 hungry adults, plus a couple of little ones.$$,2,@cat2,NULL,PARSEDATETIME('2009-10-22','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Easy Chicken Adobo', $$From Sunset Magasine

Prep and Cook Time: 45 minutes.

1 tablespoon vegetable oil
6 bone-in, skinless chicken thighs
3 cloves garlic, minced
2/3 cup apple cider vinegar
1/3 cup soy sauce
1 teaspoon whole black peppercorns
1 bay leaf


1. Heat oil in a medium frying pan over medium-high heat. Add chicken and cook until lightly browned, about 5 minutes, then turn over and cook an additional 5 minutes. Transfer chicken to a plate and set aside.

2. Pour off all but 1 tbsp. of pan drippings and return pan to low heat. Add garlic and sauté until soft, about 1 minute. Add remaining ingredients and stir to incorporate. Return chicken to pan and cook, covered, for 20 minutes.

3. Uncover, increase heat to medium-low and cook 15 to 20 minutes more, occasionally spooning sauce over chicken, until sauce thickens a bit and chicken is tender and nicely glazed with sauce. Remove bay leaf before eating.

4.  Serve with rice. 

Note: Nutritional analysis is per serving.



Yield:  Makes 4 servings

CALORIES 251 (35% from fat); FAT 9.9g (sat 2.1g); CHOLESTEROL 138mg; CARBOHYDRATE 5.7g; SODIUM 1501mg; PROTEIN 34g; FIBER 0.2g 

Sunset, MARCH 2007

$$,2,@cat1,NULL,PARSEDATETIME('2009-10-22','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Chicken Tagine with Pine-nut Couscous', $$From Sunset Magazine

Most people think of traditional Moroccan tagines as being long-simmered lamb dishes. When prepared with quick-cooking chicken thighs, they're actually relatively fast to make. Fragrant spices give this dish vibrant layers of flavor, and the cooked-down dried fruits create a silken richness. 

Prep and Cook Time: 1 hour, 20 minutes.

2 tablespoons olive oil
6 bone-in chicken thighs (with skin)
1 medium onion, thinly sliced (about 2 cups)
4 large garlic cloves, minced
1 tablespoon minced fresh ginger
1 teaspoon ground cinnamon
1 teaspoon ground turmeric
1 teaspoon ground coriander
1/4 teaspoon freshly ground black pepper
2 cardamom pods, lightly crushed
2 small dried red chiles, such as arbol
1 teaspoon salt
15 dried apricots, halved
15 pitted prunes, halved
4 cups reduced-sodium chicken broth
5 fresh flat-leaf parsley sprigs plus 1/4 cup minced fresh parsley leaves
1 1/2 cups couscous
1/4 cup lightly toasted pine nuts
1 teaspoon grated fresh lemon zest


1. Heat oil in a 6- to 8-qt. heavy-bottomed pot over medium-high heat. Add half the chicken, skin side down, and cook until golden brown, 5 to 7 minutes. Turn over and cook 3 minutes more. Transfer to a plate; repeat with remaining chicken and set aside.

2. Drain all but 2 tbsp. oil from pot and reduce heat to medium. Add onion and sauté until golden, 5 to 7 minutes. Add garlic and ginger and cook, stirring constantly, for 3 minutes. Add cinnamon, turmeric, coriander, black pepper, cardamom pods, chiles, and salt and stir to combine. Return chicken to pot and add apricots, prunes, 2 cups chicken broth, and parsley sprigs. Bring mixture to a boil, then reduce heat to medium-low. Cover and simmer 40 minutes. Take pot off heat and remove parsley sprigs and chiles. Remove skin from chicken.

3. In a covered medium saucepan, bring remaining 2 cups chicken broth to a boil. Turn off heat, stir in couscous, cover, and let sit 5 minutes. Uncover pan and fluff couscous with a fork. Stir in 2 tbsp. minced parsley, pine nuts, and lemon zest and toss to combine. Mound couscous on a platter. Top with chicken thighs and pour sauce over the chicken. Sprinkle with remaining 2 tbsp. parsley.

Note: Nutritional analysis is per serving.



Yield:  Makes 4 to 6 servings

CALORIES 793 (40% from fat); FAT 35g (sat 8.5g); CHOLESTEROL 124mg; CARBOHYDRATE 75g; SODIUM 1043mg; PROTEIN 46g; FIBER 6.2g 

Sunset, MARCH 2007
$$,2,@cat1,NULL,PARSEDATETIME('2009-10-22','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Alfajores de Dulce de Leche (Caramel Sandwich Cookies)', $$Prep and Cook Time: about 1 1/2 hours, plus about 30 minutes to freeze. Notes: Dulce de leche, a thick, rich caramel made with sweetened milk, is sold in Mexican markets and some well-stocked supermarkets. If it's unavailable, use a thick caramel sauce or caramel ice cream topping.

1 cup (1/2 lb.) butter, at room temperature
2/3 cup sugar
2 large egg yolks
1 large egg
3 tablespoons dark rum
1 teaspoon vanilla
2 cups all-purpose flour
1 cup cornstarch
1 teaspoon baking powder
About 1 3/4 cups dulce de leche or caramel sauce (see notes)

1. In a large bowl, with an electric mixer on medium speed, beat butter and sugar until smooth. Add egg yolks, whole egg, rum, and vanilla and beat until well blended.

2. In another bowl, mix 2 cups flour, cornstarch, and baking powder. Stir or beat into butter mixture until well blended. Divide dough in half. Flatten each portion into a disk, wrap in plastic wrap, and freeze until firm, about 30 minutes.

3. Unwrap dough. On a lightly floured surface, with a floured rolling pin, roll one disk at a time to about 1/8 inch thick. With a floured 2- to 3-inch round cutter, cut out cookies. Place about 1 inch apart on buttered or cooking parchment-lined 12- by 15-inch baking sheets. Gather excess dough into a ball, reroll, and cut out remaining cookies.

4. Bake in a 350° oven until cookie edges are golden, about 10 minutes; if baking more than one pan at a time, switch pan positions halfway through baking. Let the cookies cool on sheets for 5 minutes, then use a wide spatula to transfer them to racks to cool completely.

5. Turn half the cookies bottom side up and spread each with about 1 tablespoon dulce de leche. Top with remaining cookies, bottom side down. Place coconut in a shallow bowl. Gently squeeze each sandwich until filling begins to show at the edges.

Nutritional analysis is per sandwich cookie.

Yield:  Makes 18 to 25 sandwich cookies

CALORIES 229 (36% from fat); FAT 9.2g (sat 5.7g); CHOLESTEROL 46mg; CARBOHYDRATE 35g; SODIUM 188mg; PROTEIN 2.1g; FIBER 0.5g 

Sunset, NOVEMBER 2003
$$,2,@cat2,NULL,PARSEDATETIME('2009-10-22','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Orecchiette pasta with kale, bacon and oregano', $$Adapted from Jerry Traunfeld's recipe in Herbal Kitchen

Yield: 4 Servings
Ingredients

1 bunch kale (12 ounces) 
12 ounces orecchiette pasta 
4 ounces bacon, diced 
1 tablespoon olive oil 
2 cloves garlic 
¼ teaspoon red pepper flakes 
2 tablespoons chopped oregano 
Kosher salt 
½ cup grated Parmigiano-Reggiano 

Directions

Bring a large pot of salted water to a boil. Wash the kale, leaving the leaves wet, and chop it into 1-inch sections, discarding the tough bottom inch or two of the stems.

Stir the orecchiette into the boiling water. While the pasta is cooking, cook the bacon in the olive oil in a large skillet over medium heat, stirring often, until it begins to brown. Stir in the garlic and red pepper flakes, and after half a minute or so, add as much of the chopped kale as will fit in the pan. Toss the kale with tongs until it wilts down, and then add the rest of the kale. Ladle about ¼ cup of the pasta cooking liquid into the pan, toss in the oregano, and continue to cook until the kale is no longer tough (it will not be completely tender either), 3 to 4 minutes. Taste and add salt if it needs it (the bacon might contribute enough).

When the pasta is tender but still firm, drain it and add it to the skillet. Sprinkle with the cheese, toss it all together, and serve in warm shallow bowls.
$$,2,@cat1,NULL,PARSEDATETIME('2009-11-16','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Bourbon-Walnut Sweet Potato Mash ', $$Bon Appétit | November 2007 

Michael Lomonaco

Yield: Makes 8 to 10 servings
 
4 pounds red-skinned sweet potatoes (yams)

1/2 cup whipping cream
6 tablespoons (3/4 cup) butter
1/4 cup pure maple syrup
2 tablespoons bourbon
1 1/2 teaspoons ground cinnamon
1 teaspoon ground allspice
3/4 teaspoon ground nutmeg
1 cup walnuts, toasted, chopped

 
Preheat oven to 350°F. Roast potatoes on rimmed baking sheet until tender, 1 to 1 1/2 hours. Cool slightly. Scoop flesh into large bowl; discard skins. Mash hot potatoes until coarse puree forms.

Heat cream and butter in heavy small saucepan over low heat until butter melts, stirring occasionally. Gradually stir hot cream mixture into hot potatoes. Stir in syrup, bourbon, and all spices. Season with salt and pepper. DO AHEAD: Can be prepared 1 day ahead. Cover and chill. Rewarm in microwave. Sprinkle nuts over and serve.
 
$$,2,@cat5,@subcat3,PARSEDATETIME('2009-11-18','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Classic Beef Stew', $$
2 pounds trimmed boned beef chuck or other cut suitable for stewing
1/2 cup all-purpose flour
3 to 5 tablespoons vegetable oil
1 onion (8 oz.), peeled and sliced
3 cloves garlic, peeled and minced
2 bay leaves
1 tablespoon lemon juice
1 teaspoon Worcestershire
1 teaspoon salt
1 teaspoon sugar
1 teaspoon paprika
1/2 teaspoon pepper
1/4 teaspoon ground cloves or ground allspice
2 cups dry red wine
1 can (14 oz.) fat-skimmed beef broth
1 pound thin-skinned potatoes, scrubbed and cut into 3/4-inch chunks
3/4 pound carrots, peeled and thinly sliced crosswise
3 stalks celery (8 oz. total), rinsed and thinly sliced
8 ounces small boiling onions, peeled

1. Rinse beef and pat dry, cut into 1 1/2- to 2-inch chunks. Put flour in a paper bag. Add beef and shake to coat with flour.

2. Pour 3 tablespoons oil into a 5- to 6-quart Dutch oven over medium-high heat. When hot, add half the meat; turn pieces as necessary until well browned on all sides, 8 to 10 minutes total. Transfer to a bowl. If pan is dry, add 1 to 2 more tablespoons oil. Add remaining beef and any extra flour in bag; repeat to brown pieces on all sides. Return all meat and juices to pan.

3. Add sliced onion, minced garlic, bay leaves, lemon juice, Worcestershire, salt, sugar, paprika, pepper, ground cloves, wine, and broth to pan. Stir often, scraping up browned bits, until mixture is simmering. Cover pan tightly, reduce heat to low, and simmer, stirring occasionally, until beef is tender when pierced, 1 1/2 to 1 3/4 hours.

4. Add potatoes, carrots, celery, and boiling onions to pan. Continue cooking, covered, until vegetables are tender when pierced, 25 to 30 minutes longer.

Yield:  Makes 6 servings

CALORIES 452 (36% from fat); FAT 18g (sat 5.1g); CHOLESTEROL 98mg; CARBOHYDRATE 36g; SODIUM 598mg; PROTEIN 35g; FIBER 4.9g

Sunset, NOVEMBER 1987
$$,2,@cat1,NULL,PARSEDATETIME('2009-11-21','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Pasta Dough- Tyler Florence', $$Serves: 24 ravioli

Ingredients

2 cups all-purpose flour, plus more for dusting
1 teaspoon salt
3 large eggs, plus 1 for egg wash
2 tablespoons extra-virgin olive oil
Cornmeal, for dusting

Directions

To make the pasta dough: In an electric mixer fitted with a dough hook*, combine the flour and salt. Add the eggs, 1 at a time, and continue to mix. Drizzle in 1 tablespoons of the olive oil and continue to incorporate all the flour until it forms a ball. Sprinkle some flour on work surface, knead and fold the dough until elastic and smooth, this should take about 10 minutes. Brush the surface with the remaining olive oil and wrap the dough in plastic wrap; let rest for about 30 minutes to allow the gluten to relax.

*Alternatively if you don't have an electric mixer: Combine the flour and salt on a flat work surface; shape into a mound and make a well in the center. Add the eggs and 1 tablespoon of the olive oil to the well and lightly beat with a fork. Gradually draw in the flour from the inside wall of the well in a circular motion. Use 1 hand for mixing and the other to protect the outer wall. Continue to incorporate all the flour until it forms a ball. Continue as directed above.

Cut the ball of dough in 1/2, cover and reserve the piece you are not immediately using to prevent it from drying out. Dust the counter and dough with a little flour. Press the dough into a rectangle and roll it through a pasta machine, 2 or 3 times, at widest setting. Pull and stretch the sheet of dough with the palm of your hand as it emerges from the rollers. Reduce the setting and crank the dough through again, 2 or 3 times. Continue tightening until the machine is at the narrowest setting; the dough should be paper-thin, about 1/8-inch thick (you should be able to see your hand through it.). Dust the sheets of dough with flour as needed.

Beat 1 egg with 1 tablespoon of water to make an egg wash. Dust the counter and sheet of dough with flour, lay out the long sheet of pasta, and brush the top surface with the egg wash, which acts as a glue. Drop tablespoons of your favorite filling on 1/2 of the pasta sheet, about 2-inches apart. Fold the other 1/2 over the filling like a blanket. With an espresso cup or fingers, gently press out air pockets around each mound of filling. Use a sharp knife to cut each pillow into squares and crimp the 4 edges with the tins of a fork to make a tight seal. Dust the ravioli and a sheet pan with cornmeal to prevent the pasta from sticking and lay them out to dry slightly while assembling the rest.

Cook the ravioli in plenty of boiling salted water for 4 minutes; they'll float to the top when ready, so be careful not to overcrowd the pot. Lift the ravioli from water with a large strainer or slotted spoon. Bath the ravioli in your favorite sauce to lightly coat and serve.$$,2,@cat1,NULL,PARSEDATETIME('2009-11-23','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Pasta Dough- Thomas Keller', $$The French Laundry Cookbook

Yield: Makes about 14 ounces dough

ingredients
Pasta Dough
1 3/4 cups (8 ounces) all-purpose flour
6 large egg yolks
1 large egg
1 1/2 teaspoons olive oil
1 tablespoon milk

preparation

Put dry ingredients in stand mixer bowl. Mix all wet ingredients and slowly add to mixer bowl. 

Begin kneading. The kneading process can take anywhere from 10 to 15 minutes. Even if you think you are finished kneading, knead it for an extra ten minutes; you cannot overknead this dough. It is important to work the dough long enough to pass the pull test; otherwise, when it rests, it will collapse.

Double-wrap the dough in plastic wrap to ensure that it does not dry out. Let the dough rest for at least 30 minutes and up to 1 hour before rolling it through a pasta machine. The dough can be made a day ahead, wrapped and refrigerated; bring to room temperature before proceeding.$$,2,@cat1,NULL,PARSEDATETIME('2009-11-23','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Pasta Dough- semolina and egg past from allrecipes.com', $$Prep Time: 30 Minutes
Cook Time: 5 Minutes
	
Ready In: 1 Hour 5 Minutes
Servings: 4

Ingredients:
1 cup all-purpose flour
1 cup semolina flour
1/2 pinch salt
	
3 large eggs
1 tablespoon olive oil

Directions:
Thoroughly sift together all-purpose flour, semolina flour, and pinch of salt. On a clean surface, make a mountain out of flour mixture then make a deep well in center. Break the eggs into the well and add olive oil. Whisk eggs very gently with a fork, gradually incorporating flour from the sides of the well. When mixture becomes too thick to mix with a fork, begin kneading with your hands.

Knead dough for 8 to 12 minutes, until it is smooth and supple. Dust dough and work surface with semolina as needed to keep dough from becoming sticky. Wrap dough tightly in plastic and allow it to rest at room temperature for 30 minutes.$$,2,@cat1,NULL,PARSEDATETIME('2009-11-23','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Salsa Verde Braised Pork (dutch oven or slow-cooker)', $$Braising the pork—simmering it for a long time in liquid under cover, with browning for flavor—makes it fork-tender. Prep and Cook Time: about 4 hours.


3 1/2 pounds bone-in pork shoulder (aka pork butt)
1 bottle (15 oz.) salsa verde
1 medium onion, finely chopped
3 cups reduced-sodium chicken broth
2 teaspoons cumin seeds
2 teaspoons coriander seeds
1 teaspoon dried oregano
1/2 cup chopped fresh cilantro, plus some leaves
Salt


1. Trim excess pork fat. Put meat in a large casserole or Dutch oven with salsa, onion, broth, cumin seeds, coriander seeds, and oregano. Bring to a boil over high heat; reduce heat, cover, and simmer until meat is very tender when pierced, about 3 hours.

2. Preheat oven to 375°. With 2 wide spatulas, transfer meat to a rimmed baking pan. Bake until richly browned, 30 minutes.

3. Meanwhile, skim and discard fat from pan juices. Boil juices, stirring, until reduced to 2 3/4 cups, 8 to 10 minutes.

4. With 2 forks, tear meat into large shreds. Add to pan and stir in chopped cilantro. Season with salt. Spoon into a serving bowl and sprinkle with cilantro leaves. Serve with tortillas and more salsa verde.

Note: Nutrition analysis is per serving.

Slow-cooker Salsa Verde Pork: Put trimmed pork in a slow cooker (5 to 6 qt.) and turn heat to high. In a pan, bring salsa, onion, broth, cumin seeds, coriander seeds, and oregano to a boil. Pour over pork, cover, and cook until meat is very tender when pierced and registers at least 165° on an instant-read thermometer, at least 7 or up to 9 hours. Continue recipe with step 2, using a large pot for step 3.



Yield:  Makes 6 servings

CALORIES 571 (63% from fat); FAT 40g (sat 14g); CHOLESTEROL 147mg; CARBOHYDRATE 16g; SODIUM 1101mg; PROTEIN 36g; FIBER 0.8g 

Sunset, FEBRUARY 2008




 
$$,2,@cat1,NULL,PARSEDATETIME('2009-12-03','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Pumpkin muffin (whole wheat)', $$1/2 cup all-purpose flour
1 cup whole wheat flour
1 teaspoon baking powder
1 1/2 cups roasted pumpkin puree
1/3 cup olive oil
2 large eggs
3/4 t cinnamon
1/4 t nutmug
1/2 t ground ginger
1/2 t ground cloves
3/4 cup sugar
1/2 teaspoon baking soda
1/2 teaspoon salt

Preheat oven to 350 F. Line mini-muffin pan with muffin cups.

Mix together pumpkin, oil, eggs, pumpkin-pie spice, sugar, baking soda and salt in a large bowl until smooth.

Stir together the flours and baking powder.

Add dry ingredients the pumpkin mixture. Mix until just combined.

Pour batter into each muffin cup, so that each cup is about 3/4 full.

Bake for about 18-20 minutes, or until muffins are puffed and golden brown. When muffins are done, a wooden toothpick inserted into the center of the muffin should come out clean.$$,2,@cat2,NULL,PARSEDATETIME('2009-12-11','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Lasagna with Sausage Ragu', $$Time: 2 hours.

About 2 tbsp. olive oil, divided
1/2 cup chopped onion
1/2 cup chopped celery
1/2 cup chopped carrot
1 pound turkey Italian sausage, casings removed
1 teaspoon salt, divided
1 cup low-fat (1%) milk
1/2 cup dry white wine, such as Chardonnay
1 can (28 oz.) whole tomatoes, including juices, finely chopped or crushed with your hands
1 cup tomato juice
1/2 teaspoon freshly ground black pepper, divided
2 1/2 cups low-fat (1%) cottage cheese
1 large egg
1/2 cup freshly grated parmesan cheese, divided
1/4 teaspoon freshly grated nutmeg
12 ounces lasagna noodles


1. In a large, heavy saucepan, heat 1 tbsp. oil over medium heat. Add onion; sauté until golden, 5 minutes. Stir in celery and carrot; cook 5 more minutes. Add sausage and 1/2 tsp. salt, breaking up meat with a spoon, and cook until it loses its raw color.

2. Add milk and cook over medium heat, stirring, until completely evaporated, 10 to 12 minutes. (The mixture will appear quite curdled at this point.) Add wine and cook until reduced by half, about 3 minutes. Add tomatoes and juice, bring to a boil, lower heat, and gently simmer, uncovered. Cook ragù until liquid reduces by a third, about 30 minutes. Season with 1/4 tsp. pepper and remaining 1/2 tsp. salt.

3. In a food processor, whirl cottage cheese, egg, 1/4 cup parmesan, remaining 1/4 tsp. pepper, and the nutmeg until smooth.

4. Preheat oven to 375°. Cook lasagna noodles according to package directions; don't overcook. Drain noodles and lay flat on kitchen towels without overlapping. Oil a 9- by 13-in. baking dish and spread with about 1/2 cup ragù. Add a single layer of noodles (for most brands this is 3 sheets per layer). Spread with a third of ragu, then top with another layer of noodles, half the cheese mixture, and another layer of noodles. Repeat layering, giving you 2 alternating layers of sauce and cheese. Cover with remaining third of ragù and sprinkle evenly with remaining parmesan.

5. Cover lasagna with oiled foil and bake until hot, 30 minutes. Let stand 15 minutes before serving.

Note: Nutritional analysis is per serving.



Yield:  Serves 6 to 8

CALORIES 407 (26% from fat); FAT 12g (sat 3.6g); CHOLESTEROL 74mg; CARBOHYDRATE 47g; SODIUM 1315mg; PROTEIN 29g; FIBER 3.7g 

Sunset, JANUARY 2010

$$,2,@cat1,NULL,PARSEDATETIME('2009-12-23','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Asian Pear, Fennel, and Walnut Salad', $$1 fennel bulb
1 large Asian pear
2 1/2 tablespoons walnut oil
1 1/2 tablespoons lemon juice
1/4 teaspoon salt, plus more to taste
1/3 cup whole or roughly chopped toasted walnut halves
1/4 cup coarsely grated parmesan cheese

1. Trim stalks and any discolored areas from fennel bulb. Cut bulb in half lengthwise, lay a flat side on a work surface, and cut into very thin slices. Repeat with other half and set slices aside.

2. Cut pear into quarters and scoop out cores. Peel quarters and cut into 1/4-in. slices. Set aside.

3. Whisk together walnut oil, lemon juice, and salt in a small bowl. Taste and add more salt if you like.

4. Arrange fennel slices and pear slices on 4 salad plates. Drizzle each plate with 1 tbsp. dressing. Arrange walnuts and parmesan on top. Serve immediately.

Note: Nutritional analysis is per serving.

Yield:  Makes 4 servings

CALORIES 205 (70% from fat); FAT 16g (sat 2.4g); CHOLESTEROL 4.8mg; CARBOHYDRATE 14g; SODIUM 289mg; PROTEIN 4.8g; FIBER 4.7g 

Sunset, SEPTEMBER 2007$$,2,@cat10,NULL,PARSEDATETIME('2009-12-24','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Cardamom-Pistachio Ice Cream', $$this recipe is similar to India kulfi, a dense, smooth ice cream that's sold in many flavors from street stalls. 

1 can (12 oz.) evaporated milk, chilled
1 can (14 oz.) sweetened condensed milk, chilled
1 cup unsalted roasted pistachios
1/2 teaspoon ground cardamom
2 cups whipping cream
Strawberry syrup (optional)
Strawberries rinsed and hulled, whole or sliced (optional)

1. In a blender, combine evaporated milk, condensed milk, pistachios, and cardamom; whirl until nuts are finely ground.

2. In a large bowl with a mixer at high speed, whip cream until it holds distinct peaks.

3. Add nut mixture to cream; fold to blend well.

4. Pour into a 2-quart (or larger) ice cream maker. Freeze according to manufacturer's directions until mixture is firm enough to scoop, dasher is hard to turn, or machine stops.

5. Serve softly frozen ice cream. Or package airtight and freeze up to 1 week. Scoop ice cream into bowls. Add strawberry syrup and whole strawberries to taste.

Nutritional analysis per 1/2 cup.

Yield:  Makes about 7 1/4 cups

CALORIES 273 (63% from fat); FAT 19g (sat 9.6g); CHOLESTEROL 53mg; CARBOHYDRATE 21g; SODIUM 74mg; PROTEIN 5.9g; FIBER 1g 

Sunset, AUGUST 1999
$$,2,@cat2,@subcat1,PARSEDATETIME('2009-12-24','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Roasted Beets with Orange Vinaigrette', $$Notes: You can make this salad up to 1 day ahead; cover and chill. Bring to room temperature before serving, and season to taste with additional vinegar, salt, and pepper. If you combine red beets with yellow or pink, the red will discolor the others; toss each separately with a portion of the vinaigrette, then combine just before serving.


2 1/2 pounds (including tops) golden, pink, or red beets (each 2 to 3 in. wide; see notes), rinsed and greens trimmed and discarded or reserved for another use
6 tablespoons orange juice
3 tablespoons champagne vinegar or white wine vinegar
2 tablespoons minced shallots
1 teaspoon salt
Pepper

1. Place beets in a 9- by 13-inch baking pan. Add 1/2 inch water. Cover tightly with foil and bake in a 375° regular or convection oven until tender when pierced, 45 to 60 minutes. When cool enough to handle, peel and cut into 1/2-inch wedges.

2. Meanwhile, in a bowl, combine orange juice, vinegar, shallots, salt, and pepper to taste. Add the warm beets and stir to coat. Serve warm or at room temperature.



Yield:  Makes about 7 cups; 6 to 8 servings

CALORIES 33 (2.7% from fat); FAT 0.1g (sat 0.0g); CHOLESTEROL 0.0mg; CARBOHYDRATE 7.5g; SODIUM 333mg; PROTEIN 1g; FIBER 0.6g 

Sunset, NOVEMBER 2002$$,2,@cat5,@subcat2,PARSEDATETIME('2009-12-24','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Smoothie- Citrus', $$1 frozen banana
About 1 1/2 to 2 tbsp. Meyer lemon juice
1/2 cup tangerine juice
About 1 to 2 tbsp. honey
1/2 cup low-fat Greek yogurt
1/2 to 2/3 cup ice cubes
Tangerine slices, from 1 peeled tangerine

Blend banana, Meyer lemon juice, tangerine juice, honey, yogurt, and ice cubes. Whirl in a little more Meyer lemon juice or honey to taste. Add tangerine slices.



Yield:  Makes 2 smoothies$$,2,@cat6,NULL,PARSEDATETIME('2010-01-02','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Smoothie- Raspberry and other flavors', $$1 banana (about 6 oz.), peeled and cut into chunks
1 cup orange juice
1/2 cup vanilla low-fat or nonfat yogurt
1/2 cup frozen raspberries

In a blender, whirl banana, orange juice, yogurt, and raspberries until smooth.

Variations: Whirl together these delicious combinations, or mix and match to create your own favorites.

Variation 1: 1 cup vanilla soy milk and 1 cup frozen raspberries, strawberries, or blackberries

Varaiation 2: 1 cup orange juice, 1 cup plain yogurt, 1/3 cup chopped fresh Medjool dates, and 1 tablespoon honey

Variation3: 1 cup chocolate soy milk, 1 banana, and 1 tablespoon peanut butter

Variation 4: 1 cup mango or papaya chunks, 1 cup pineapple juice, and 1/2 cup vanilla yogurt

Variation 5: 1/2 cup carrot juice, 1/2 cup orange juice, 1/2 cup plain yogurt, 1 banana, and 1 tablespoon honey



Yield:  Makes about 2 1/2 cups; 2 servings$$,2,@cat6,NULL,PARSEDATETIME('2010-01-02','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Smoothie- Belly Balance', $$Belly-Balance Smoothie

Recipe by Frances A. Largeman-Roth, RD 

1/2 cup plain fat-free yogurt
1/2 cup frozen blueberries
1/2 cup frozen raspberries
1 cup vanilla soy milk
2 teaspoons honey (optional)
Contents of a few probiotic capsules (from gelatin caps)

Place all ingredients in a blender and blend until smooth. Serve in a tall glass.$$,2,@cat6,NULL,PARSEDATETIME('2010-01-02','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Smoothie- Banana Berry', $$1/2 c low-fat plain yogurt
1/2 c frozen strawberries
1 banana, frozen
1/2 cup fat-free milk
1 T honey or Agave

Process all ingredients with 4 ice cubes in a blender until smooth. Serve immediately.
$$,2,@cat6,NULL,PARSEDATETIME('2010-01-02','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Apple Oven Cake', $$Time: 30 minutes

3 tablespoons butter
1/4 cup packed light brown sugar
1/8 teaspoon cinnamon
1 sweet apple such as Fuji, peeled and sliced
3 large eggs
1/4 teaspoon salt
1/2 cup flour
1/2 cup milk
1 tablespoon fresh lemon juice
1 tablespoon powdered sugar

1. Preheat oven to 425°. Melt butter in a 12-in. ovenproof frying pan over high heat. Add brown sugar and cinnamon, swirling to combine. Add apple and cook until just starting to soften, about 3 minutes.

2. Meanwhile, in a blender, whirl together eggs, salt, flour, and milk. Pour egg mixture into pan and bake until puffed and brown, about 15 minutes. Sprinkle with lemon juice and powdered sugar.

Note: Nutritional analysis is per serving.
$$,2,@cat2,NULL,PARSEDATETIME('2010-01-02','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Grilled Pork Tenderloin with Apple Sage Sauce', $$Time: 30 minutes

Other Time: 30 minutes minutes

1 cup apple cider, divided
3 tablespoons cider vinegar
2 tablespoons olive oil
1 tablespoon minced shallot
1/2 teaspoon salt
2 tablespoons chopped fresh sage leaves, divided
1 pork tenderloin (about 1 lb.), cut in half crosswise
2 tablespoons butter

1. Prepare a grill for medium heat (350° to 450°; you can hold your hand 5 in. above cooking grate only 5 to 7 seconds). Whisk together 1/2 cup cider, the vinegar, oil, shallot, salt, and 1 tbsp. sage in a large bowl. Add pork pieces to bowl and set aside.

2. When grill is hot, remove pork, reserving marinade, and cook, turning occasionally, until an instant-read thermometer inserted in center of meat reads 150°, about 20 minutes total. Transfer to a cutting board and tent with foil to rest.

3. Meanwhile, in a small saucepan, bring marinade and remaining 1/2 cup cider to a boil. Reduce heat and simmer until liquid is reduced by half, 6 to 7 minutes. During last minute, whisk in butter.

4. Cut pork into 1/4-in. slices, drizzle portions with sauce, and sprinkle with remaining sage.

Note: Nutritional analysis is per serving.



Yield:  Serves 4

CALORIES 297 (58% from fat); FAT 19g (sat 6.7g); CHOLESTEROL 87mg; CARBOHYDRATE 8.5g; SODIUM 399mg; PROTEIN 23g; FIBER 0.1g 

Sunset, OCTOBER 2009
$$,2,@cat1,NULL,PARSEDATETIME('2010-01-02','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Spicy Turkey Sausage With Black-Eyed Peas and Spinach', $$Time: 20 minutes.

1 tablespoon olive oil
1 pound turkey kielbasa or other sausage, sliced
1 teaspoon chopped garlic
10 ounce baby spinach
1 can (14.5 oz.) diced tomatoes
1 can (15 oz.) black-eyed peas, drained
1/4 teaspoon cayenne
1/4 teaspoon paprika
1/4 teaspoon freshly ground black pepper

Heat oil in a large frying pan over medium-high heat and add sausage. Cook, stirring occasionally, until browned. Stir in garlic and cook until fragrant, about 2 minutes. Transfer sausage to a plate, then add remaining ingredients to pan and simmer about 10 minutes. Return sausage to pan and serve over cooked rice if you like.

Note: Nutritional analysis is per serving.



Yield:  Serves 4

CALORIES 348 (36% from fat); FAT 14g (sat 5.6g); CHOLESTEROL 60mg; CARBOHYDRATE 32g; SODIUM 1740mg; PROTEIN 26g; FIBER 5g 

Sunset, OCTOBER 2009$$,2,@cat1,NULL,PARSEDATETIME('2010-01-02','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Milk-Chocolate Pudding', $$1/2 cup sugar
2 tablespoons cornstarch
2 cups 1% low-fat milk
1 1/2 ounces semisweet chocolate, chopped
1 large egg, lightly beaten
1 teaspoon vanilla extract


Combine the sugar and cornstarch in a saucepan; gradually add milk, stirring with a whisk until well-blended. Stir in chocolate. Bring to a boil over medium heat; cook 7 minutes, stirring constantly. Gradually add hot milk mixture to egg, stirring constantly with a whisk. Return the milk mixture to the pan, and cook until thick and bubbly (about 30 seconds), stirring constantly. Remove from heat, and stir in the vanilla. Spoon the mixture into a bowl; place plastic wrap over the surface, and cool to room temperature.



Yield:  4 servings (serving size: 1/2 cup)

CALORIES 240 (24% from fat); FAT 6.4g (sat 3.3g,mono 2g,poly 0.3g); IRON 0.5mg; CHOLESTEROL 60mg; CALCIUM 160mg; CARBOHYDRATE 40.8g; SODIUM 78mg; PROTEIN 6.1g; FIBER 0.1g 

Cooking Light, MARCH 1998
$$,2,@cat2,NULL,PARSEDATETIME('2010-01-15','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Chicken Pot Pie- PA Dutch style', $$SERVES 6-8

INGREDIENTS

2 quarts water
One 3 to 3-1/2 pound chicken
1 celery rib
1 medium onion
1 medium carrot
1 bay leaf
Salt and pepper to taste
2 medium onions, thinly sliced
2 medium potatoes, cut into 1/4-inch slices
Potpie dough (see below)
1/4 cup chopped fresh parsley
3 tablespoons flour blended with 3 tablespoons cup cold water (optional, for thickening)
Cook chicken in simmering water with celery, carrot, 1 onion, bay leaf, salt and pepper until tender, about 1 hour. Remove chicken from broth. When cool enough to handle, remove chicken from bones, discard skin, and pull apart or cut into bite-size pieces. Strain the broth and skim off most of fat. Taste broth for seasoning and add additional salt and pepper if needed.

Bring chicken broth to a boil in a 4-quart pot. Add the reserved chicken. Gradually layer the potpie dough squares into the boiling liquid, one-by-one, alternating with layers of the onion and potato slices, gently pushing down each layer until covered with the broth. Reduce heat and cover pot. Simmer, stirring gently on occasion to prevent dough from clumping together, until dough is thoroughly cooked, about 20 minutes. Stir in parsley, cover and simmer an additional 5 minutes. (If desired, add flour and water paste to thicken broth at this time. Stir into broth very well to combine.) Serve immediately.


POT PIE DOUGH

2-1/2 cups unsifted all purpose flour
1/2 teaspoon salt
3 large eggs
1 tablespoon cold water
Mix 2 cups of the flour with the salt, eggs and water. Work in enough of the remaining 1/2 cup flour to make a stiff dough. Knead about 10 minutes. (Can be mixed and kneaded in processor or electric mixer.) Roll dough on a lightly floured surface into as thin a sheet as possible (or use a pasta rolling machine). Cut into 2-inch squares. Set aside until needed. (Place in single layers and separate with waxed or parchment paper.)

$$,2,@cat1,NULL,PARSEDATETIME('2010-01-16','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Banana Bread with Cinnamon Crumble Topping', $$From Orangette, Adapted from Bakesale Betty and Bon Appétit, September 2008

For bread:
1 ½ cups all-purpose flour
1 cup sugar
1 tsp. ground cinnamon
1 tsp. baking soda
½ tsp. salt
1 cup mashed ripe banana (about 3 medium bananas)
2 large eggs
½ cup vegetable oil
¼ cup honey
¼ cup water

For topping:
2 Tbsp. sugar
1 tsp. ground cinnamon
2 ½ Tbsp. packed dark brown sugar

Preheat the oven to 350° F. Butter and flour a 9- x 5-inch metal loaf pan. (Alternatively, you can spray the pan lightly with cooking spray and then line it with parchment paper, letting the excess hang over the sides. That’s what I did, and it made it very easy to remove the finished bread from the pan; I just grabbed the parchment and lifted. Also, because I don’t have a 9- x 5-inch pan - and because an 8 ½- x 4 ½-inch is a little too small - I used a 10- x 3-inch pan that I found once at a flea market.)

In a medium bowl, whisk together the flour, sugar, cinnamon, baking soda, and salt. In a large bowl, whisk together the banana, eggs, oil, honey, and water. Add the dry ingredients to the wet ingredients, and stir well. Scrape the batter into the prepared pan.

In a small bowl, mix together the topping ingredients. Sprinkle them evenly over the batter.

Bake the bread until a tester inserted into its center comes out clean, about 1 hour, give or take a little. Cool the bread in the pan on a wire rack for 30 minutes. Then carefully remove the bread from the pan, taking care not to dislodge the topping. Cool completely before slicing.

Yield: 1 loaf$$,2,@cat8,NULL,PARSEDATETIME('2010-01-17','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Coffee and Chocolate Braised Short Ribs ', $$from Cooklocal.com, adapted from the Washington Local and Seasonal Cookbook

Olive oil or lard 
5 lbs beef short ribs 
Salt and Pepper 
1 large onion, chopped 
1 large red bell pepper, chopped 
1 jalapeno pepper, seeded and chopped 
2 cloves of garlic, minced 
2 Tbsp brown sugar 
1 tsp chili powder 
1/2 tsp oregano 
1 tsp cumin 
2 cups strong coffee 
1.5 cups chopped tomatoes, with juice (or one 28 oz can) 
1 Tbsp tomato paste 
1 cup unsweetened chocolate (70% or higher cacao) 
Cilantro, chopped (for garnish) 
Remove the short ribs from their package and rinse them under cold water. Pat them dry. 

Season the short ribs liberally with salt and pepper. (Use more salt than you think you will need). 
Heat the olive oil or lard in a cast iron pan or Dutch oven over medium high heat. 
Place two or three of the short ribs in the pan. Be careful not to crowd the short ribs. You want to brown them, not steam them. 
Brown the short ribs well on all sides. You want the outsides of meat just a tad under burnt. 
Transfer the browned meat to a plate and continue to brown the rest of the meat. When done, remove all of the meat to the plate. 
Reduce the heat to medium. 
If you’re using a Dutch oven, just keep on cookin’. 
Add the onions and peppers and cook until the onions are translucent, approximately 5-10 minutes. 
Next mix in the garlic and cook for another minute. 
Stir in the brown sugar and spices and cook for 5 minutes longer. 
Add the coffee, chopped tomatoes, and tomato paste and bring the whole mixture to a boil. 
Return the short ribs to the pot and cover. 
Braise in the oven for 1.5 to 2 hours. 
Mix in the chocolate until melted. 
Season with the cilantro and salt and pepper. $$,2,@cat1,NULL,PARSEDATETIME('2010-02-12','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Sesame Brussels Sprout Sauté', $$from Cook Local, from Clean Food

20 Brussels sprouts (if large, and this will give you seconds) 
4 garlic cloves, minced 
2 tablespoons extra virgin olive oil 
1 tablespoon mirin 
1 tablespoon toasted sesame oil 
1/4 cup, sesame seeds 

Prepare Brussels sprouts as mentioned above, cutting off the stem end and removing the discolored leads. 
Slice the sprouts thinly from tip to stem and drop into your prep bowl. You’ll find it easiest to slice and drop into the bowl as you go. 
Put the large skillet onto the stove top on medium heat and add the olive oil. 
After a minute, add the garlic and stir it around, giving it a quick sauté. You’ll do this for about 5 minutes, keeping the garlic moving. 
Add the Brussels sprouts and mirin and cook it for 15-20 minutes. You don’t need to continually stir this, but every 3-5 minutes give the sprouts a good stir. You’re looking for a good golden brown hint to the sprouts which requires them to spend sometime without moving in the pan. 
If the sprouts start to stick to the pan, add a tablespoon or two of water to the pan. 
Once the sprouts are browning up, remove the pan from the heat and throw the small frying pan onto the heat. 
Mix in the toasted sesame oil and give the the sprouts a toss so that the oil is distributed. 
Put a small palm full of the sesame seeds into the small dry frying pan. Don’t let them sit still for more than ten seconds. Keep shaking the pan. It won’t take long, you just want a light toasting. No more than two minutes, but keep an open nose for any hint of smoke. 
Serve a generous spoonful of Brussels sprouts sprinkled with the toasted sesame seeds. 
Notes: Mirin can be found in the Asian food section of your grocery store.

You can easily cut up the sprouts and garlic in the morning, cover tightly with saran wrap and pull them out when you’re ready to cook.

Crack some salt over the dish to finish

$$,2,@cat5,@subcat2,PARSEDATETIME('2010-02-12','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Chicken Tagine  with Tomatoes, Honey and Saffron', $$Serves 4 to 6

4-6 whole chicken legs

For the marinade
1/2 teaspoon black pepper
1/2 teaspoon cinnamon
2 cloves garlic, pressed or mashed
1 teaspoon salt
1 tablespoon lemon juice
2 tablespoons olive oil

For the sauce
2 tablespoons butter
2 tablespoons olive oil
1 large onion, peeled and minced
4 cloves garlic, minced
1 teaspoon cinnamon
1/2 teaspoon ground ginger
1/2 teaspoon black pepper
3 (15-ounce) cans diced tomatoes, drained
2 cups chicken stock
Pinch saffron (threads or powdered), soaked in ¼ cup hot water
1/3 cup mild honey
1 tablespoon lemon juice
1/2 teaspoon orange-flower or rose water (optional)
2/3 cup slivered almonds, toasted

Chopped fresh cilantro for garnish

Flatbread, rice or couscous, for serving

1. Combine the chicken with the marinade ingredients in a large Ziploc bag. Leave them in the fridge to marinate for at least two hours, and up to 24. Drain the chicken and pat dry with paper towels.

2. Melt the butter and oil in a large, heavy-bottomed pot over medium-high heat and add the chicken legs. SautÃ© them to a golden brown on all sides, in batches if necessary. Remove the legs to a plate and keep warm. Reduce the heat to medium, add the onion to the pan and cook slowly, stirring often, until it begins to caramelize and melt together, about 20 minutes. Add the garlic, cinnamon, ginger and pepper and fry for another minute. Add the tomatoes, and fry until they start to break up, about 5 minutes. Add the stock, saffron water and chicken (including any juices the chicken has given off), bring to a boil, then cover and reduce the heat to low. Let the chicken gently simmer until it's fork-tender and easily comes off the bone, about 30-40 minutes.

3. Remove the chicken from the pot and set aside. Increase the heat to medium-high and add the honey, lemon juice and flower water (if using) to the sauce. Cook down another 5-10 minutes, stirring often, until it's jammy and thick. Taste it, and add a pinch of salt if necessary. Add the chicken pieces back in and rewarm them briefly in the sauce.

4. Serve the tagine on a platter, garnished with the almonds and cilantro. Moroccans enjoy this with thick flatbread alongside, but rice or couscous also make delicious accompaniments.$$,2,@cat1,NULL,PARSEDATETIME('2010-02-27','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'CINNAMON BASIL ICE CREAM', $$INGREDIENTS:

2-1/2 cups whole milk, plus an additional 2 tablespoons if needed, or substitute low-fat (2%) milk for a slightly less rich ice cream

1-1/2 cups heavy cream

8 4-inch springs cinnamon basil and 1/2 cinnamon stick, or 6 4-inch springs sweet basil and 1-1/2 cinnamon sticks

1/4 vanilla bean split and scraped, or 1/2 teaspoon vanilla extract

8 large egg yolks

1 cup plus 2 tablespoons sugar 


1. INFUSE THE CREAM: Pour the milk and cream into a 2-quart saucepan and bring it to a boil over medium-high heat. Add the basil, cinnamon stick, and vanilla bean if using, push them under the surface of the liquid with a spoon, and immediately remove the pan from the heat. Cover the pan and steep for 30 minutes. Strain the liquid through a fine sievee into a large liquid measuring cup, pressing down firmly on the herbs to extract all the liquid from the leaves. Add fresh milk if needed to measure 4 cups. Return the infused cream to the saucepan.

2. EGG YOLKS: Put the egg yolks in a medium stainless-steel mixing bowl and float that bowl in a larger bowl half full of hot tap water. Whisk the yolks until they are lukewarm, 90-degrees to 100-degrees F (it will take less than 1 minute), then lift the bowl out of the water.

3. ICE CREAM BASE. Add the sugar to the infused cream and bring it back to a boil over medium-high heat. The instant the cream comes to a rolling boil and rises in the pan, lift it off the heat. With the whisk in one hand and the saucepan in the other, pour the boiling cream into the egg yolks as you whisk constantly but gently. Don't whisk rapidly or you will cool the custard before the yolks have a chance to set. Continue to stir the custard with the whisk for 1 minute. At this point it should be fully cooked. An instant-read thermometer set in the custard should register 170-degrees to 180 degrees F. It will coat a teaspoon, but it will become much ticker when it cools. (If for some reason the custard did not get hot enough to thicken, you can place the bowl on top of a sacuepan of boiling water and stir it with a rubber spatula until it reaches 170-degrees F. Do not over heat the custard or it will curdle). Which the sauce rapidly for 30 seconds to cool it, then pour it through a fine sieve. If using vanilla extract, add it now. Refrigerate this custard base until thoroughly chilled. Freeze in an ice cream maker according to the manufacturer's directions.

$$,2,@cat2,@subcat1,PARSEDATETIME('2010-03-12','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval, $$Delfina's pizza dough (from Sunset)$$, $$Makes: 3 (12-in.) pizzas, plus dough for 3 more pizzas 

Time: About 2 hours, plus rising time Note: You can use regular flour, but for a truly awesome crust, go for highprotein Italian “00” (fine-milled) flour.

1 tsp. fresh yeast
1½ tsp. extra-virgin olive oil
1 lb., 14 oz. (about 6 cups) “00” pizza flour, preferably Caputo*, or all-purpose flour
3 tbsp. kosher salt

1. Put yeast, oil, and 2 cups plus 1 tbsp. cold tap water in bowl of a stand mixer and mix, using dough hook, on lowest speed 5 minutes, or until yeast has completely dissolved. Add flour and mix another 8 minutes.

2. Cover bowl loosely with a dampened towel and let dough rise 20 minutes.

3. Add salt and mix on low speed until incorporated and dissolved, 7 minutes.

4. Turn dough onto a lightly floured work surface and cut into 6 equal portions. Roll each into a tight ball. Place on a lightly floured tray.

5. Cover tightly with plastic wrap and let rise at least 4 hours at warm room temperature. Dough balls have risen properly when they are soft, pillowy, and full of air.

6. Heat a pizza stone or baking sheet on lowest rack of oven at 550° (or as high as oven will go), at least 30 minutes.

7. Set 1 dough ball on a well-floured pizza peel or baking sheet and stretch into an 11- to 12-in. circle (see photos above).

8. Shove pizza onto stone. Bake 5 to 6 minutes, or until puffy and browned. Drizzle with oil. Repeat with 2 dough balls and toppings (top remaining 3 differently or freeze).

Make ahead: Chill dough balls overnight or freeze up to 2 weeks (let come to room temperature before stretching).

Per 1/4 topped pizza: 319 Cal., 44% (140 cal.) from fat; 12 g protein; 16 g fat (6.1 g sat.); 29 g carbo (0.9 g fiber); 1,121 mg sodium; 34 mg chol. 

Favorite fresh topping combos:

Pecorino, rosemary, and pine nuts
Chicken, walnut pesto, and black olives
Oysters, leeks, cream, and herbs
Anchovies, capers, and chiles
Roasted yam, fried sage, and brown butter
Artichokes, lemon, olives, and parmesan
Chanterelles, Fontina, and shallots
Potatoes, pancetta, Fontina, and rosemary$$,2,@cat1,NULL,PARSEDATETIME('2010-03-14','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Apple and Butternut Squash Soup', $$From Orangette

If possible, make this soup a day or two ahead; its flavors meld and deepen after a day or so of sitting the fridge.


¼ cup olive oil
1 2-lb butternut squash, peeled, seeded, and cut into 2-inch pieces (about 4 cups)
2 flavorful apples, preferably Gala, peeled, cored, and cut into 2-inch pieces (about 2 cups)
1 large onion, peeled and coarsely chopped (about 1 cup)
¾ tsp curry powder
¾ tsp ground mace
½ tsp ground cardamom
1 cup good-quality apple cider
1 quart chicken stock (vegetable works fine as well)
½ tsp salt
¼ freshly ground pepper, preferably white

Heat oil in a large stockpot over medium-low heat. Add the squash, apples, and onion, and stir to coat with oil.


Sauté uncovered, stirring occasionally, for ten to fifteen minutes, or until onion is transparent.

Stir in the mace, curry, and cardamom, and continue cooking until the onion begins to brown.

Add the cider. Bring the mixture to a boil over medium-high heat, and cook for three minutes. Add the stock, lower the heat to medium-low, and simmer the mixture, partially covered, for another 35 minutes, or until squash is tender.

Working in batches, blend mixture in a food processor or blender until smooth (be careful to not overfill, as hot liquid could expand when machine is switched on, making a huge, burning-hot mess). Return soup to the stockpot. Reduce the soup, uncovered, over medium-low heat, to about one-fourth. Stir occasionally. Stir in salt and pepper, and serve hot.

Serves 4-5.$$,2,@cat4,NULL,PARSEDATETIME('2010-03-18','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Berry Cobbler', $$From David Lebovitz

6 servings (recipe can be cut in half)

For the fruit:

5 cups berries
1/3 cup sugar
1 tablespoon flour
optional: a splash of kirsch or lemon juice

For the cobbler dough:

1 1/2 cups all-purpose flour
1 teaspoon baking powder
1/4 teaspoon baking soda
1/2 teaspoon salt
1 tablespoon sugar
4 tablespoons (1/2 stick) unsalted butter, chilled
1 cup buttermilk

1. Preheat the oven to 375 degrees.

2. In a 10- to 12-inch glass pie plate (or 2 quart baking dish), mix together the berries, sugar, flour and the kirsch or lemon juice, if using.

3. Bake the berries in the oven for 30 minutes, stirring once during baking.

4. After 30 minutes, remove the berries from the oven and make the biscuits.

5. In a medium-sized bowl, stir together the flour, baking powder, soda, salt and sugar. Cut the butter into the mixture either with a food processor, a mixer or by hand (Tip: Try using the large holes of a cheese grater-it works great!) The butter should be the size of corn kernels.

6. Stir in the buttermilk just until the dry mixture is thoroughly moistened. With a big soup spoon, drop six large mounds of the dough over the fruit in various places. Brush with egg wash, if desired.

7. Bake for 20-25 minutes.

Serve warm with vanilla ice cream.

Note: One good thing about this cobbler is that you can taste the cooked berries for sweetness before adding the biscuits and you can mix in a sprinkle more sugar if the berries need it.

 

Apricot and Cherry

5 cups quartered apricots 
10 cherries, halved and pitted 
1 1/2 tablespoons flour 
6 tablespoons sugar

 

Nectarine or Peach

5 cups sliced nectarines, or 5 cups peeled and sliced peaches 
2 teaspoons flour 
1-2 tablespoons sugar 
(of course, you could add a handful of raspberries, blueberries or blackberries too!)$$,2,@cat2,NULL,PARSEDATETIME('2010-04-11','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Mexican Rice with Tomatoes and Roasted Green Chiles', $$Prep Time: 15 minutes
Cook Time: 18 minutes
Total Time: 33 minutes

Ingredients:

2 tablespoons cooking oil
1/4 cup onion, chopped
3 cloves of garlic, peeled and chopped
2 cups long grain white rice
16 oz chicken broth
1 cup fresh tomatoes, seeded and diced
2 green chiles, roasted and chopped (seeds and stems removed)
1/8 teaspoon of cinnamon
1/8 teaspoon of cumin
Preparation:

Heat the oil in a medium pot over medium-high heat. Add the onions and cook for about one minute, stirring frequently. Add in garlic and rice and cook for about three minutes or until rice begins to become opaque and brown slightly on the edges. Very slowly and carefully pour in the chicken broth. Add in the tomatoes, chiles and remaining seasonings. Stir to combine all of the ingredients and bring to a simmer. Cover the pot and cook for 17-19 minutes over very low heat. After the rice is cooked, fluff it with a fork to combine all the ingredients which can separate during cooking.$$,2,@cat5,@subcat3,PARSEDATETIME('2010-04-15','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Yeast information- no recipe', $$Can you sort out yeast label confusion? And can they be substituted for each other?

Despite indications to the contrary—created by the commercial largesse of the yeast companies—there are only three types of yeast: fresh, active dry, and instant. All are derived from the powerful brewer's yeast known as Saccharomyces cerevisiae, but each is processed from a slightly different strain of this protypical yeast.


Types
Fresh Yeast: The original commercial yeast, known as fresh, compressed, or cake yeast is about 70 percent water by weight and is composed of 100 percent living cells. It is soft and crumbly and requires no proofing—fresh yeast will dissolve if it is simply rubbed into sugar or dropped into warm liquid. Owing to qualities associated with its strain, fresh yeast will produce the most carbon dioxide of all three types of yeasts during fermentation. Fresh yeast is considered fast, potent, and reliable, but it has a drawback: it is highly perishable and must be refrigerated and used before its expiry date.

Active Dry: Active dry yeasts arrive at their granular state by undergoing processes that reduce them to 95 percent dry matter. Traditional active dry yeast is exposed to heat so high that many of its cells are destroyed in the process. Because the spent outer cells encapsulate living centers, active dry yeast must first be dissolved in a relatively hot liquid (proofed) to slough off dead cells and reach the living centers.

Instant Yeasts: Also called \"Instant,\" \"Rapid Rise,\" or \"Bread\" instant yeasts are also processed to 95 percent dry matter, but are subjected to a gentler drying process than active dry. As a result, every dried particle is living, or active. This means the yeast can be mixed directly with recipe ingredients without first being dissolved in water or proofed. It is in this context that the yeast is characterized as \"instant.\" We prefer instant yeast in the test kitchen. It combines the potency of fresh yeast with the convenience of active dry, and it is considered by some to have a cleaner flavor than active dry because it contains no dead cells. (In our months of testing, we found this to be true when we made a lean baguette dough but could detect no difference in flavor when using the two yeasts in doughs made with milk, sugar, and butter.)

Substitution Formulas
To substitute active dry for instant (or rapid rise) yeast: Use 25 percent more active dry. For example, if the recipe calls for 1 teaspoon of instant yeast, use 1 1/4 teaspoons of active dry. And don't forget to \"prove\" the yeast, i.e. dissolving it in a portion of the water from the recipe, heated to 105 degrees. 

To substitute instant (or rapid rise) yeast for active dry: Use about 25 percent less. For example if the recipe calls for 1 packet or 2 1/4 teaspoons of active dry yeast, use 1 3/4 teaspoons of instant yeast. And you do not need to prove the yeast, just add it to the dry ingredients.

To substitute fresh yeast for active dry yeast, use a ratio of roughly 2:1, i.e. use one small cake (0.6 ounce) of compressed fresh yeast in lieu of 1 packet (.25 ounces) of active dry yeast.

Note a packet of active dry or instant yeast contains about 2 1/4 teaspoons (.25 ounces) of yeast.$$,2,@cat8,NULL,PARSEDATETIME('2010-05-17','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Broccoli Soup with Lemon-Chive Cream', $$For the soup:
1 Tbsp. unsalted butter
1 Tbsp. olive oil
2 medium leeks, white and tender green parts only, sliced
1 small yellow onion, coarsely chopped
3 cloves garlic, coarsely chopped
1 ½ lb. broccoli, both crowns and stems, trimmed and coarsely chopped
5 cups chicken or vegetable stock
1 rind (about 2 inches square) from a piece of Parmesan cheese
¾ tsp. kosher salt, or less if your broth is well salted

For the sour cream:
1 cup sour cream (not low-fat or nonfat)
2 scallions, white and pale green parts only, very thinly sliced
¼ cup minced chives
1 tsp. grated lemon zest
2 Tbsp. fresh lemon juice
½ cup finely grated Parmesan cheese
½ tsp. kosher salt
¼ tsp. pressed or minced garlic

In a small stockpot or Dutch oven, warm the butter and oil over medium heat. Add the leeks and onion, and cook, stirring occasionally, until they have softened and the onion is translucent, about 10 minutes. Add the garlic, and cook for one minute. Add the broccoli, stock, Parmesan rind, and salt, and stir to mix. Bring to a boil, reduce to a simmer, and cook, partially covered, until the broccoli is tender, about 20 minutes.

While the soup cooks, prepare the cream. In a medium bowl, stir together the sour cream, scallions, chives, lemon zest, lemon juice, grated Parmesan, salt, and garlic, mixing until fully combined. Taste, and adjust as necessary.

To finish the soup, remove the Parmesan rind. Using a blender and working in small batches – when puréeing hot liquids, never fill the blender more than one-third full – purée until very smooth. (Alternatively, purée it in the pot with an immersion blender.) Return the soup to the pot, add a few dollops of the cream mixture – I add about 1/3 cup – and stir to incorporate. Taste for seasoning, and adjust as necessary. If needed, rewarm the soup gently over low heat.

Serve the soup with a spoonful or two of the remaining cream on top.

Yield: 4-6 servings$$,2,@cat4,NULL,PARSEDATETIME('2010-06-10','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Tomato and Sausage Risotto', $$From Smitten Kitchen, Adapted from Martha Stewart Everyday Food

Serves 4

1 can (28 ounces) diced tomatoes in juice
1 tablespoon olive oil
3/4 pound sweet or hot Italian sausage, casings removed
1 small onion, finely chopped
Coarse salt and ground pepper
1 cup Arborio rice
1/2 cup dry white wine
1 bunch flat-leaf spinach (10 to 14 ounces), washed well, tough stems removed, chopped (about 7 cups)
1/2 cup grated Parmesan cheese, plus more for serving (optional)
2 tablespoons butter

In a small saucepan, combine tomatoes (with their juice) and 3 cups water. Bring just to a simmer; keep warm over low heat.
In a medium saucepan, heat oil over medium. Add sausage and onion; season with salt and pepper. Cook, breaking up sausage with a spoon, until sausage is opaque and onion has softened, 3 to 5 minutes.
Add rice; cook, stirring until well coated, 1 to 2 minutes. Add wine; cook, stirring until absorbed, about 1 minute.
Add about 2 cups hot tomato mixture to rice; simmer over medium-low heat, stirring occasionally, until absorbed, 4 to 5 minutes. Continue adding tomato mixture, 1 cup at a time, waiting for one cup to be absorbed before adding the next, stirring occasionally, until rice is creamy and just tender, about 25 minutes total (you may not have to use all the liquid).
Remove pan from heat. Stir in spinach, Parmesan, and butter; season with salt and pepper. Serve immediately (risotto will thicken as it cools), and sprinkle with additional Parmesan, if desired.$$,2,@cat1,NULL,PARSEDATETIME('2010-06-10','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Strawberry Ice Cream', $$Ingredients: 

3 egg yolks (beaten) 
1/2 pint (250ml) milk 
1/2 pint (250ml) double/heavy cream
4 oz (100g) sugar 
2 cups of strawberries 
1 teaspoon of vanilla essence

Take the strawberries and mash them in with half the sugar (ie. 2oz or 50g) in a bowl. Place in the refrigerator whilst making the rest of the recipe. 

In a separate saucepan, mix the egg yolks with the milk, salt and the remaining sugar. Place over a medium heat just to boiling point (stirring all the time). DO NOT LET IT BOIL. 

Transfer the mixture into a chilled bowl to cool. When cool place in the refrigerator for up to 3 hours, remembering to stir the mixture from time to time. When cool, stir into the mixture the cream and vanilla essence and then blend in the strawberry/sugar mixture. 

Transfer the complete mixture into an ice cream maker and follow the manufacturer's instructions.$$,2,@cat2,@subcat1,PARSEDATETIME('2010-06-29','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Tomato sauce for canning', $$About 20 pounds Plum or other tomatoes 
3 cloves garlic, sliced 
2 Tbsp. olive oil 
salt to taste 
Fresh-cracked black pepper to taste 
One handful fresh torn basil leaves 
1/4 cup fresh oregano leaves 
2 Tbsp. fresh or dried rosemary leaves 
1/2 yellow onion, chopped 

Directions: 

Clean your 11 quart stockpot. Get a 3 quart pan of boiling water ready. Score an X on the bottom of each tomato and blanch a few at a time (30 seconds or so). Peel off skin. Then remove top and slice tomato into quarters. Remove seeds and watery pulp, and add the rest to the stockpot. When tomatoes are ready, crush them in the stockpot with your clean hands. Then turn on the burner to med-high and add the remaning ingredients, stirring. When the sauce is bubbling nicely, turn down the heat to a good simmer. Let the sauce simmer for about 5 hours, stirring occasionally, until the sauce is the thickness you like. Then you can freeze the sauce in freezer containers, or you may can the sauce using your favorite method of canning (makes about 8 pint jars). 
$$,2,@cat11,NULL,PARSEDATETIME('2010-07-13','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Fresh Summer Berry Tart', $$Makes 8 servings

For the crust:

1 1/2 cups all-purpose flour
3/4 cup granulated sugar
1/2 teaspoon salt
1 stick cold unsalted butter, cut up
2 tablespoons cold water

For the filling:

Two packages (8-ounces each) cream cheese, softened
1 teaspoon vanilla extract
1 tablespoon lemon juice
1/2 cup powdered sugar

Fresh berries (such as raspberries, strawberries, blackberries and blueberries)

1. Heat the oven to 375 degrees. Coat a 9-inch removable-bottom tart pan with baking spray.

2. In a food processor, pulse together the flour, sugar and salt. Add the butter, then pulse together, adding cold water as needed, until a dough forms that sticks together easily when you squeeze it.

3. Press the mixture into the tart pan, making sure to press the dough up the sides. Pierce the bottom of the crust with a fork. Bake for 15 to 20 minutes, or until the edges just start to turn golden and the center is slightly firm to the touch. Cool on a wire rack.

4. Once the crust has cooled, make the filling. In a large bowl, use an electric mixer to beat together the cream cheese, vanilla, lemon juice and powdered sugar. Spread the filling evenly in the shell. Top with berries and serve.

Nutrition information per serving (values are rounded to the nearest whole number): 506 calories; 280 calories from fat; 31 g fat (20 g saturated; 0 g trans fats); 92 mg cholesterol; 52 g carbohydrate; 7 g protein; 2 g fiber; 290 mg sodium.$$,2,@cat2,NULL,PARSEDATETIME('2010-07-14','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Tres Leche Cake (three milk cake)', $$Yield:  Makes about 12 servings

8 large eggs
1 1/2 cups sugar
2 cups all-purpose flour
1 tablespoon baking powder
1 can (14 oz.) sweetened condensed milk
1 can (12 oz.) evaporated milk
1 cup milk
1/4 cup Kahlua (or strong coffee)
1 teaspoon vanilla
Lightly sweetened softly whipped cream
Sliced strawberries

1. In a large bowl, with a mixer on high speed (use whip attachment if available), beat eggs and sugar until thick and pale yellow, 5 to 6 minutes. In a small bowl, mix flour and baking powder. With mixer on medium speed, gradually add flour mixture in small increments and beat until smooth. Scrape batter into a buttered 9- by 13-inch baking pan.

2. Bake in a 325° regular or convection oven until a toothpick inserted in the center comes out clean, 30 to 40 minutes.

3. Meanwhile, in a blender, whirl condensed milk, evaporated milk, regular milk, Kahlua, and vanilla until well blended. Pour evenly over hot cake; let cool about 15 minutes, then cover and chill until cake has absorbed all the milk mixture, at least 3 hours, or up to 1 day.

4. Cut cake into squares or rectangles, lift out with a wide spatula, and set on plates. Top each piece of cake with a spoonful of whipped cream and garnish with strawberries.



CALORIES 401 (22% from fat); FAT 9.8g (sat 5g); CHOLESTEROL 166mg; CARBOHYDRATE 65g; SODIUM 253mg; PROTEIN 12g; FIBER 0.6g 

Sunset, MAY 2002
$$,2,@cat2,NULL,PARSEDATETIME('2010-07-16','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Gelato di Frutta', $$Makes about 1 quart

1 to 1 ½ pounds pitted fruit (e.g. strawberries, blueberries, cherries, apricots, peaches, plums, melon)

½ to 1 cup superfine sugar

Fresh lemon juice, to taste

1 cup mascarpone cheese, stirred briefly to loosen

1 cup whole milk

1. Wash and peel the fruit if necessary, and cut into 1-inch pieces. Combine them in a large, nonreactive bowl with ½ cup sugar and a squeeze of lemon juice and let macerate at room temperature for at least an hour.

2. In a food processor combine the fruit and their liquid with the mascarpone and milk and process until smooth. Adjust the sugar and lemon as needed, keeping in mind that sweetness is dampened slightly by freezing.

3. Process the mixture in your ice-cream maker according to manufacturer's instructions. Serve immediately, or transfer to a covered container and place in the freezer for a couple of hours. Once it has frozen solid, soften for 20 minutes in the refrigerator before eating.

Note: For a nonfruit gelato, use this formula: 1 cup each mascarpone and milk to ½ cup sugar, and add flavorings such as melted chocolate, ground toasted nuts, vanilla or spices to taste.$$,2,@cat2,@subcat1,PARSEDATETIME('2010-07-18','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Chocolate Sorbet', $$Chocolate Sorbet

Adapted from The Perfect Scoop

2 1/4 cups (555 ml) water
1 cup (200 g) sugar
3/4 cup (75 g) unsweetened Dutch-process cocoa powder
Pinch of salt
6 ounces (170 g) bittersweet or semisweet chocolate, finely chopped
1/2 teaspoon vanilla extract

In a large saucepan (must be a large one since it will expand as it boils), whisk together 1 1/2 cups (375 ml) of the water with the sugar, cocoa powder, and salt. Bring to a boil, whisking frequently. Let it boil, continuing to whisk, for 45 seconds.

Remove from the heat and stir in the chocolate until it’s melted, then stir in the vanilla extract and the remaining 3/4 cup (180 ml) water. Transfer the mixture to a blender and blend for 15 seconds. Chill the mixture thoroughly, then freeze it in your ice cream maker according to the manufacturer’s instructions. If the mixture has become too thick to pour into your machine, whisk it vigorously to thin it out.$$,2,@cat2,@subcat1,PARSEDATETIME('2010-07-18','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval, $$Macaroni and Cheese (America's Test Kitchen)$$, $$1 pound macaroni 
5 T unsalted butter
6 T flour
1.5 t powdered mustard
1/4 t cayenne (optional)
1 t salt
5 C milk
8 oz monterey jack
8 oz sharp cheddar
1 cup bread crumbs

In large pot cook pasta until tender.  Drain.  Using same pot milk butter over medium until foaming.  Add flour, mustard, cayenne (if using) and salt and whisk well to combine.  Continue whisking until the mixture is fragrant and deepens in color, about 1 minute.  Gradually whisk in the milk and bring the mixture to a boil, whicking occasionally, until it is thickened to the consistency of heavy cream.  Remove from heat and mix in the cheese.  Reheat the mixture if needed.

Transfer the mixture to a broiler safe 13x9 and top with bread crumbs.  Broil for 3-5 minutes or until brown.  Cool 5 minutes then serve.

Offer celery salt or hot sauce when serving if desired.$$,2,@cat1,NULL,PARSEDATETIME('2010-07-25','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Classic White Bread', $$Ingredients:

3/4 cup water
1 package active dry yeast
1/2 cup milk
2 T butter
1.5 T sugar
2.5 t kosher salt
3 1/4 to 3 1/2 cup bread flour
1 t vegetable oil
2 T melted butter or 1 egg mixed with 1 T water 

Directions:

In the bowl of an electric mixer whisk together the yeast and water.  Let stand for 5 minutes.

Meanwhile, in a small saucepan over medium high heat warm the milk until steam rises from the surface and bubbles form around the edges of the pan, about 1 minute. Add the butter, sugar and salt and whisk until the butter melts and the sugar dissolves. Let it cool until lukewarm.

Fit the mixer with the flat beater, add 1 cup of the flour to the yeast mixture and beat until just combined.  Add the milk mixture and beat until just combined.  Add 2 cups flour and beat until the mixture is sticky and just combined, about 1 minute.  Switch to the dough hook and increase speed to medium low and beat until the dough begins to pull away from the sides of the bowl, 2-3 minutes.  Add additional flour only if the dough is sticky.  Continue to beat for 6-7 minutes.

Transfer to a work surface and form into ball and place in a lightly oiled large bowl.  Turn the dough to coat and cover with plastic.  Let rise in a warm place until doubled in volume, 40-50 minutes.

Lightly oil a 10x5x3 pan. On a lightly floured surface roll out the dough into a 8 inch square and then fold in thirds like a letter.  Starting from the narrow end roll up the dough into a loaf.  Place the loaf seal down into the plan and cover with plastic wrap.  Let rise in a warm place until doubled in volume, about 1 hour. 

Preheat oven to 375F.  Brush the top with the melted butter or the egg wash and bake for 35-40 minutes or until the loaf is golden and sounds hallow when tapped.  Immediately transfer to cooling rack.$$,2,@cat8,NULL,PARSEDATETIME('2010-07-28','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Strawberry-Basil Sorbet', $$1 cup water
1 cup sugar
1 cup loosely packed fresh basil leaves, roughly chopped
4 cups quartered hulled fresh strawberries
2 tablespoons fresh lime juice
1 tablespoon vodka or orange liqueur

Combine water, sugar, and basil leaves in a medium saucepan. Stir over medium-high heat until sugar dissolves and mixture comes to boil. Reduce heat and simmer 5 minutes. Remove from heat and let steep 15 minutes; strain through fine mesh sieve (discard basil) and chill until cold.

Puree quartered strawberries in blender or processor until smooth. Add lime juice, vodka or liqueur, and basil sugar syrup; process until blended. Chill mixture until cold, about 1 hour.

Transfer strawberry mixture to ice cream maker and process according to manufacturer's instructions. Spoon sorbet into container; cover and freeze until firm, about 4 hours. Makes about 4 cups (Eight 1/2-cup servings).$$,2,@cat2,@subcat1,PARSEDATETIME('2010-07-30','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Fudge Brownies (KAF)', $$ 1 cup (2 sticks) unsalted butter
2 1/4 cups sugar
4 large eggs
1 1/4 cups Double-Dutch Dark Cocoa or Dutch-process cocoa
1 teaspoon salt
1 teaspoon baking powder
1 teaspoon espresso powder
1 tablespoon vanilla extract
1 1/2 cups King Arthur Unbleached All-Purpose Flour
2 cups chocolate chips

Directions

1) Preheat the oven to 350°F. Lightly grease a 9\" x 13\" pan
2) In a medium-sized microwave-safe bowl, or in a saucepan set over low heat, melt the butter, then add the sugar and stir to combine. Return the mixture to the heat (or microwave) briefly, just until it's hot (about 110°F to 120°F), but not bubbling; it'll become shiny looking as you stir it. Heating this mixture a second time will dissolve more of the sugar, which will yield a shiny top crust on your brownies.
3) While the sugar heats a second time, crack the 4 eggs into a bowl, and beat them with the cocoa, salt, baking powder, espresso powder, and vanilla till smooth.
4) Add the hot butter/sugar mixture, stirring until smooth.
5) Add the flour and chips, again stirring until smooth. Note: If you want the chips to remain intact in the baked brownies, rather than melting in, let the batter cool in the bowl for about 20 minutes before stirring in the chips.
6) Spoon the batter into a lightly greased 9\" x 13\" pan.
7) Bake the brownies for about 30 minutes, until a cake tester inserted into the center comes out clean, or with just a few moist crumbs clinging to it. The brownies should feel set on the edges, and the center should look very moist, but not uncooked. Remove them from the oven and cool on a rack before cutting and serving.$$,2,@cat2,NULL,PARSEDATETIME('2010-08-26','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Summer corn chowder with scallion, bacon and potatoes', $$5 ears fresh corn
7 oz. scallions (about 20 medium)
3 slices bacon, cut into 1/2-inch pieces
1 Tbs. unsalted butter
1 jalapeño, cored, seeded, and finely diced
1 tsp. kosher salt; more to taste
Freshly ground black pepper
3-1/2 cups low-salt chicken broth
1 large Yukon Gold potato (8 to 9 oz.), peeled and cut into 1/2-inch dice (about 1-1/2 cups)
1-1/2 tsp. chopped fresh thyme
2 Tbs. heavy cream
Husk the corn and cut off the kernels. Reserve two of the corn cobs and discard the others. Trim and thinly slice the scallions, keeping the dark-green parts separate from the white and light-green parts.

Cook the bacon in a 3- or 4-qt. saucepan over medium heat until browned and crisp, about 5 minutes. With a slotted spoon, transfer the bacon to a paper-towel-lined plate. Pour off and discard all but about 1 Tbs. of the bacon fat. Return the pan to medium heat and add the butter. When the butter is melted, add the white and light-green scallions and the jalapeño, salt, and a few grinds of black pepper. Cook, stirring, until the scallions are very soft, about 3 min.

Add the broth, corn, corn cobs, potatoes, and thyme and bring to a boil over medium-high heat. Reduce the heat to medium low and simmer until the potatoes are completely tender, about 15 min. Discard the corn cobs.

Transfer 1 cup of the broth and vegetables to a blender and puree. Return the puree to the pot and stir in the cream and 1/4 cup of the scallion greens. Simmer, stirring occasionally, for a couple of minutes to wilt the scallions and blend the flavors. Season to taste with salt and pepper and serve sprinkled with the bacon and reserved scallions.
$$,2,@cat4,NULL,PARSEDATETIME('2010-08-30','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Family Secret Tomato Sauce- for canning', $$From Animal Vegetable Miracle
By Barbara Kingsolver with Steven L. Hopp and Camille Kingsolver

The point of this recipe is to make a large amount at one time, when tomatoes are in season. If you’re canning it, stick closely to the recipe; adding additional fresh vegetables will change the pH so it’s unsafe for water-bath canning. If you’re freezing it, then it’s fine to throw in peppers, mushrooms, fresh garlic, whatever you want. This recipe makes 6-7 quarts – you can use a combination of pint and quart canning jars or freezer boxes.

10 quarts tomato puree (about 30 lbs. tomatoes) 
4 large onions, chopped 
1 cup dried basil 
1&#8260;2 cup honey
4 tbs. dried oregano 
3 tbs. salt 
2 tbsp ground lemon peel 
2 tbsp. thyme 
2 tbs. garlic powder (or more, to taste) 
2tbs. dried parsley 
2 tsp. pepper 
2 tsp cinnamon 
1&#8260;2 tsp nutmeg

Soften onions in a heavy 3-gallon kettle – add a small amount of water if necessary but no oil if you are canning (very important!). Add pureed tomatoes and all seasonings, bring to a boil, and simmer on low heat for two to three hours until sauce has thickened to your liking. Stir frequently, especially toward the end, to avoid burning. Meanwhile, heat water in canner bath, sterilize jars in boiling water or dishwasher, and pour boiling water over jar lids.

Add 2 tbsp of lemon juice OR 1&#8260;2 tsp. citric acid to each quart jar, (half that much to pint jars). This is ensures that the sauce will be safely acidic. When the sauce is ready, ladle it into the jars leaving 1&#8260;2 inch headspace. Put jars into canner and boil for 35 minutes. Remove, cool, check all seals, label and store for winter.$$,2,@cat11,NULL,PARSEDATETIME('2011-09-22','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Chicken Pot Pie', $$Notes: Prepare through step 4 up to 1 day ahead; chill uncovered until egg coating on crusts is dry, about 15 minutes, then cover airtight and chill.

Yield:  Makes 6 servings

1/2 pound red thin-skinned potatoes (1 1/2 in. wide)
1/2 pound carrots
1/2 pound green beans
3 cups fat-skimmed chicken broth or stock
1 1/2 t dried thyme
1 1/2 t dried rosemary
3 1/2 T cornstarch
1/2 cup whipping cream or fat-skimmed chicken broth
3 cups bite-size pieces skinned cooked chicken
Salt and pepper
1 package (10 oz.) frozen puff pastry shells, thawed
1 tablespoon beaten egg

1. Scrub potatoes and cut into quarters. Peel carrots, and trim and discard ends; cut carrots diagonally into 1/4-inch-thick slices. Rinse beans, and trim and discard ends; cut beans into 1 1/2-inch lengths.

2. In a covered 5- to 6-quart pan over high heat, bring potatoes, carrots, broth, and herbs to a boil. Reduce heat and simmer until carrots are almost tender when pierced, about 5 minutes. Add beans; cover and simmer until all the vegetables are tender when pierced, 3 to 5 minutes longer.

3. In a small bowl, mix cornstarch and cream. Add to vegetable mixture and stir until boiling, about 2 minutes. Remove from heat and stir in chicken. Add salt and pepper to taste. Spoon equally into 6 round soufflé dishes or ramekins (1-cup size; 3 1/2 to 4 1/2 in. wide). Let cool to room temperature, about 35 minutes.

4. Meanwhile, on a lightly floured board, roll each puff pastry shell into a round about 1 inch wider than the diameter of soufflé dishes. Brush egg around edge of each pastry in a border about 1/2 inch wide. Invert a pastry onto each dish, egg side down, and press edges firmly against sides of dish. Brush egg lightly over pastry tops and sides. Set dishes at least 1 inch apart in a 10- by 15-inch pan.

5. Bake in a 400° regular or convection oven until pastry is richly browned, 15 to 25 minutes.



CALORIES 548 (49% from fat); FAT 30g (sat 7.9g); CHOLESTEROL 95mg; CARBOHYDRATE 39g; SODIUM 243mg; PROTEIN 30g; FIBER 3.2g 

Sunset, MARCH 2001
$$,2,@cat1,NULL,PARSEDATETIME('2010-09-12','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Sloppy Joes', $$1 pound lean ground beef
1/4 cup chopped onion
1/4 cup chopped green bell pepper
1/2 teaspoon garlic powder
1 teaspoon prepared yellow mustard
3/4 cup ketchup
3 teaspoons brown sugar
salt to taste
ground black pepper to taste

DIRECTIONS:

1.	In a medium skillet over medium heat, brown the ground beef, onion, and green pepper; drain off liquids.
2.	Stir in the garlic powder, mustard, ketchup, and brown sugar; mix thoroughly. Reduce heat, and simmer for 30 minutes. Season with salt and pepper.$$,2,@cat1,NULL,PARSEDATETIME('2010-10-05','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Chicken Divan', $$1 bunch(es) (about 1 pound) fresh broccoli
1 pound(s) skinless, boneless chicken breasts
1/4 teaspoon(s) ground black pepper
8 ounce(s) farfalle or bow-tie pasta
3 tablespoon(s) butter
1 can(s) (14 1/2-ounce) reduced-sodium chicken broth
1/4 cup(s) unsifted all-purpose flour
1/2 cup(s) half-and-half
1/2 cup(s) grated Parmesan cheese
1/8 teaspoon(s) ground nutmeg

Directions

With paring knife, cut a thin slice off the bottom of each broccoli stalk to remove the dried end. Remove any leaves and, from cut end, pull thick, fibrous skin upward toward flowerets to remove. Cut broccoli crosswise into 3-inch lengths. Split broccoli flowerets and stalks lengthwise into thinner pieces if stalks are thicker than 1/2 inch. Place stalks and flowerets in separate piles.
In 8-quart saucepot, heat 3 quarts water to boiling over high heat. Meanwhile, cut chicken breasts horizontally to split them into cutlets. Between 2 sheets of waxed paper, with meat mallet or back of a chef's knife, pound cutlets to a uniform 1/4-inch thickness. Remove top sheet of paper. Sprinkle cutlets with pepper.
Add pasta to boiling water and cook until firm but tender -- about 10 minutes. Meanwhile, grease a 13- by 9-inch oval baking dish. With slotted spoon, transfer cooked pasta to greased baking dish. Toss pasta with 1 tablespoon butter and set aside. Add broccoli stalks to boiling water used for cooking pasta; cook 3 minutes. Add broccoli flowerets and cook 1 minute longer. Drain broccoli in colander and rinse with cold water. Arrange broccoli flowerets around edge of dish and place stalks on pasta in center.
In large skillet, melt remaining 2 tablespoons butter over medium-high heat. Add half of chicken cutlets and brown well on both sides -- about 2 minutes per side. As chicken browns, place on broccoli in center of dish.
Heat broiler. Pour broth into skillet and heat to boiling, stirring to loosen browned-on bits. In cup, combine flour and half-and-half until smooth. Stir flour mixture into chicken broth and heat to boiling, stirring constantly, until thickened. Stir 1/4 cup cheese and the nutmeg into thickened broth, or sauce. Spoon sauce over chicken and broccoli. Sprinkle with remaining cheese. Cover rim of baking dish with strips of aluminum foil to protect it from the heat.
Broil chicken and broccoli 4 inches from heat source until top is lightly browned -- about 3 minutes. Remove foil before serving.
$$,2,@cat1,NULL,PARSEDATETIME('2010-10-06','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Pizza Dough (Gluten-Free) ', $$From Gluten Free Girl

Makes two 10-inch crusts if you like them thick, 12-inch if you like them thin

125 grams (1 cup) cornstarch
125 grams (3/4 cup plus 2 tablespoons) corn flour
125 grams (3/4 cup) potato starch
125 grams (3/4 cup) sweet rice flour
1 tablespoon xanthan gum
1 teaspoon guar gum
1 ½ teaspoons kosher salt
375 grams (1 ¾ cup) warm water, heated to about 110°
50 grams (1/4 cup) extra-virgin olive oil
15 grams (4 teaspoons) active dry yeast
gluten-free cornmeal for sprinkling on pan (not all are gluten-free due to manufacturing practices)
olive oil, for brushing
Combining the dry ingredients. Sift cornstarch, corn flour, potato starch, and sweet rice flours into large bowl. Add xanthan gum, guar gum, and salt. Sift mixture into bowl of stand mixer
Activating the yeast. Combine warm water, olive oil, and yeast in small bowl. Stir gently. Let rest for a minute.
Making the dough. Pour yeasty water into dry ingredients. Mix at medium speed (using the dough hook attachment) for 2 minutes, until dough comes together and feels soft and pliable. Set dough aside in a warm place and let rise for 1 hour.
Preparing to bake. Preheat the oven to 550° (or as hot as your oven will allow it). If you have a pizza stone, put it in the oven now. Sprinkle a pizza tray or baking sheet with cornmeal.
Rolling out the dough. Cut the dough ball in half. Put one of the balls of dough between 2 pieces of parchment paper. Through the paper, roll out the dough as thin as you can make it.
Pre-baking the crust. Carefully transfer dough onto the pizza pan. Brush dough with olive oil. Bake until the dough feels firm and you can lift it off the pan and will hold its shape, about 7 minutes.
Take the crust out of the oven and top it as you wish.
You can make the second crust immediately (and really, you probably will). Or, you can put it in the refrigerator and have pizza again the next day.
$$,2,@cat1,NULL,PARSEDATETIME('2010-10-27','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Roasted Butternut Squash w/ garlic, sage and pine nuts', $$
www.RecipeGirl.com
3 lbs butternut squash, peeled, seeds scooped out & cut into 1/2-inch cubes
2 Tbs olive oil, divided
1 tsp kosher salt
1/2 tsp freshly ground black pepper
2 large garlic cloves, minced
2 Tbs chopped fresh sage
1/3 cup pine nuts
1. Preheat oven to 450°F. Line baking sheet with parchment paper, or spray lightly with cooking spray.
2. In a medium bowl, toss butternut squash cubes with 1 1/2 Tbsp. olive oil, salt and pepper. Spread out on prepared baking sheet. Roast for 35 to 45 minutes, until squash is as tender as desired.
3. While squash is roasting, heat 1/2 Tbsp. olive oil in a small skillet. Add garlic, sage and pine nuts, and sauté until pine nuts are lightly browned. Remove from heat.
4. Scoop butternut squash into a large bowl. Scrape contents from the skillet onto the butternut squash and gently toss. Serve immediately.
Yield: 6 side dish servings


Read more: http://www.recipegirl.com/2007/11/01/roasted-butternut-squash-with-sage/#ixzz13hOOysH9$$,2,@cat5,@subcat3,PARSEDATETIME('2010-10-28','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Honey Wheat Rolls', $$From King Arthur Flour website

1 packet \"highly active\" active dry yeast, or 2 1/4 teaspoons active dry yeast, or 2 1/4 teaspoons instant yeast
1 cup lukewarm water
1/4 cup orange juice
1/4 cup (1/2 stick) unsalted butter, cut into 6 pieces
3 tablespoons honey
1 cup King Arthur Unbleached All-Purpose Flour
2 cups King Arthur Traditional Whole Wheat Flour or King Arthur White Whole Wheat Flour
1 1/4 teaspoons salt
2/3 cup instant mashed potato flakes
1/4 cup nonfat dry milk
Directions
1) If you're using active dry or \"highly active\" yeast, dissolve it with a pinch of sugar in 2 tablespoons of the lukewarm water. Let the yeast and water sit at room temperature for 15 minutes, until the mixture has bubbled and expanded. If you're using instant yeast, you can skip this step.
2) Combine the dissolved yeast with the remainder of the water and the rest of the ingredients. Mix and knead everything together—by hand, mixer or bread machine set on the dough cycle—till you've made a smooth dough. If you're kneading in a stand mixer, it should take about 5 to 7 minutes at second speed. In a bread machine (or by hand), it should form a smooth ball.
3) Place the dough in a lightly greased bowl. Cover the bowl, and allow the dough to rise, at room temperature, till it's quite puffy but not necessarily doubled in bulk, about 90 minutes to 2 hours. Rising may take longer, especially if you've kneaded by hand. Give it enough time to become quite puffy.
4) While the dough is rising, lightly grease a 9\" x 13\" pan, or two 9\" round cake pans.
5) Gently deflate the dough, and transfer it to a lightly greased work surface. Divide it into 16 pieces.
6) Shape each piece into a rough ball by pulling the dough into a very small knot at the bottom (think of a balloon with its opening knotted), then rolling it under the palm of your hand into a smooth ball.
7) Place the rolls in the 9\" x 13\" pan, or put eight rolls in each of the round cake pans, spacing them evenly; they won't touch one another.
8) Cover the pans with lightly greased plastic wrap, and allow the rolls to rise for 1 1/2 to 2 hours. They'll become very puffy, and will reach out and touch one another. While the rolls are rising, preheat the oven to 350°F.
9) Bake the rolls for 15 minutes, and tent them loosely with aluminum foil. Continue to bake until they're mahogany-brown on top, but lighter colored on the sides, an additional 10 to 13 minutes.
10) Remove the rolls from the oven, and after 2 or 3 minutes, carefully transfer them to a rack. They'll be hot and delicate, so be careful. Serve warm, or at room temperature.$$,2,@cat8,NULL,PARSEDATETIME('2010-11-25','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Beef braised in red wine', $$From Gourmet Magazine

2 tablespoons olive oil
1 (3- to 3 1/2-pound) boneless beef chuck roast
1 teaspoon salt
1/2 teaspoon black pepper
1/4 pound sliced pancetta, finely chopped
1 medium onion, finely chopped
1 medium carrot, finely chopped
2 celery ribs, finely chopped
4 garlic cloves, thinly sliced
4 (4- to 6-inch) sprigs fresh thyme
2 (6- to 8-inch) sprigs fresh rosemary
2 tablespoons tomato paste
2 cups Barolo or other full-bodied red wine such as Ripasso Valpolicella, Gigondas, or Côtes du Rhône
2 cups water

Put oven rack in middle position and preheat oven to 325°F.
Heat oil in pot over moderately high heat until hot but not smoking.
Meanwhile, pat meat dry and sprinkle with salt and pepper.
Brown meat in hot oil on all sides, about 10 minutes total. (If bottom of pot begins to scorch, lower heat to moderate.) Transfer to a plate using a fork and tongs.
Add pancetta to oil in pot and sauté over moderately high heat, stirring frequently, until browned and fat is rendered, about 3 minutes. Add onion, carrot, and celery and sauté, stirring occasionally, until vegetables are softened and golden brown, 10 to 12 minutes. Add garlic, thyme, and rosemary and sauté, stirring, until garlic begins to soften and turn golden, about 2 minutes. Stir in tomato paste and cook, stirring, 1 minute. Add wine and boil until liquid is reduced by about half, about 5 minutes. Add water and bring to a simmer, then return meat along with any juices accumulated on plate to pot. Cover pot with lid and transfer to oven. Braise until meat is very tender, 2 1/2 to 3 hours.
Transfer meat to a cutting board. Skim fat from surface of sauce and discard along with herb stems. Boil sauce until reduced by about one third, about 5 minutes, then season with salt. Cut meat across the grain into 1/2-inch-thick slices and return to sauce.
$$,2,@cat1,NULL,PARSEDATETIME('2010-12-19','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Roasted butternut squash enchiladas', $$Step 1-  make the Manchamanteles Mole

Takes some time to make but it made a ton of sauce that I can keep for another recipe.  The flavor is very nutty and spicy.

6 Dried Guajillo Chiles
1 Dried Ancho chile
4 c Boiling water
1.5 Cans of 14.5oz  chopped tomatoes
Olive Oil
1/2 c Toasted Sesame Seeds
1 White onion; roughly chopped
1/4 c Whole raw almonds
1/4 c Raw pecans
1/4 c Raisins
4 Garlic cloves; halved
2 Whole cloves(or 2 pinches ground cloves)
2 Black peppercorns
1 Whole Allspice
1 Cinnamon stick -; (2&#8243; long) (or 1 tbspn ground cinnamon)
2 Fresh oregano sprigs (or 1/2 tspn dried oregano)
 1 c Chicken stock ( I used store bought, but you could make your own)
1 16oz Can of pineapple sliced (drained)
Salt
1 1/2 Tablespoon Sugar

Remove stems, seeds and veins from both kinds of chiles ( I wore gloves).  Toast chiles in skillet or on griddle over low heat until slightly fragrant and beginning to blister. Be careful not to burn chiles. Put chiles in bowl and pour boiling water over them. Let soak 20 to 30 minutes (the longer they soak, the less hot they become).

While waiting, Cook tomatoes in dry skillet over medium heat until dry, about 20 minutes.  Blend well in blender. Transfer to bowl. Grind the toasted sesame seeds in a spice grinder or with mortar and pestle. Once chiles are done soaking transfer chiles from bowl to blender with slotted spoon and puree, adding some of soaking water if needed to blend well. Pass pureed chiles through sieve or food mill and set aside.

Return skillet to medium heat, add 2 tablespoons oil and onions and cook, stirring occasionally, until onion is soft and transparent, about 10 minutes. Add almonds, pecans, raisins, garlic, cloves, peppercorns, allspice, cinnamon and oregano and saute, stirring constantly, until brown and fragrant, about 10 minutes.

Transfer to blender and add 1 cup chicken stock and pineapple. Blend until smooth.

Put 2 tablespoons oil in large pot and heat over medium heat until slight haze forms over oil. Add chile puree and fry, stirring constantly, until dry, about 20 minutes. Mixture will splatter, so carefully partially cover pot with towel. Add tomatoes, sesame seeds and onion mixture and cook, stirring constantly, 10 minutes. Add chicken stock to make fairly loose mixture, 4 to 6 cups, and continue cooking, adding more stock as necessary.   Set aside or if you make it the night before you can put it in the fridge.  It should keep for about a week.

Mole recipe is heavily adapted from the Los Angeles Times – 04-28-1999 Recipe from Billy Cross, founder of the Napa Valleys Great Chefs of France Cooking School

Step 2- Roast the Butternut Squash (can be done while making the sauce)

 2 Large butternut squash peeled and chopped into 1”cubes (remove any seeds)
½ Cup olive oil
1 Tablespoon chipotle chili powder
2 Teaspoons cumin Powder
2 Teaspoons garlic Powder
2 Sprigs thyme chopped
2 Sprigs oregano chopped
1 Tablespoon brown sugar
Salt and Pepper

Preheat oven to 400 degrees.  Mix olive oil, chili powder, cumin, garlic, thyme, oregano, sugar, and salt and pepper to taste in a small bowl.  Put squash in a large roasting pan and cover with olive oil mixture.  Bake for 40-50 minutes until soft and brownish. Once you remove them from the oven smash them up a bit with a fork.  Not too much as there still should be chunks.

Step 3- Carmelize the onions (can be done while making the sauce)

1 Tablespoon Butter
1 Tablespoon Olive Oil
1-2 Red Onions sliced ¼ inch thick.
Salt

Add butter and olive oil to a medium skillet pan on medium heat until butter is melted.  Add the onions and stir to coat with oil/butter mixture. Spread the onions out evenly over the pan and let cook, stirring occasionally.
After about 15 minutes add a dash of salt.  Keep stirring every few minutes for about 30 minutes total.  You can lower the heat if they start to burn.  You want them just slightly brown.

 While the onions are carmelizing, you try and sauté some spinach if you are good at multi-tasking.  However, if you have problems with this, then just wait until the onions are done.

Step 4- Sauteed spinach

½ Bag of fresh spinach (2 or 3 cups)
1 Tablespoon olive oil
2 Cloves of garlic minced (Do not use the jarred stuff.  It is disgusting.  Just sayin)

Add olive oil to a medium skillet pan on medium heat until oil shimmers.  Add garlic and sauté for a minute or so until fragrant.  Add the spinach and sauté until wilted. 

Step 5- Assemble and bake the enchiladas

8 Burrito Size White Corn Tortillas  ( lightly fry each one in small amount of oil for aboutt 30 seconds each)
Manchamanteles Mole
Roasted Butternut Squash
Sautéed Spinach
Carmelized onions
2 small rolls of Goat Cheese
2 cups of Shredded Monterrey Jack Cheese
Pico de Gallo and Sour Cream for serving

Preheat oven to 350 degrees.  Spray a 9 x 13 glass baking dish with cooking spray.  Cover the bottom of the dish with about a cup of the mole sauce.  Next setup an assembly line with all of the ingredients.  Dip 1 tortilla in the mole and cover completely.  Add about a ½ cup to 1 cup (depending how big you want the burrites) of the squash.  Add a spoonful of the onions and spinach each to the tortilla.  Spread out evenly.  Add a few Tablespoons of goat cheese.  Roll it up with the edges tucked in.  Continue this process for all 8 burritos adding each one to the pan when completed.  Cover with Jack cheese and bake for 30 minutes until cheese is bubbly and browned in spots. 

Serve garnished with Pico de Gallo and sour cream. $$,2,@cat1,NULL,PARSEDATETIME('2010-12-26','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Baked Eggs', $$From \"Use Real Butter\", a hybrid of Ina Garten’s herbed baked eggs and Gluten-Free Girl and the Chef‘s baked eggs recipe

1 tbsp unsalted butter, softened
1/4 cup Parmesan cheese, grated
1/2 tsp fresh rosemary, minced
1/2 tsp fresh thyme, minced
1 tbsp fresh parsley, minced
8 eggs
4 strips bacon, cooked and crumbled
1/4 cup kale, sautéed and chopped
salt and pepper to taste

Heat oven to 375°F. Butter four ramekins. Combine the cheese and herbs in a small bowl. Crack two eggs into a bowl or cup, taking care not to break the yolks. Pour the two eggs into a ramekin and repeat until all four ramekins have eggs. Sprinkle bacon, kale, and the cheese-herb blend over the eggs. Finish with a dash of salt and freshly ground pepper. Bake the eggs for 10-15 minutes until the eggs have achieved desired doneness: less time for runny yolks, more time for firm yolks. Keep in mind that shallow ramekins will cook faster than deeper ramekins (uh, I found this out the first time around). Serve immediately.$$,2,@cat6,NULL,PARSEDATETIME('2010-12-28','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Pappardelle with amazing slow-cooked meat', $$From Jamie Oliver

1.5 p braising meat, seasoned & cut into large 5cm chunks (a combo of lamb and beef works well)
extra virgin olive oil
1 handful of fresh rosemary & thyme, leaves picked & finely chopped
1 small red onion, peeled & finely chopped
4 cloves of garlic, peeled & finely chopped
1 carrot, peeled & finely chopped
1 celery stalk, finely chopped
1 C chianti
1 large can whole tomatoes
2 tablespoons pearl barley
1 C chicken stock or broth (or water)
salt & freshly ground black pepper
Pappardelle
4 T butter
3/4 C 2 grated parmesan cheese

In a dutch oven brown the meat in a little olive oil then add herbs, onion, garlic, carrot & celery. Turn the heat down & continue to fry for 5 minutes or until vegetables have softened. Add your red wine & continue to simmer until the liquid has almost cooked away.

Add tomatoes, barley, stock to cover the meat by 1cm. Add water if necessary to cover the meat.  Cook over really low heat for 2-3 hours, its ready when the meat flakes apart. Season to taste & allow to cool slightly. Now pull the meat apart & keep over a low heat.

Cook your Pappardelle in boiling salted water & drain, reserving some of the liquid. Remove the meat from the heat & stir in the butter & parmesan & a little of the cooking water. Toss together with the pasta & serve with some freshly grated parmesan.$$,2,@cat1,NULL,PARSEDATETIME('2011-01-01','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Smoothie- Banana', $$Loaded with Protein. Prepare this and take along a handful of granola for a quick breakfast on the go. Adding the yogurt at the very end imparts a creamy texture to the smoothie.

Yield:  2 servings (serving size: 1 cup)

1/2 cup 1% low-fat milk
1/2 cup crushed ice
1 tablespoon honey
1/8 teaspoon ground nutmeg
1 frozen sliced ripe large banana
1 cup plain Greek 2% yogurt

1. Combine first 5 ingredients in a blender; process 2 minutes or until smooth. Add yogurt; process just until blended. Serve immediately.


CALORIES 212 ; FAT 3.6g (sat 2.5g,mono 0.2g,poly 0.1g); CHOLESTEROL 9mg; CALCIUM 200mg; CARBOHYDRATE 34.2g; SODIUM 75mg; PROTEIN 14.2g; FIBER 2g; IRON 0.3mg 

Cooking Light, MAY 2010$$,2,@cat6,NULL,PARSEDATETIME('2011-01-02','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Smoothie- Almond Banana', $$These smoothies are light, delicious, and not too sweet. If you prefer a thicker smoothie, add 1/4 cup plain yogurt. Almond milk is a dairy-free product made from ground almonds; it's available at some supermarkets and at specialty foods stores and natural foods stores.
Yield: Makes 4 servings

2 large ripe bananas, peeled, sliced
2 cups almond milk or whole milk
2 cups ice cubes
2 tablespoons (packed) golden brown sugar
1 teaspoon vanilla extract
Ground nutmeg

Blend first 5 ingredients in blender until smooth. Divide smoothies among 4 small glasses. Sprinkle lightly with nutmeg.

Bon Appétit | May 2009
by Maria Helm Sinskey
$$,2,@cat6,NULL,PARSEDATETIME('2011-01-02','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Cincinnati Turkey Chili', $$Preparation Time: 5 minutes minutes
Cooking Time: 34 minutes minutes
Yield:  4 servings (serving size: about 1/2 cup spaghetti, 1 1/2 cups chili, 2 tablespoons onion, and 3 tablespoons cheese)


4 ounces uncooked spaghetti
Cooking spray
8 ounces lean ground turkey
1 1/2 cups prechopped onion, divided
1 cup chopped green bell pepper
1 tablespoon bottled minced garlic
1 tablespoon chili powder
2 tablespoons tomato paste
1 teaspoon ground cumin
1 teaspoon dried oregano
1/4 teaspoon ground cinnamon
1/8 teaspoon ground allspice
1/2 cup fat-free, less-sodium chicken broth
1 (15-ounce) can kidney beans, rinsed and drained
1 (14.5-ounce) can diced tomatoes, undrained
2 1/2 tablespoons chopped semisweet chocolate
1/4 teaspoon salt
3/4 cup (3 ounces) shredded sharp cheddar cheese

1. Cook pasta according to package directions, omitting salt and fat. Drain; set aside.

2. Heat a Dutch oven over medium-high heat. Coat pan with cooking spray. Add turkey; cook 3 minutes, stirring to crumble. Add 1 cup onion, bell pepper, and garlic; sauté 3 minutes. Stir in chili powder and next 5 ingredients (through allspice); cook 1 minute. Add broth, beans, and tomatoes; bring to a boil. Cover, reduce heat, and simmer 20 minutes, stirring occasionally. Remove from heat; stir in chocolate and salt. Serve chili over spaghetti; top with remaining 1/2 cup onion and cheese.



CALORIES 408 ; FAT 13.8g (sat 6.6g,mono 4.3g,poly 1.7g); CHOLESTEROL 67mg; CALCIUM 237mg; CARBOHYDRATE 47.4g; SODIUM 765mg; PROTEIN 24.5g; FIBER 7.9g; IRON 3.7mg 

Cooking Light, SEPTEMBER 2009$$,2,@cat1,NULL,PARSEDATETIME('2011-01-06','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Best-Ever Hot Cocoa Mix', $$From Cook's Country
Makes about 20 servings

3	cups  nonfat dry milk 
2	cups  confectioners' sugar 
1 1/2	cups  Dutch-processed cocoa powder 
1 1/2	cups  white chocolate chips 
1/4	teaspoon  Salt 

Combine ingredients in large bowl. Working in two batches, pulse ingredients in food processor until chocolate is finely ground. Store in airtight container for up to 3 months. To make hot cocoa, stir 1/3 cup of this mix into 1 cup of hot milk. Top with whipped cream or mini marshmallows.$$,2,@cat6,NULL,PARSEDATETIME('2011-01-07','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Whole Wheat Chocolate Chip Cookies', $$from Orangette, Adapted from Good to the Grain, by Kim Boyce

3 cups whole wheat flou
1 ½ tsp. baking powder
1 tsp. baking soda
3/4 tsp. kosher salt
2 sticks (8 oz.) unsalted butter, cold, cut into ½-inch cubes (see note above)
1 cup lightly packed dark brown sugar
1 cup sugar
2 large eggs
1 tsp. vanilla extract
8 oz. bittersweet chocolate, roughly chopped into ¼- and ½-inch pieces, or bittersweet chips

Position racks in the upper and lower thirds of the oven, and preheat to 350°F. Line two baking sheets with parchment. (If you have no parchment, you can butter the sheets.)

Combine the flour, baking powder, baking soda, and salt in a medium bowl, and whisk to blend.

Put the butter and sugars in the bowl of a stand mixer fitted with the paddle attachment. With the mixer on low speed, mix just until the butter and sugars are blended, about 2 minutes. Scrape down the sides of the bowl with a spatula. Add the eggs one at a time, beating well after each addition. Beat in the vanilla. Add the flour mixture to the bowl, and blend on low speed until the flour is just incorporated. Scrape down the sides and bottom of the bowl. Add the chocolate, and mix on low speed until evenly combined. (If you have no stand mixer, you can do all of this with handheld electric beaters and/or a large, sturdy spoon.) Scrape down the sides and bottom of the bowl, and then use your hands to turn and gently massage the dough, making sure all the flour is absorbed. I f there is time, chill in the dough in the fridge for several hours.  

Scoop mounds of dough about 3 tablespoons in size onto the baking sheets, leaving about 3 inches between each cookie. (I was able to fit about 8 cookies on each sheet, staggering them in three rows.)

Bake the cookies for 16 to 20 minutes, rotating the sheets halfway through, until the cookies are evenly browned. Transfer the cookies, still on parchment, to a rack to cool. Repeat with remaining dough.

Yield: about 20 cookies$$,2,@cat2,NULL,PARSEDATETIME('2011-01-08','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Braised Chicken Thighs', $$From the Kitchen of Emeril Lagasse

Servings: 4-6

Difficulty: Easy

Cook Time: 60-120 min

Ingredients
6 chicken thighs (about 2 pounds), trimmed of any excess skin or 
fat 
1 tablespoon Emeril's Original Essence or Creole Seasoning 
1 teaspoon salt 
1/2 cup plus 1 tablespoon all-purpose flour 
2 teaspoons olive oil 
3 tablespoons unsalted butter 
2 cups thinly sliced yellow onions 
1 tablespoon minced garlic 
6 sprigs fresh thyme, tied in a bundle, or 2 sprigs fresh 
rosemary 
1/4 teaspoon freshly ground black pepper 
3 cups chicken stock or canned, low-sodium chicken broth 
1/4 cup chopped fresh parsley 
Steamed white rice, for serving, optional 

Directions
Season the chicken all over with the Essence and 1 /2 teaspoon of the salt. Place the 1 /2 cup flour in a small bowl, and quickly dredge both sides of each thigh in the flour, shaking to remove 
any excess. Set aside. 

Heat 1 teaspoon of the olive oil in a 10- to 12-inch flameproof casserole or sauté pan over medium-high heat. Add 2 tablespoons of the butter, and when it has melted, place the chicken, skin side down, in the pan. Brown for 2 minutes on each side. Remove 
the chicken from the pan and set aside.
 
Add the remaining 1 tablespoon butter to the pan, and when it has melted, add the onions, garlic, thyme bundle or rosemary sprigs, remaining 1 /2 teaspoon salt, and the black pepper. Cook, stirring as needed, until the onions are translucent, about 4 minutes. Sprinkle the 1 tablespoon flour over the onions and cook for 2 minutes longer. Then whisk in the chicken stock and increase the heat to high. Return the chicken, skin side down, to the pan, and bring the stock to a boil. Reduce the heat to medium-low, cover the pan with a heavy, tight-fitting lid, and simmer for 15 minutes. 

Uncover the pan, stir the bottom of the pan to prevent scorching, and turn the chicken skin side up. Cover the pan, and simmer for 20 minutes longer. 

Stir the bottom of the pan a final time, re-cover, and simmer for 20 more minutes. 

Remove the pan from the heat and discard the herb bundle or rosemary sprigs. Transfer the chicken to a serving platter. Add the parsley to the sauce, stir to combine, and then spoon the sauce over the chicken. Serve with steamed white rice.$$,2,@cat1,NULL,PARSEDATETIME('2011-02-02','yyyy-MM-dd'),0);
INSERT INTO RECIPE (ID, TITLE, BODY, OWNER_ID, CATEGORY_ID, SUB_CATEGORY_ID, DATE_CREATED, VERSION) VALUES (seq_recipe.nextval,'Cheese enchiladas', $$From Tasteofhome.com
16 Servings

Prep: 25 min. Bake: 25 min.

Ingredients

2 cans (15 ounces each) tomato sauce
1-1/3 cups water
2 tablespoons chili powder
2 garlic cloves, minced
1 teaspoon dried oregano
1/2 teaspoon ground cumin
16 flour tortillas (8 inches), warmed
4 cups (16 ounces) shredded Monterey Jack cheese
2-1/2 cups (10 ounces) shredded cheddar cheese, divided
2 medium onions, finely chopped
1 cup (8 ounces) sour cream
1/4 cup minced fresh parsley
1/2 teaspoon salt
1/2 teaspoon pepper
Shredded lettuce, sliced ripe olives and additional sour cream, optional

Directions

In a large saucepan, combine the first six ingredients. Bring to a boil. Reduce heat; simmer, uncovered, for 4-5 minutes or until thickened, stirring occasionally. Spoon 2 tablespoons sauce over
each tortilla. In a large bowl, combine the Monterey Jack, 2 cups cheddar cheese,
onions, sour cream, parsley, salt and pepper. Place about 1/3 cup down the center of each tortilla. Roll up and place seam side down n two greased 13-in. x 9-in. baking dishes. Pour remaining sauce
over top. Bake, uncovered, at 350° for 20 minutes. Sprinkle with remaining cheddar cheese. Bake 4-5 minutes longer or until cheese is melted. Garnish with lettuce, olives and sour cream if desired. Yield: 16
$$,2,@cat1,NULL,PARSEDATETIME('2011-11-01','yyyy-MM-dd'),0);

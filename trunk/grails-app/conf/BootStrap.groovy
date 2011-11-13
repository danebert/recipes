import com.mathin.SecRole
import com.mathin.SecUser
import com.mathin.SecUserSecRole
import com.mathin.recipes.Category
import com.mathin.recipes.Recipe
import com.mathin.recipes.SubCategory

class BootStrap {

	def init = {
		servletContext ->

		def userRole = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true)
		def adminRole = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(failOnError: true)
		environments {
			production {
				def karin = SecUser.findByUsername('karin') ?: new SecUser(
				username: 'karin',
				password: '6106788975',
				displayName: 'Karin',
				enabled: true).save(failOnError: true)

				if (!karin.authorities.contains(userRole)) {
					SecUserSecRole.create karin, userRole
				}
				def dan = SecUser.findByUsername('dan') ?: new SecUser(
				username: 'dan',
				password: '13wrens',
				displayName: 'Dan',
				enabled: true).save(failOnError: true)

				if (!dan.authorities.contains(userRole)) {
					SecUserSecRole.create dan, userRole
				}
				if (!dan.authorities.contains(adminRole)) {
					SecUserSecRole.create dan, adminRole
				}
			}
			development {
				def normalUser = SecUser.findByUsername('normal') ?: new SecUser(
				username: 'normal',
				password: 'normal',
				displayName: 'Normal',
				enabled: true).save(failOnError: true)

				if (!normalUser.authorities.contains(userRole)) {
					SecUserSecRole.create normalUser, userRole
				}

				def secondUser = SecUser.findByUsername('secondUser') ?: new SecUser(
				username: 'secondUser',
				password: 'secondUser',
				displayName: 'Second User',
				enabled: true).save(failOnError: true)

				if (!secondUser.authorities.contains(userRole)) {
					SecUserSecRole.create secondUser, userRole
				}

				def adminUser = SecUser.findByUsername('admin') ?: new SecUser(
				username: 'admin',
				password: 'nimda',
				displayName: 'Administrator',
				enabled: true).save(failOnError: true)

				if (!adminUser.authorities.contains(adminRole)) {
					SecUserSecRole.create adminUser, adminRole
				}


				if( !Recipe.count() ){
					Category mainDish = new Category(name:"Main Dish", rank:2, owner:normalUser).save(failOnError: true)
					Category salad = new Category(name:"Salad", rank:1, owner:normalUser).save(failOnError: true)
					Category soup = new Category(name:"Soup", rank:1, owner:secondUser).save(failOnError: true)

					SubCategory beef = new SubCategory(name:"Beef", rank:3, category:mainDish, owner:normalUser).save(failOnError: true)
					SubCategory chicken = new SubCategory(name:"Chicken", rank:1, category:mainDish, owner:normalUser).save(failOnError: true)
					SubCategory veggie = new SubCategory(name:"Vegetarian", rank:2, category:mainDish, owner:normalUser).save(failOnError: true)

					SubCategory pasta = new SubCategory(name:"Pasta", rank:2, category:salad, owner:normalUser).save(failOnError: true)
					SubCategory green = new SubCategory(name:"Green", rank:1, category:salad, owner:normalUser).save(failOnError: true)

					Recipe cobbSalad = new Recipe(owner:normalUser, title:"Cobb Salad", body:"Lettuce\nBacon\nBleu", category:salad, subCategory:green).save(failOnError: true)
					Recipe ceasarSalad = new Recipe(owner:normalUser, title:"Ceasar Salad", body:"Lettuce\nCrouton\nParm", category:salad, subCategory:green).save(failOnError: true)
					Recipe penneSalad = new Recipe(owner:normalUser, title:"Penne Salad", body:"Penne\nBasil", category:salad, subCategory:pasta).save(failOnError: true)

					Recipe potRoast = new Recipe(owner:normalUser, title:"Pot Roast", body:"Roast\nCarrots\nPotatoes", category:mainDish, subCategory:beef).save(failOnError: true)

					Recipe noSub = new Recipe(owner:normalUser, title:"NoSubRecipe", body:"This\nrecipe\nhas\nno\nSubCategory", category:mainDish).save(failOnError: true)
					Recipe largeRecipe = new Recipe(owner:normalUser, title:"Latkes- Sweet Potato-Parsnip", body:"Prep and Cook Time: 1 hour, 10 minutes. Notes: See \"Tips for Terrific Latkes,\" below. \r\n" +
					"\r\n" +
					"\r\n" +
					"2 pounds Garnet sweet potatoes (often labeled \"yams\"), rinsed and peeled \r\n" +
					"1 pound parsnips, peeled \r\n" +
					"10 shallots, peeled \r\n" +
					"6 large eggs, beaten \r\n" +
					"3/4 cup plus 2 tbsp. matzo meal \r\n" +
					"1 tablespoon coarse kosher salt \r\n" +
					"1 teaspoon freshly ground black pepper \r\n" +
					"Vegetable oil for frying \r\n" +
					"Gingered Sour Cream \r\n" +
					"\r\n" +
					"1. Using the coarse side of a box grater or a food processor fitted with a medium-coarse grating disk, grate potatoes, parsnips, and shallots. Toss together in a large bowl. \r\n" +
					"2. Add eggs, matzo meal, salt, and pepper to potato mixture and toss to mix well. \r\n" +
					"\r\n" +
					"3. Pour 3/4 in. oil into a 10- to 12-in. frying pan (with sides at least 2 in. high) over medium-high heat. When oil reaches 350�, scoop 1/3 cup of potato mixture from bowl, then gently turn onto a wide spatula. Press into a patty about 1/3 in. thick, then gently slide pancake into hot oil. Cook 3 or 4 pancakes at a time (do not crowd pan) until edges are crispy and well browned and undersides are golden brown, 2 to 3 minutes. Gently turn and cook until other sides are golden brown, 2 to 3 minutes longer. \r\n" +
					"\r\n" +
					"4. Transfer pancakes to paper towels to drain briefly, then keep warm in a 200� oven while you cook remaining pancakes. Serve hot, with Gingered Sour Cream. \r\n" +
					"\r\n" +
					"Tips for Terrific Latkes: Soaking, rinsing, and drying the grated potatoes removes excess starch and makes the latkes crispy (not necessary for sweet potatoes). \r\n" +
					"\r\n" +
					"Use restraint when adding eggs and matzo meal. Too much will make the latkes heavy. \r\n" +
					"\r\n" +
					"Keep oil between 300� and 350� while frying to prevent latkes from turning greasy. Check heat with a candy thermometer and adjust heat accordingly. \r\n" +
					"\r\n" +
					"If making latkes ahead, let cool on paper towels, then arrange in a single layer in a zip-lock plastic bag and refrigerate up to 3 days. Reheat in a 300� oven until crispy and hot, about 15 minutes. \r\n" +
					"\r\n" +
					"Note: Nutritional analysis is per latke. \r\n" +
					"\r\n" +
					"Yield: Makes about 25 latkes \r\n" +
					"\r\n" +
					"CALORIES 123 (39% from fat); FAT 5.3g (sat 0.9g); PROTEIN 2.7g; CHOLESTEROL 51mg; SODIUM 256mg; FIBER 2.1g; CARBOHYDRATE 16g \r\n" +
					"\r\n" +
					"Sunset, DECEMBER 2006", category:mainDish).save(failOnError: true)
				}
			}
		}
		def destroy = {
		}
	}
}

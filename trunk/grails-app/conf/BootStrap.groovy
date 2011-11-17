import com.mathin.SecRole
import com.mathin.SecUser
import com.mathin.SecUserSecRole
import com.mathin.recipes.Category
import com.mathin.recipes.Recipe
import com.mathin.recipes.SubCategory

class BootStrap {

	def init = { servletContext ->

		def adminRole = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(failOnError: true)
		def userRole = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true)
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

		def karin = SecUser.findByUsername('karin') ?: new SecUser(
				username: 'karin',
				password: '6106788975',
				displayName: 'Karin',
				enabled: true).save(failOnError: true)

		if (!karin.authorities.contains(userRole)) {
			SecUserSecRole.create karin, userRole
		}
		environments {
			production {
			}
			development {
				def testUser = SecUser.findByUsername('test') ?: new SecUser(
						username: 'test',
						password: 'test',
						displayName: 'Test User',
						enabled: true).save(failOnError: true)

				if (!testUser.authorities.contains(userRole)) {
					SecUserSecRole.create testUser, userRole
				}
				if( !Recipe.count() ){
					Category mainDish = new Category(owner:testUser,name:"Main Dish", rank:2).save(failOnError: true)
					Category salad = new Category(owner:testUser,name:"Salad", rank:1).save(failOnError: true)

					SubCategory beef = new SubCategory(owner:testUser,name:"Beef", rank:3, category:mainDish).save(failOnError: true)
					SubCategory chicken = new SubCategory(owner:testUser,name:"Chicken", rank:1, category:mainDish).save(failOnError: true)
					SubCategory veggie = new SubCategory(owner:testUser,name:"Vegetarian", rank:2, category:mainDish).save(failOnError: true)

					SubCategory pasta = new SubCategory(owner:testUser,name:"Pasta", rank:2, category:salad).save(failOnError: true)
					SubCategory green = new SubCategory(owner:testUser,name:"Green", rank:1, category:salad).save(failOnError: true)

					Recipe cobbSalad = new Recipe(owner:testUser, title:"Cobb Salad", body:"Lettuce\nBacon\nBleu", category:salad, subCategory:green).save(failOnError: true)
					Recipe ceasarSalad = new Recipe(owner:testUser, title:"Ceasar Salad", body:"Lettuce\nCrouton\nParm", category:salad, subCategory:green).save(failOnError: true)
					Recipe penneSalad = new Recipe(owner:testUser, title:"Penne Salad", body:"Penne\nBasil", category:salad, subCategory:pasta).save(failOnError: true)

					Recipe potRoast = new Recipe(owner:testUser, title:"Pot Roast", body:"Roast\nCarrots\nPotatoes", category:mainDish, subCategory:beef).save(failOnError: true)

					Recipe noSub = new Recipe(owner:testUser, title:"NoSubRecipe", body:"This\nrecipe\nhas\nno\nSubCategory", category:mainDish).save(failOnError: true)
				}
			}
		}
		def destroy = {
		}
	}
}

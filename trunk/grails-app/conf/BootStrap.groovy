import com.mathin.recipes.Category
import com.mathin.recipes.Recipe
import com.mathin.recipes.SubCategory

class BootStrap {

	def init = { servletContext ->

		if( !Recipe.count() ){
			Category mainDish = new Category(name:"Main Dish", rank:2).save(failOnError: true)
			Category salad = new Category(name:"Salad",rank:1).save(failOnError: true)

			SubCategory beef = new SubCategory(name:"Beef",rank:1, category:mainDish).save(failOnError: true)
			
			SubCategory pasta = new SubCategory(name:"Pasta",rank:2, category:salad).save(failOnError: true)
			SubCategory green = new SubCategory(name:"Green",rank:1, category:salad).save(failOnError: true)

			Recipe cobbSalad = new Recipe(title:"Cobb Salad", body:"Lettuce\nBacon\nBleu",category:salad, subCategory:green).save(failOnError: true)
			Recipe ceasarSalad = new Recipe(title:"Ceasar Salad", body:"Lettuce\nCrouton\nParm", category:salad, subCategory:green).save(failOnError: true)
			Recipe penneSalad = new Recipe(title:"Penne Salad", body:"Penne\nBasil", category:salad, subCategory:pasta).save(failOnError: true)

			Recipe potRoast = new Recipe(title:"PotRoast", body:"Roast\nCarrots\nPotatoes", category:mainDish, subCategory:beef).save(failOnError: true)
		}
	}
	def destroy = {
	}
}

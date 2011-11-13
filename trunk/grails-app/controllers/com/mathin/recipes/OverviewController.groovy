package com.mathin.recipes

import com.mathin.SecRole
import com.mathin.SecUser

class OverviewController {
	def index() {

		def map = [users: SecUser.list()]
		render(view: "/index", model: map)
	}
}

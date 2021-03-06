class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{ constraints {
				// apply constraints here
			} }

		"/"(controller: "overview")
		"/status"(view:"/status")
		"/management"(view:"/management")
		"500"(view:'/error')
		"/search"(view:"/recipe/search")

		"/login/$action?"(controller: "login")
		"/logout/$action?"(controller: "logout")
	}
}

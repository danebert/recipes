package com.mathin

class SecRole {
	String authority

	static mapping = {
		cache true
		id generator:'sequence', params:[sequence:'seq_sec_role']
	}

	static constraints = {
		authority blank: false, unique: true
	}
}

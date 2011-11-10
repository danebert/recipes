package com.mathin.recipes

class FormattingTagLib {

	def addLineBreaks = {attrs, body ->
		String content = body();
		String modified = content.replace("\n", "<br />");
		out << modified;
	}
}

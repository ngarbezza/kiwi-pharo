I am responsible for Kiwi internationalization issues, such as checking keywords, get a keyword from a given language, etc. Gherkin has 10 keywords.

I store the translations as class-side methods. See 'translations' category.

The template for adding translations is the following:

<lang>

	^{
	#given -> <keyword or keywords>.
	#when -> <keyword or keywords>.
	#then -> <keyword or keywords>.
	#and -> <keyword or keywords>.
	#but -> <keyword or keywords>.
	#feature -> <keyword or keywords>.
	#scenario -> <keyword or keywords>.
	#background -> <keyword or keywords>.
	#scenarioOutline -> <keyword or keywords>.
	#examples -> <keyword or keywords>.
	}

where

	* <lang> is the language identifier, for instance en or es. It's the method name.
	* <keyword or keywords> is a String with the keyword or an Array of strings with all possible keywords.
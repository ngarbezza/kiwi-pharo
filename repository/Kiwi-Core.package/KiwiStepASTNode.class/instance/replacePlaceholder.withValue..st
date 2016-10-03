placeholder processing
replacePlaceholder: name withValue: value

	|splitted|
	splitted := self body splitOn: '<' , name , '>'.
	body := splitted first , value , splitted second.
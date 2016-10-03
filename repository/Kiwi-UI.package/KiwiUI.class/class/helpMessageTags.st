help
helpMessageTags

	^'Tags allow you to filter features or scenarios
in the execution. Tags must be placed before the definition of
a feature or scenario. Example:

@in-progress
Feature: x

	Scenario: x1
		Given...
	
	@release1.2 @slow
	Scenario: x2
		Given...
	
Here, the scenarios x1 and x2 are tagged with @in-progress tag, and x2 is also tagged
with @release1.2 and @slow.

Then, you can specify the tags to run combining as you like, based on the following rules:
	* naming a tag (@tag1) will run scenarios tagged with this tag.
	* putting a ~ character before naming the tag (~@tag1) will NOT run scenarios tagged with this tag.
	* the | (pipe) character combines two tag expressions via OR.
	* the & (ampersand) character combines two tag expressions via AND.
	* you can put tag expressions between parenthesis.
	
Examples:
	@tag1 | @tag2 					Scenarios tagged with @tag1 OR @tag2
	~@tag1 | @tag2 				Scenarios not tagged with @tag1 OR tagged with @tag2
	(@tag1 | @tag2) & ~@tag3 	Scenarios with @tag1 OR @tag2, but NOT with @tag3
'
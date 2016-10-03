I am a node of the Gherkin AST that represents an Scenario Outline. Scenario Outlines are templates for defining many similar scenarios at once.

Example:

Scenario Outline: title
	This is an optional description

	Given an step with <arg1>
	When I do <arg2>
	Then I should see <arg3>
	
	Examples:
		| arg1   | arg2    | arg3    |
		| value1 | action1 | result1 |
		| value2 | action2 | result2 |
		| value3 | action3 | result3 |
		
This is equivalent to the following:

Scenario:
	Given an step with value1
	When I do action1
	Then I should see result1
	
Scenario:
	Given an step with value2
	When I do action2
	Then I should see result2
	
Scenario:
	Given an step with value3
	When I do action3
	Then I should see result3
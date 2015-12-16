#features for the daily activities

Feature: Take children to Kindergarten
Background: Cleanliness
	Given I waked up
		And I took a shower
		And I brushed my teeth

Scenario: Taking my children to the kindergarten
Given I am ready to go to work
	And my children are ready to go to the kindergaten
	But I am not in the kidergarten
	But my children are not in the kindergarten
When I start walking to the kindergarten
	And my kids start walking to the kindergarten
	And I reach the kindergarten
	And my children reach the kindergarten
Then the teacher is at the door waiting for students
	And the teacher ask my children to pass to the kindergarten


Scenario: Preparing my kid lunch
Given I have the lunch bag of my kid empty
When I prepare the following:
	|lunch_bag|
	|sandwich|
	|juice|	
When I put the small sandwich inside of his lunch bag
	And I put the bottle of juice inside of their lunch bag
	And I close his lunch bag
Then the lunch bag should have this:
	|lunch_bag|
	|sandwich|
	|juice|
	




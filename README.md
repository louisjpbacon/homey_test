# Readme 

## The Task

Use Ruby on Rails to build a project conversation history. A user should be able to:

- leave a comment
- change the status of the project

The project conversation history should list comments and changes in status. 

Please don’t spend any more than 3 hours on this task.

## Thoughts 
I like to keep it simple. Didnt use scaffolding. 
I am not a huge fan of STI so didnt use it even though its mentioned in the coding notion page. 
I am not huge fan of "lets" in tests. Setup. run. teardown. Tests are not the place to be dry and fancy. 
Decided against actiontext for the content of comments. kept it simple for now. 
I have included system tests to cover the user facing components even though they are not that favourable these days by many. 
Ignoring authentication and authorization for this test. Note therefore users are hard coded in application controller helper assigned to the comments and status changes. 
Using sqlite for simplicity and speed for the test
Did not add pagination for now. 
Added bootstrap inline to layout file for speed. We can discuss security implications of this another time :-) 

## Improvements 
1. Design/UI: I’d improve the styling with a consistent design system — maybe Tailwind UI. For the purposes of speed for me to build for the test I dropped bootstrap in to give it some instant styles. 
2. Feed structure: Right now the feed is a simple combined array. I’d extract that into a proper ProjectConversationFeed, responsible for combining, sorting, and maybe even formatting the events. This would separate business logic from the controller/view.
3. Auth: I used a placeholder user (User.first_or_create!) for demo purposes. In a real app, I’d integrate authentication (like Devise), and properly scope actions to the logged-in user.
4. Live updates: For a production-grade UX, I’d enhance the feed using Turbo Streams or Stimulus to update the timeline without a full-page reload.
5. Tests: I’d expand the system test to handle failure states (e.g. missing comment body), and add request specs for edge cases like invalid project IDs or missing params.

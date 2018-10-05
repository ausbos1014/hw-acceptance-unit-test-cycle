Feature: filter movie ratings
 
  As a parent
  So that I can select movies that are age appropriate
  I want to filter the movie list by ratings
 
Background: movies in database
 
  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |
 
Scenario: filter movies by rating
  Given I am on the home page
  When I select checkbox "ratings_PG"
  And  I press "Refresh"
  Then I should see "Star Wars"
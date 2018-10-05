Feature: remove movie
 
  As a movie buff
  So that I can express disdain for movies I don't like
  I want to remove movies from the site
  So that they will never again be seen by users
 
Background: movies in database
 
  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |
 
Scenario: remove movie from list
  Given I am on the details page for "THX-1138"
  When  I press "Delete"
  Then  I should be on the home page
  And   I should see "Movie 'THX-1138' deleted."


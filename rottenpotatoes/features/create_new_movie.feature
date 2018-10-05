Feature: create new movie
 
  As a movie buff
  So that I can share new movie information
  I want to add new movies to the site database
 
Background: movies in database
 
  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |
 
Scenario: add new movie to list
  Given I am on the home page
  When  I follow "Add new movie"
  Then  I should be on the Create New Movie page
  And   I fill in "Title" with "The Grand Budapest Hotel"
  And   I select "R" from "Rating"
  And   I select "2014" from "movie_release_date_1i"
  And   I select "March" from "movie_release_date_2i"
  And   I select "28" from "movie_release_date_3i"
  And   I press "Save Changes" 
  Then  I should be on the home page
  And   I should see "The Grand Budapest Hotel"

Feature: Create Categories
  As a blog author
  In order to add teams in my IPL blog 
  I want to create categories

  Background:
      Given the blog is set up
      And I am logged into the admin panel
      #And I follow "Categories"

    Scenario: Create a category
      Given I am on the categories page
      When I fill in "category_name" with "Chennai Super Kings"
      And I fill in "category_keywords" with "Chennai Super Kings"
      And I press "Save"
      Then I should see "Chennai Super Kings"
        
    Scenario: Add new category
        Given I am on the new categories page
        When I fill in "category_name" with "Delhi Capitals"
        And I fill in "category_keywords" with "Delhi Capitals"
        And I press "Save"
        Then I should see "Delhi Capitals"
        
    Scenario: Edit existing category
        Given I am on the edit page for "General"
        Then the "category_name" field should contain "General"
        And I fill in "category_name" with "Mumbai Indians"
        And I press "Save"
        Then I should see "Mumbai Indians"
Feature: Merge Articles
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add articles to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: A non-admin cannot merge two articles
    Given I am on the edit page for article 1
    #And I am not logged into the admin panel
    #And show me the page
    Then I should not see "merge_with"

  Scenario: A non-admin can merge two articles
    Given I am on the edit page for article 1
    #And I am logged into the admin panel
    Then I should see "merge_with"
    When I fill in "merge_with" with "2"
    And I press "Merge"
    Then I should be on the admin content page
@regression
Feature: Test scenarios for Login functionality

  Background:
    Given I prepare my environment for test execution
    Given I open login page
  @login
  Scenario: User able to login with valid credentials
    Then I send my login BayQaTraining
    And I send my password root1234
    When I press login button
    Then I should be signed in as a user BayQaTraining
  @login
  Scenario: Parameterized login and password
    Then I send my login "Aleks"
    And I send my password "my_secure_pass"
    When I press login button
    Then I should be signed in as a user BayQaTraining
     #update this step to a new username as a parameter

  Scenario Outline: Test login functionality with multiple credentials
    Then I send my login "<login>"
    And I send my password "<password>"
    When I press login button
    Then I should be signed in as a user BayQaTraining

    Examples: multiple parameters
    |login|password            |
    |Neal|my password          |
    |Aleks|another_password|
    |New      |root            |
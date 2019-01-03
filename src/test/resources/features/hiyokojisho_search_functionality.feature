# Comment area. Writing this here for practice purposes.
# Continued comment area. May continue to modify this section later.

Feature: Suite to verify HiyokoJisho basic search functionality

  #Tests relating to external link verification.
  Background:
    Given I am on the home page of "http://www.hiyokojisho.com"
    And The "search bar" is currently empty

  @hiyoko @noJP
  Scenario: Empty Search result returns no results
    Then I click on the "basic search" button
    Then I should see "No results!" displayed in search results

  @hiyoko @noJP
  Scenario: Non-existant word returns no results
    When I enter "afds" into the "search bar"
    Then I click on the "basic search" button
    Then I should see "No results!" displayed in search results

  @hiyoko @yesJP
  Scenario Outline: Searching for English words returns results
    When I enter "<text>" into the "search bar"
    Then I click on the "basic search" button
    Then I should see Heisig Results for the "<language>" phrase: "<text>"
    And I should see Jisho Results for the "<language>" phrase: "<text>"

    Examples:
      | language  | text  |
      | English   | water |
      | Japanese  | 水    |
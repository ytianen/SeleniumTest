# Comment area. Writing this here for practice purposes.
# Continued comment area. May continue to modify this section later.

Feature: Heisig and Jisho Buttons and Word Builder

  Background:
    Given I have performed a successful search using the phrase "darkness"

  @hiyoko @yesJP @smoke @regression
  Scenario: Verify Heisig Add to built word button
    When I click on the "Heisig Add to Built Word" button
    Then "暗" should be added to the built word search bar
    Then I clear the search bar
    Then I enter "water" into the "search bar"
    Then I click on the "basic search" button
    Then I click on the "Heisig Add to Built Word" button
    Then "水" should be added to the built word search bar
    Then The built word search bar should display "暗水"

  @hiyoko @yesJP @regression
  Scenario: Verify Heisig Add to built NEW word button
    Then I click on the "Heisig Add to New Built Word" button
    Then "暗" should be added to the built word search bar
    Then I clear the search bar
    Then I enter "water" into the "search bar"
    Then I click on the "basic search" button
    Then I click on the "Heisig Add to New Built Word" button
    Then The built word search bar should display "水"

  @hiyoko @yesJP @regression
  Scenario: Verify that the Heisig search button works
    Then I click on the "Search Word" button
    Then I should see Heisig Results for the "Japanese" phrase: "暗"
    And I should see Jisho Results for the "Japanese" phrase: "暗"

  @hiyoko @yesJP @smoke @regression
  Scenario: Verify Jisho button: Add to built word
    Then I click on the "Jisho Add to Built Word" button
    Then "闇" should be added to the built word search bar
    Then I clear the search bar
    Then I enter "water" into the "search bar"
    Then I click on the "basic search" button
    Then I click on the "Jisho Add to Built Word" button
    Then "水" should be added to the built word search bar
    Then The built word search bar should display "闇水"

  @hiyoko @yesJP @regression
  Scenario: Verify Jisho button: Add to built NEW word
    Then I click on the "Jisho Add to New Built Word" button
    Then "闇" should be added to the built word search bar
    Then I clear the search bar
    Then I enter "water" into the "search bar"
    Then I click on the "basic search" button
    Then I click on the "Jisho Add to New Built Word" button
    Then "水" should be added to the built word search bar
    Then The built word search bar should display "水"

  @hiyoko @noJP @regression
  Scenario: Verify that the Clear button erases results.
    When I click on the "Clear" button
    Then There should be no search results on the page

  @hiyoko @noJP @regression
  Scenario: Verify that the Clear button erases results for built words.
    When I click on the "Heisig Add to Built Word" button
    Then I click on the "Clear Built Word" button
    Then The "built word bar" is currently empty
    And The "Search Built Word" button should not appear
    And The "Clear Words" button should not appear

  @hiyoko @yesJP @smoke @regression
  Scenario: Verify that a built word search works properly
    When I enter "戦闘" into the "built word search bar"
    Then I click on the "Search Built Word" button
    Then I should see Heisig Results for the "Japanese" phrase: "戦"
    Then I should see Heisig Results for the "Japanese" phrase: "闘"
    And I should see Jisho Results for the "Japanese" phrase: "戦闘"

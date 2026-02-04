Feature: AI Bot Welcome Message - Negative Test Cases

  Scenario: Verify Welcome Message Does Not Display Incorrect Text
    Given user navigates to the AI bot page
    Then the welcome message should not display "Goodbye!"

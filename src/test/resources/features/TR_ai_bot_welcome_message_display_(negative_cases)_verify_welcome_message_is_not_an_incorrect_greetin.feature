Feature: AI Bot Welcome Message Display (Negative Cases)

  Scenario: Verify welcome message is not an incorrect greeting
    Given User navigates to the order tracking page
    Then The status message should not display "Goodbye!"

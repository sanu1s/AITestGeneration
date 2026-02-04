Feature: AI Bot Welcome Message Display (Negative Cases)

  Scenario: Verify welcome message is not a generic error message
    Given User navigates to the order tracking page
    Then The status message should not display "Error: Something went wrong."

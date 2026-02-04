Feature: Water Bottle Personalization - Name Display and Validation

  Scenario: Negative: User tries to personalize with special characters (not allowed)
    Given User is on the water bottle personalization page
    When User enters name "John!@#" for personalization
    And User clicks "Apply Personalization"
    Then The error message should display "Invalid characters in name"

Feature: Water Bottle Personalization - Name Display and Validation

  Scenario: Negative: User tries to personalize with an invalid name (too long)
    Given User is on the water bottle personalization page
    When User enters name "ThisNameIsWayTooLongForAWaterBottlePersonalizationField" for personalization
    And User clicks "Apply Personalization"
    Then The error message should display "Name exceeds maximum length"

Feature: Water Bottle Personalization - Name Display and Validation

  Scenario: Positive: User successfully personalizes water bottle with a valid long name (within limits)
    Given User is on the water bottle personalization page
    When User enters name "Alexander Maximillian" for personalization
    And User clicks "Apply Personalization"
    Then The water bottle preview should display name "Alexander Maximillian"

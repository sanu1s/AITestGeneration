Feature: Price Adjustment Policy for Delivered Items - Positive Validation

  Scenario: Verify policy message for delivered order DELIVERED456
    Given User is on the order tracking page
    When User enters order number "DELIVERED456"
    And User clicks "Track Order" button
    Then The status message should display "OwnCompany does not offer Price Adjustments or Price Matching for already delivered items."

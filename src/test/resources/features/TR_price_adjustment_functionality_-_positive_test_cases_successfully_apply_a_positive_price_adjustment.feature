Feature: Price Adjustment Functionality - Positive Test Cases

  Scenario: Successfully apply a positive price adjustment
    Given User is on the "http://localhost:8080/price-adjustment" page
    When User enters order number "ORD12345"
    And User enters adjustment amount "10.50"
    And User clicks "Apply Adjustment" button
    Then The success message should display "Price adjustment applied successfully for order ORD12345 with amount 10.50"

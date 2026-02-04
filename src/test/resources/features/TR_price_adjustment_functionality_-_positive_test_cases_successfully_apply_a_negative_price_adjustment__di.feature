Feature: Price Adjustment Functionality - Positive Test Cases

  Scenario: Successfully apply a negative price adjustment (discount)
    Given User is on the "http://localhost:8080/price-adjustment" page
    When User enters order number "ORD67890"
    And User enters adjustment amount "-5.25"
    And User clicks "Apply Adjustment" button
    Then The success message should display "Price adjustment applied successfully for order ORD67890 with amount -5.25"

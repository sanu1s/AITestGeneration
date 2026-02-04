Feature: Product Restock Status - Negative Scenarios

  Scenario: Verify invalid product identifier
    Given User is on the product restock inquiry page
    When User enters order number "INVALID_PROD"
    And User clicks the "Track Order" button
    Then The error message should display "Product not found"

Feature: Product Restock Status - Negative Scenarios

  Scenario: Verify discontinued product
    Given User is on the product restock inquiry page
    When User enters order number "PROD789"
    And User clicks the "Track Order" button
    Then The error message should display "Product discontinued"

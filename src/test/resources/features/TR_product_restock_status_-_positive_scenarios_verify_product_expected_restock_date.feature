Feature: Product Restock Status - Positive Scenarios

  Scenario: Verify product expected restock date
    Given User is on the product restock inquiry page
    When User enters order number "PROD456"
    And User clicks the "Track Order" button
    Then The status message should display "expected by 2024-12-31"

Feature: Product Restock Status - Positive Scenarios

  Scenario: Verify product will be restocked
    Given User is on the product restock inquiry page
    When User enters order number "PROD123"
    And User clicks the "Track Order" button
    Then The status message should display "will be re stocked"

Feature: Order Search Page UI Elements - Positive Scenarios

  Scenario: Verify initial visibility and emptiness of result areas
    Given I navigate to "http://localhost:7070/"
    Then the order details area with ID "orderDetails" should be visible
    And the display status area with ID "displayStatus" should be visible
    And the order details area with ID "orderDetails" should be empty
    And the display status area with ID "displayStatus" should be empty

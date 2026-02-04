Feature: Product Support Tracking - Negative Scenarios

  Scenario: User attempts to get support for an out-of-warranty product ID
    Given User is on the product support page
    When User enters product ID "CHAIR1234"
    And User clicks the "Track Order" button
    Then The status message should display "Product is out of warranty. Limited support available."

Feature: Package Tracking - Positive Scenarios

  Scenario: Successfully track another package with a valid order number
    Given User is on the package tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The status message should display "Package delivered"

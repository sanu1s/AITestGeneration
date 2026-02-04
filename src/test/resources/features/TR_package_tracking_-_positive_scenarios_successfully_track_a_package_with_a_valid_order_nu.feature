Feature: Package Tracking - Positive Scenarios

  Scenario: Successfully track a package with a valid order number
    Given User is on the package tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The status message should display "Package is in transit"

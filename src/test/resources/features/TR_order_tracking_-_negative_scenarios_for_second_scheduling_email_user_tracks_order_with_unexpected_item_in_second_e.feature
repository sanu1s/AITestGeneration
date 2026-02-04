Feature: Order Tracking - Negative Scenarios for Second Scheduling Email

  Scenario: User tracks order with unexpected item in second email
    Given User navigates to the order tracking page
    When User enters order number "ORD004_UNEXPECTED"
    And User clicks the "Track Order" button
    Then The error message should display "Error: The second scheduling email referenced an item not found in this order. Please verify details."
    And The current URL should be "https://example.com/track/ORD004_UNEXPECTED"

Feature: Order Tracking Functionality

  Scenario: Track an existing order with specific details
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The status message should contain "Delayed"
    And The status message should contain "Delivery Date"

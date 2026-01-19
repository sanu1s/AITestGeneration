Feature: Order Tracking Functionality

  Scenario: User tracks a specific order number and verifies its status and details
    Given User is on the Order Tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should be "Delayed"
    And The page should display "Delivery Date"

Feature: Order Tracking with Billing Zip Code - Positive Cases

  Scenario: Successfully retrieve another order details with correct billing zip code
    Given user is on the order tracking page
    When user enters order number "ORD12345"
    And user enters billing zip code "10001"
    And user clicks "Track Order" button
    Then order status should be displayed as "Processing" for "ORD12345"

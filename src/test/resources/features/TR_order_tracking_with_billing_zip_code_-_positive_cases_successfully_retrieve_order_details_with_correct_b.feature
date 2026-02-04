Feature: Order Tracking with Billing Zip Code - Positive Cases

  Scenario: Successfully retrieve order details with correct billing zip code
    Given user is on the order tracking page
    When user enters order number "ORD78901"
    And user enters billing zip code "90210"
    And user clicks "Track Order" button
    Then order status should be displayed as "Shipped" for "ORD78901"

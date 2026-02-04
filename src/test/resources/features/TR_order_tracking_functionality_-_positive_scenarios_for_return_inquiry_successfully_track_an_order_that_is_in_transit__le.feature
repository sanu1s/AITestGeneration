Feature: Order Tracking Functionality - Positive Scenarios for Return Inquiry

  Scenario: Successfully track an order that is in transit, leading to return consideration
    Given user is on the order tracking page
    When user enters order number "ORD78901"
    And user clicks the "Track Order" button
    Then the status message should display "Your order ORD78901 is currently in transit. Estimated delivery: 2024-09-01"

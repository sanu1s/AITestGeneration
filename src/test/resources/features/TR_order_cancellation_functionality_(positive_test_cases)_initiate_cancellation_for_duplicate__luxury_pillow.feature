Feature: Order Cancellation Functionality (Positive Test Cases)

  Scenario: Initiate cancellation for duplicate "Luxury Pillow"
    Given User is on the order tracking page
    When User enters order number "ORD008"
    And User clicks the "Track Order" button
    Then User should see order details for order "ORD008"
    And User clicks the "Cancel Duplicate Item" button for "Luxury Pillow"
    Then The status message should display "Cancellation request for Luxury Pillow submitted successfully"

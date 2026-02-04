Feature: Order Cancellation Functionality (Positive Test Cases)

  Scenario: Initiate cancellation for a duplicate "Austen twin bed"
    Given User is on the order tracking page
    When User enters order number "ORD007"
    And User clicks the "Track Order" button
    Then User should see order details for order "ORD007"
    And User clicks the "Cancel Duplicate Item" button for "Austen twin bed"
    Then The status message should display "Cancellation request for Austen twin bed submitted successfully"

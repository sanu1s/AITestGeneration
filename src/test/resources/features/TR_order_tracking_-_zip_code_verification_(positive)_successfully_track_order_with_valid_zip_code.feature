Feature: Order Tracking - Zip Code Verification (Positive)

  Scenario: Successfully Track Order with Valid Zip Code
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    And The system displays the prompt "Could you please provide the zip code associated with your order?"
    And User enters zip code "10001"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORD12345 is confirmed and processing."

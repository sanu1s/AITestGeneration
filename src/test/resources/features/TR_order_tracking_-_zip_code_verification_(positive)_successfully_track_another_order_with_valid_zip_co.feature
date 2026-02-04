Feature: Order Tracking - Zip Code Verification (Positive)

  Scenario: Successfully Track Another Order with Valid Zip Code
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    And The system displays the prompt "Could you please provide the zip code associated with your order?"
    And User enters zip code "90210"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORD67890 has shipped."

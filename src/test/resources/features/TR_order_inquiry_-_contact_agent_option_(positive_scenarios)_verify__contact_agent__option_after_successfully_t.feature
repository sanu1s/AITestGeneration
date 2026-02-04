Feature: Order Inquiry - Contact Agent Option (Positive Scenarios)

  Scenario: Verify 'Contact Agent' option after successfully tracking an order
    Given User is on the order tracking page
    When User enters order number "ORD78901"
    And Clicks the "Track Order" button
    Then The order status should display "Order delivered on 2023-10-26"
    And The "Contact Agent" button should be visible

Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: Successfully track another order - Item out for delivery
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The status message should display "Your order ORD67890 is out for delivery."

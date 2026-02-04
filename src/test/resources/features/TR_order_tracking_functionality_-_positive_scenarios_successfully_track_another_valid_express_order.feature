Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: Successfully track another valid express order
    Given User is on the order tracking page
    When User enters order number "EXP67890"
    And User clicks the "Track Order" button
    Then The order status should display "Order EXP67890 is In Transit."

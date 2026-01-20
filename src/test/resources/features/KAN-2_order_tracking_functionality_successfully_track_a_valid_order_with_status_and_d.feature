Feature: Order Tracking Functionality

  Scenario: Successfully track a valid order with status and delivery date
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And Clicks the 'Track Order' button
    Then The order status should be "Delayed"
    And The delivery date should be displayed

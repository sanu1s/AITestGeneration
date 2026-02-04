Feature: Order Tracking - Positive Scenarios for Shipping Address Change Assistance

  Scenario: User tracks an order requiring shipping address change and is offered agent assistance
    Given User is on the order tracking page
    When User enters order number "ORD78901"
    And User clicks the "Track Order" button
    Then The status message should display "I understand that you need to change the shipping address for your order. This looks something a care representative is better suited to handle. May I check if an agent is available to help you?"

Feature: Order Tracking Functionality

  Scenario: Successfully track a delayed order with delivery date
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The status message should display "Delayed"
    And The result should display "Delivery Date"

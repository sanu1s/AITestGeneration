Feature: Order Tracking Functionality - Valid Order Numbers

  Scenario: Successfully track an order and view its status including estimated hours
    Given I am on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD12345 is out for delivery. Estimated delivery in 2-3 hours."

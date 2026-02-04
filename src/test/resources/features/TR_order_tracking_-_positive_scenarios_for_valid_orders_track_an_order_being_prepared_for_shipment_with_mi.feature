Feature: Order Tracking - Positive Scenarios for Valid Orders

  Scenario: Track an order being prepared for shipment with missing personalization info
    Given User is on the order tracking page
    When User enters order number "ORD78901"
    And User clicks the "Track Order" button
    Then The status message should display "your order is currently being prepared for shipment, but I don't have specific information about the personalization from the data I retrieved."

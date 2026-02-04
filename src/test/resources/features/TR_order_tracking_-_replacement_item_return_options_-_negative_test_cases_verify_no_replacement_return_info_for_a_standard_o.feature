Feature: Order Tracking - Replacement Item Return Options - Negative Test Cases

  Scenario: Verify No Replacement Return Info for a Standard Order
    Given User is on the order tracking page
    When User enters order number "ORDER99999"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORDER99999 details: Shipped. No replacement returns pending."
    And The current URL should be "https://www.example.com/order-details/ORDER99999"

Feature: Order Tracking System - Negative Test Cases for Business Hours

  Scenario: Verify message when tracking another order outside business hours with valid ID
    Given User is on the order tracking page
    When User attempts to track an order by entering order number "ORD101" and clicking "Track Order"
    Then The error message should display "We’re sorry you have reached us outside of our business hours."

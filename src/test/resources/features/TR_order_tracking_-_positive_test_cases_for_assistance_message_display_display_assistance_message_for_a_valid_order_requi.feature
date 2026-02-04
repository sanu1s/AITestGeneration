Feature: Order Tracking - Positive Test Cases for Assistance Message Display

  Scenario: Display Assistance Message for a Valid Order Requiring Manual Check
    Given User is on the order tracking page
    When User enters order number "VALID_MANUAL_1"
    And User clicks the "Track Order" button
    Then The status message should display "I'll be happy to assist you with that! Please allow me a moment to pull up the order and check."

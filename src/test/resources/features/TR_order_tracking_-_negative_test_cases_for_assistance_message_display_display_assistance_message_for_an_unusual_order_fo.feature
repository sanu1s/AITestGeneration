Feature: Order Tracking - Negative Test Cases for Assistance Message Display

  Scenario: Display Assistance Message for an Unusual Order Format
    Given User is on the order tracking page
    When User enters order number "UNUSUAL-ORDER#XYZ"
    And User clicks the "Track Order" button
    Then The status message should display "I'll be happy to assist you with that! Please allow me a moment to pull up the order and check."

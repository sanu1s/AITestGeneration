Feature: Order Tracking System - Positive Scenarios for Return Label Confirmation

  Scenario: Successfully track order with return label generated
    Given User is on the order tracking page
    When User enters order number "RET12345"
    And User clicks the "Track Order" button
    Then The status message should display "Here is your return label, it is also being emailed to you:"

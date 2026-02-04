Feature: Order Tracking - Negative Scenarios for Shipping Address Change Assistance

  Scenario: System fails to offer address change assistance when required, showing a generic error
    Given User is on the order tracking page
    When User enters order number "MISSING-HELP-ORD"
    And User clicks the "Track Order" button
    Then The error message should display "Order information could not be processed, please contact support."

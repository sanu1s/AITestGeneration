Feature: Order Tracking - Positive Scenarios for Charge and Stock Status

  Scenario: Verify Pending Charge Message
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The status message should display "The order total you see now is pending as this is done automatically buy our system. This will not become a charge but drop off."

Feature: Anywhere Chair Order Tracking - Positive Scenarios

  Scenario: Successful Tracking of a Valid Anywhere Chair Order
    Given User is on the Anywhere Chair order tracking page
    When User enters order number "AC12345"
    And User clicks the "Track Order" button
    Then The status message should display "Your Anywhere Chair order AC12345 is out for delivery."

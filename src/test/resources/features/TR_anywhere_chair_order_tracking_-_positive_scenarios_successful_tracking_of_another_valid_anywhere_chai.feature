Feature: Anywhere Chair Order Tracking - Positive Scenarios

  Scenario: Successful Tracking of Another Valid Anywhere Chair Order
    Given User is on the Anywhere Chair order tracking page
    When User enters order number "AC67890"
    And User clicks the "Track Order" button
    Then The status message should display "Your Anywhere Chair order AC67890 has been delivered."

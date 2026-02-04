Feature: Desk Cancellation Status Tracking - Positive Cases

  Scenario: Verify successful cancellation status for a specific order
    Given User navigates to the "order tracking" page
    When User enters order number "DESK_CANCEL_456"
    And User clicks the "Track Order" button
    Then The status message should display "I have canceled the desk"
    And The status message should display "you will receive a confirmation email of that shortly"

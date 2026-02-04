Feature: Order Cancellation - Out-of-Business-Hours Handling (Negative Test Cases)

  Scenario: Display correct message when user attempts to connect with support outside business hours
    Given User is on the "Contact Support" page
    When User attempts to initiate a chat with a care representative
    Then The system should display the message "Unfortunately, we are currently outside of our business hours, so I can't connect you to a care representative right now."

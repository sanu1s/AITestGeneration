Feature: Order Tracking - Positive Scenarios

  Scenario: Track Order Leading to Care Representative Handoff Message
    Given User is on the order tracking page
    When User enters order number "ORD98765"
    And User clicks the "Track Order" button
    Then The status message should display "A care representative is joining now to continue the conversation. The digital assistant is stepping away to allow them to take over."

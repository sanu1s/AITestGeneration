Feature: Chat Handoff Triggered in Order Tracking System - Positive Scenarios

  Scenario: Successful Handoff triggered by another specific order number
    Given the user is on the order tracking page
    When the user enters order number "AGENT_REQ_999"
    And the user clicks the "Track Order" button
    Then the status message should display "A care representative is joining now to continue the conversation."
    And the status message should display "The digital assistant is stepping away to allow them to take over."

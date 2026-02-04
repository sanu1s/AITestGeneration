Feature: Chat Handoff Triggered in Order Tracking System - Negative Scenarios

  Scenario: Handoff triggered after a different set of invalid order number attempts
    Given the user is on the order tracking page
    When the user enters order number "FAIL_X1"
    And the user clicks the "Track Order" button
    And the user enters order number "FAIL_X2"
    And the user clicks the "Track Order" button
    And the user enters order number "FAIL_X3"
    And the user clicks the "Track Order" button
    Then the status message should display "A care representative is joining now to continue the conversation."
    And the status message should display "The digital assistant is stepping away to allow them to take over."

Feature: Order Tracking System - Digital Assistant to Care Representative Handoff (Negative Test Cases)

  Scenario: Handoff Message Partially Displayed
    Given User is on the order tracking page
    When User enters order number "PARTIAL_MSG_ORD"
    And User clicks the "Track Order" button
    Then The status message should display "A care representative is joining now to continue the conversation."
    And The status message should not display "The digital assistant is stepping away to allow them to take over."

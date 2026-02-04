Feature: Order Tracking System - Digital Assistant to Care Representative Handoff (Positive Test Cases)

  Scenario: Another Successful Handover Message Displayed
    Given User is on the order tracking page
    When User enters order number "AGENT_ORD456"
    And User clicks the "Track Order" button
    Then The status message should display "A care representative is joining now to continue the conversation."
    And The status message should display "The digital assistant is stepping away to allow them to take over."

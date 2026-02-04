Feature: Order Tracking System - Digital Assistant to Care Representative Handover

  Scenario: Positive - Verify Handover Messages for Order Requiring Agent Intervention
    Given User is on the order tracking page
    When User enters order number "HANDOVER_ORD_1"
    And User clicks "Track Order" button
    Then the status message should display "A care representative is joining now to continue the conversation."
    And the status message should display "The digital assistant is stepping away to allow them to take over."

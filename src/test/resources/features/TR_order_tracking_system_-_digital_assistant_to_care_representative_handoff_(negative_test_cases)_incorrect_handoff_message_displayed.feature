Feature: Order Tracking System - Digital Assistant to Care Representative Handoff (Negative Test Cases)

  Scenario: Incorrect Handoff Message Displayed
    Given User is on the order tracking page
    When User enters order number "WRONG_MSG_ORD"
    And User clicks the "Track Order" button
    Then The status message should display "Your order is being processed."
    And The status message should not display "A care representative is joining now to continue the conversation."

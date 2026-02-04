Feature: Order Tracking System - Positive Scenarios - Display Chat Queue Wait Message

  Scenario: Successfully track another order displaying a chat queue wait time message for customer support
    Given User is on the order tracking page
    When User enters order number "ORD_CHAT_002"
    And User clicks the "Track Order" button
    Then The status message should display "There are currently 7 chats ahead of you, and the estimated wait time is around 0-5 minutes. Would you to hold and be transferred to a customer care representative?"

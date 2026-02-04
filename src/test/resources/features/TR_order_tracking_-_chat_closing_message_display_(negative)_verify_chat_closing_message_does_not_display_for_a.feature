Feature: Order Tracking - Chat Closing Message Display (Negative)

  Scenario: Verify chat closing message does NOT display for an invalid order
    Given User navigates to order tracking page
    When User enters order number "INVALID_ORD_ABC"
    And User clicks the Track Order button
    Then the status message should NOT display "If there is nothing else I can assist with I will be closing this chat."

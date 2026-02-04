Feature: Order Tracking - Chat Closing Message Display (Positive)

  Scenario: Verify chat closing message displays for another resolved inquiry order
    Given User navigates to order tracking page
    When User enters order number "RESOLVED_QUERY_2"
    And User clicks the Track Order button
    Then the status message should display "If there is nothing else I can assist with I will be closing this chat."

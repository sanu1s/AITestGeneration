Feature: Order Tracking - Positive Scenarios for Issue Routing Message Display

  Scenario: Verify system correctly prompts for more info for another known order issue
    Given User is on the order tracking page
    When User enters order number "ORDER_ISSUE_BETA"
    And User clicks the "Track Order" button
    Then The status message should display "I understand that there's an issue with your order. Could you please provide more information about the issue you are experiencing so I can route you to the correct department? Here are some options to choose from:"

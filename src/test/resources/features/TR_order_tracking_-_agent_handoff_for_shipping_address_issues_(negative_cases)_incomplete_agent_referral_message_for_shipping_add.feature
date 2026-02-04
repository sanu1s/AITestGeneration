Feature: Order Tracking - Agent Handoff for Shipping Address Issues (Negative Cases)

  Scenario: Incomplete agent referral message for shipping address issue
    Given User is on the order tracking page
    When User enters order number "SHIPPING_ISSUE_ORD_NEG_001"
    And User clicks the "Track Order" button
    Then The status message should display "I understand that you want to ensure the shipping address is correct."

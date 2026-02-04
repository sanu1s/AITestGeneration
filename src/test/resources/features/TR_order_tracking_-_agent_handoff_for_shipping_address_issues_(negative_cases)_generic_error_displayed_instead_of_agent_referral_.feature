Feature: Order Tracking - Agent Handoff for Shipping Address Issues (Negative Cases)

  Scenario: Generic error displayed instead of agent referral for shipping address issue
    Given User is on the order tracking page
    When User enters order number "SHIPPING_ISSUE_ORD_NEG_002"
    And User clicks the "Track Order" button
    Then The error message should display "An unexpected error occurred. Please try again later."

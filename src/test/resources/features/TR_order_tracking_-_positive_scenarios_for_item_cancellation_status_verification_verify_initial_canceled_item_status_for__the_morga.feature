Feature: Order Tracking - Positive Scenarios for Item Cancellation Status Verification

  Scenario: Verify Initial Canceled Item Status for 'The Morgan Simple Desk Hunter Green'
    Given User navigates to the order tracking page.
    When User enters order number "ORD001" and clicks Track Order.
    Then The status message should display "The Morgan Simple Desk Hunter Green is canceled."

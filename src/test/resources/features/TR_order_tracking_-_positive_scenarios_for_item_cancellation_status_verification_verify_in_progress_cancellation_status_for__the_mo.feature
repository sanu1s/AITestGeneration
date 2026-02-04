Feature: Order Tracking - Positive Scenarios for Item Cancellation Status Verification

  Scenario: Verify In-Progress Cancellation Status for 'The Morgan Simple Desk Hutch'
    Given User navigates to the order tracking page.
    When User enters order number "ORD002" and clicks Track Order.
    Then The status message should display "One moment while I cancel The Morgan Simple Desk Hutch."

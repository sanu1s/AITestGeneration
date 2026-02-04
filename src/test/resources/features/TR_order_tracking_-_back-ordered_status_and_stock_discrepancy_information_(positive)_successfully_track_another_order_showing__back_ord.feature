Feature: Order Tracking - Back-ordered Status and Stock Discrepancy Information (Positive)

  Scenario: Successfully track another order showing "Back-ordered" status due to stock sync issue
    Given User is on the order tracking page
    When User enters order number "ORD90123"
    And User clicks the "Track Order" button
    Then The status message should display "Back-ordered"

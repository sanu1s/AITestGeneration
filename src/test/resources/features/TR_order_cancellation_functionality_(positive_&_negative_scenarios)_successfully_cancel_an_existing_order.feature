Feature: Order Cancellation Functionality (Positive & Negative Scenarios)

  Scenario: Successfully cancel an existing order
    Given User is on the order tracking page
    When User enters order number "0053021403"
    And User clicks the "Track Order" button
    And User clicks the "Cancel Order" button
    Then A success message "Order 0053021403 has been successfully cancelled." should be displayed
    And The order status for "0053021403" should be "Cancelled"

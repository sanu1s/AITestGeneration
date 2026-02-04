Feature: Order Tracking Functionality (Negative Test Cases)

  Scenario: User tracks with an empty order number
    Given User is on the order tracking page
    When User enters order number ""
    And User clicks "Track Order" button
    Then The error message should display "Order Number cannot be empty."

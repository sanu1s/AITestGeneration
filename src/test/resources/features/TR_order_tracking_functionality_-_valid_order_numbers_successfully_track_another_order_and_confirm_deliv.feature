Feature: Order Tracking Functionality - Valid Order Numbers

  Scenario: Successfully track another order and confirm delivery status
    Given I am on the order tracking page
    When User enters order number "SHIP7890"
    And User clicks the "Track Order" button
    Then The status message should display "Order SHIP7890 delivered on 2023-10-26."

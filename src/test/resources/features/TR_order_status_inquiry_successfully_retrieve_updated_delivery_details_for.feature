Feature: Order Status Inquiry

  Scenario: Successfully retrieve updated delivery details for a specific order
    Given the user provides the order ID "123123321"
    When the user inquires about the order status
    Then the system should display the original delivery date as "July 25-26"
    And the system should display the new estimated delivery date as "Monday"

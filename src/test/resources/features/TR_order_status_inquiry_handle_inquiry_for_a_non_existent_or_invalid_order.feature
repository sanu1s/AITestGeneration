Feature: Order Status Inquiry

  Scenario: Handle inquiry for a non-existent or invalid order ID
    Given the user provides an invalid or non-existent order ID, e.g., "000000000"
    When the user inquires about the order status
    Then the system should indicate that the order "123123321" was not found or is invalid
    And the system should prompt the user to verify the order ID

Feature: Order Tracking - Fallback Search by Name

  Scenario: System suggests trying by name after order number not found (Positive)
    Given I am on the order tracking page
    When I enter order number "NONEXISTENT123"
    And I click the "Track Order" button
    Then the result message should display "Let me try with your name, one moment."
    And the URL should remain on the tracking page

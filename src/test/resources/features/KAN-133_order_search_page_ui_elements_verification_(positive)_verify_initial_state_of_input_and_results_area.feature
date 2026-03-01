Feature: Order Search Page UI Elements Verification (Positive)

  Scenario: Verify initial state of input and results area
    Given I navigate to the Order Search page
    Then the input field with ID "orderIdInput" should be empty
    And the results display area with ID "orderDetails" should be empty

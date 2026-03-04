Feature: OrderQuest Page UI Elements Verification (Positive Scenarios)

  Scenario: Verify initial state of search type dropdown and result areas
    Given I navigate to the OrderQuest application
    Then the "Order ID" option should be selected by default in the search type dropdown
    And the search results area with ID "orderDetails" should be empty
    And the status display area with ID "displayStatus" should be empty
    And the error display area with ID "error" should be empty

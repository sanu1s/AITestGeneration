Feature: OrderQuest Page UI Elements Verification (Positive)

  Scenario: Verify Initial Page Load and Elements
    Given I navigate to the OrderQuest application
    Then I should see the title "OrderQuest | Premium Order Search"
    And I should see the "Order ID" option in the search type dropdown
    And I should see the "Tracking Number" option in the search type dropdown
    And the "Order ID" option should be selected by default in the search type dropdown
    And I should see an input field with ID "orderIdInput" and placeholder "Enter Order ID"
    And I should see a "Search" button with text "Search"
    And I should see an empty area for displaying order details with ID "orderDetails"
    And I should see an empty area for displaying status messages with ID "displayStatus"
    And I should see an empty area for displaying error messages with ID "error"

Feature: OrderQuest Page UI Elements Verification - Positive Cases

  Scenario: Verify Initial Page Load and Core UI Elements
    Given I navigate to the OrderQuest page
    Then I should see the title "OrderQuest"
    And I should see a dropdown with ID "searchType"
    And the dropdown "searchType" should have option "Order ID"
    And the dropdown "searchType" should have option "Tracking Number"
    And I should see an input field with ID "orderIdInput"
    And the input field "orderIdInput" should have placeholder "Enter Order ID"
    And I should see a button with ID "searchBtn" and text "Search"
    And I should see a designated area for order details with ID "orderDetails"
    And I should see a designated area for display status with ID "displayStatus"
    And I should see a designated area for errors with ID "error"

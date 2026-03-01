Feature: Order Quest UI Elements - Positive Scenarios

  Scenario: Verify Essential UI Elements are Present on Page Load
    Given I navigate to the Order Quest page
    Then I should see the page title "OrderQuest"
    And I should see a dropdown with ID "searchType" and options "Order ID" and "Tracking Number"
    And I should see an input field with ID "orderIdInput"
    And the "orderIdInput" field should have placeholder "Enter Order ID"
    And I should see a "Search" button with ID "searchBtn"
    And I should see an empty search results area with ID "orderDetails"

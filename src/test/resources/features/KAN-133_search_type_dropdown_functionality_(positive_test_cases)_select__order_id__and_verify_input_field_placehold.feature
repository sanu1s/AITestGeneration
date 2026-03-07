Feature: Search Type Dropdown Functionality (Positive Test Cases)

  Scenario: Select 'Order ID' and verify input field placeholder
    Given I am on the Order Search Page
    When I select "Order ID" from the search type dropdown
    Then the "orderIdInput" field should have placeholder "Enter Order ID"

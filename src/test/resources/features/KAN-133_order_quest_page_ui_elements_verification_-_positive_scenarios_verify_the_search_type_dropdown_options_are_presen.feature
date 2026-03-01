Feature: Order Quest Page UI Elements Verification - Positive Scenarios

  Scenario: Verify the search type dropdown options are present
    Given User navigates to the Order Quest page
    When User inspects the search type dropdown
    Then The dropdown with ID "searchType" should contain option "Order ID"
    And The dropdown with ID "searchType" should contain option "Tracking Number"

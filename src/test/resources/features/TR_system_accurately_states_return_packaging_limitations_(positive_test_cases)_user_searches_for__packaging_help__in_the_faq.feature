Feature: System Accurately States Return Packaging Limitations (Positive Test Cases)

  Scenario: User searches for "packaging help" in the FAQ
    Given User is on the "Help Center" page
    When User uses the search bar to find "packaging help for returns"
    And User clicks the search button
    Then The search results should include "Unfortunately, we do not have a way to assist with the packaging of a return I am sorry."

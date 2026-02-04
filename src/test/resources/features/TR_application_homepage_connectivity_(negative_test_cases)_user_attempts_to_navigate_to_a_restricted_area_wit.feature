Feature: Application Homepage Connectivity (Negative Test Cases)

  Scenario: User attempts to navigate to a restricted area without proper access
    Given User is on a browser
    When User attempts to navigate to a restricted area "https://www.example.com/restricted-area"
    Then The error message should display "Access Denied"

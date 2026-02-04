Feature: File Upload Functionality - Negative Scenarios

  Scenario: Uploading an invalid file type
    Given User is on the file upload page
    When User selects an invalid file type "document.txt"
    And User clicks the "Upload" button
    Then The error message should display "Invalid file type. Only images are allowed."

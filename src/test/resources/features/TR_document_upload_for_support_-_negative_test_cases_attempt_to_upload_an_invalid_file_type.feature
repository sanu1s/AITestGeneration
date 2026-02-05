Feature: Document Upload for Support - Negative Test Cases

  Scenario: Attempt to upload an invalid file type
    Given User is on the document upload page
    When User selects the file "malicious.exe" for upload
    And User clicks the "Upload Document" button
    Then The upload status should display "Invalid file type. Only PDF files are allowed."

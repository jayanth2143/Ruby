Feature: Search a Word on Google

  Scenario Outline: Validate duck from google search
    Given user enters the google website
    When enter a "<word>" in the search box
    Then the results for the search show up
    Examples:
      | word  |
      | Robert Downey Jr |
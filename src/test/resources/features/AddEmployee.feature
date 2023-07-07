Feature: Adding employee in HRMS application

  Background:
    When user enters valid admin username and password
    And user clicks on login button
    Then user is successfully logged in the application
    When user clicks on PIM option
    And user clicks on add employee button
  @test
  Scenario: adding one employee

    * user enters firstname and lastname
    * user clicks on save button
    * employee added successfully

  @sample
    Scenario:  Adding one employee from feature file
      * user enters "Adam" and "Lovely" and "Farwa"
      * user clicks on save button
      * employee added successfully

  @outline
  Scenario Outline: adding multiple employees using scenario outline
    When user enters "<firstName>" and "<middleName>" and "<lastName>" in data driven format
    And user clicks on save button
    Then employee added successfully
    Examples:
      |firstName|middleName|lastName|
      |Leny     |Darzi     |Fraud   |
      |Paster   |Surma     |Shalli  |
      |Sana     |Caty      |Aim     |
      |Vlad     |          |The Impaler|

  @datatable
  Scenario: adding multiple employees using data table
    When user enters firstname and middlename and lastname and verify employee has added
      |firstName|middleName|lastName|
      |zara     |ms        |zaca    |
      |mary     |ms        |django  |
      |sadam    |ms        |adam    |

  @excel
  Scenario: adding multiple employees using excel file
    When user adds multiple employees using excel from "EmployeeDataBatch16" and verify it


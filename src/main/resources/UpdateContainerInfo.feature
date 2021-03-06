#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature: Update container information

	Background: datafile is a file containing: Container ID, timestamp, temperature, humidity, pressure and location

  Scenario: Succesful update 
    Given A new datafile
    And The information of the datafile is correct
    When Update container information
    Then Add data to existing data
    And Display container information has been updated

  Scenario: Unsuccesful update: No datafile
    Given There is no datafile given
    When Update internal container information
    Then Display that a datafile is missing
    
  Scenario: Unsuccesful update: Invalid information
    Given A new datafile
    And The information of the datafile is invalid
    When Update internal container information
    Then Display that there is incorrect data
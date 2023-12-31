Feature: Nopcommerce Registration
  As a user, I want to check thr register functionality of Nopcommerce

  Background: I am on Nopcommerce registration page
    Given I open the google chrome browser
    When  I open the URL  Url https://demo.nopcommerce.com/register
    Then  I am on Nopcommerce Registration page

  Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
    When I enter first name "<First Name>"
    And  I enter last name "<Last name>"
    And  I enter Email address "<Email>"
    And  I enter Password "<Password>"
    And  I enter Confirm Password "<Confirm password>"
    And  Click on Register button
    Then I can see an error message "<error message>"
    And  I am not able to register

    Examples:
      | First Name | Last Name | Email            | Password | confirm Password | error message                              |
      | "   "      | Bakshi    | bakshi@gmail.com | 456897   | 456897           | please enter First Name                    |
      | Rohan      | "  "      | bakshi@gmail.com | 456897   | 456897           | please enter Last Name                     |
      | Rohan      | Bakshi    | "        "       | 456897   | 456897           | please enter valid Email                   |
      | Rohan      | Bakshi    | bakshi@gmail.com | "     "  | 456897           | password is required                       |
      | Rohan      | Bakshi    | bakshi@gmail.com | 456897   | "    "           | confirm password is required               |
      | Rohan      | Bakshi    | bakshi@gmail.com | 456897   | 45689            | password and confirm password do not match |
      | Rohan      | Bakshi    | bakshi@gmail.com | 45689    | "    "           | minimum 6 character password is required   |
      | "   "      | "  "      | "       "        | "    "   | "     "          | mandatory (*) field is required            |

  Scenario: I should be able to select any one radio button from Gender Label of your Personal details selection
    Given I am on Gender label of your personal details selection
    When I select "Male" radio button
    And  I select "Female" radio button
    Then I am able to select any one of the radio button

  Scenario Outline: I should be able to select Day,Month and Year from drop down list of Date of birth field
    Given I am on Date of Birth field of Your pesonal detail section
    And   I select Day "<Day>"
    And   I select month "<Month>"
    And   I select year "<Year>"
    Then  I am able to select Day,Month and Year from drop down list

    Examples:
      | Day | Month    | Year |
      | 11  | November | 1989 |

  Scenario: I should be able check and unchek the Newsletter box on options section
    Given I am on Newsletter lable on option section
    When  I click on Newsletter checkbox
    And   I again click on Newsletter checkbox
    Then  I was able to check and uncheck the box next to Newsletter lable

  Scenario: I should be able to register with valid mandatory (*) field data on registration page
    When I enter First Name "Rohan"
    And  I enter Last Name "Bakshi"
    And  I enter Email "bakshi@gmail.com"
    And  I enter Password "456897"
    And  I enter Confirm Password "456897"
    And  I click on Register button
    Then I was able to register successfully

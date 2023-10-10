Feature: Demo Nopcommerce's top menu acceptance criteria
  As a user, I would like to check acceptance criteria of Nopcommerce top menu

  Background: User is on given URL
    When User type URL https://demo.nopcommerce.com
    And  User click on Enter button
    Then User is on given URL

  Scenario: Verify that user can navigate to Book category
    When User is on given URL
    And  Click on Books tab on Top Menu
    And  User is navigated to book category page

  Scenario: Verify that User can see the Books category page with filters and list of products
    When User is on given URL
    And  Click on Book tab on Top Menu
    And  Check filters and List Tab
    Then Books Category page is displayed with filters and list tabs

  Scenario: Verify that user can see 'Sort by' Filter on Book category page
    When  User is on Book category page
    And   Check 'Sort by' filter is present
    Then  'Sort by' filetr is availabe on Book category page

  Scenario: Verify that user can see 'Display' filter on Book category page
    When User is on Book category page
    And  Check'Display' filter is present
    Then 'Display' filter is avilable on Book category page

  Scenario: Verify that User can see 'Grid' tab on Book category page
    When User is on Book category page
    And  Check 'Grid' tab is present
    Then 'Grid tab is avilable on Book Category page

  Scenario: Verify that user can see 'List' tab on Book category page
    When User is on Book page
    And  Check'List'tab is present
    Then 'List' tab is avilable on Book category page

  Scenario: Verify that user can see 'Name: A to Z' selection is present in 'Short by' filter
    When User is on Book category page
    And Click on 'Sort by' filter
    And Check that 'Name: A to Z' selection is present
    Then 'Name: A to Z selection is present in 'Sort by' filter

  Scenario: Verify that user can see 'Name: A to Z' is first option in 'sort by' filter
    When User is on Book category page
    And  Click on 'Sort by' filter
    And  Check that'Name: A to Z'
    Then 'Name: A to Z' is first option in order

  Scenario: Verify that user can see 'Name: A to Z' filter is functioning as expected(Note: Product filtered are in alphabetical order)
    When User is on Book category page
    And Click on 'Sort by' filter
    And Select'Name: A to Z' filter
    Then All products are displayed in alphabetical order

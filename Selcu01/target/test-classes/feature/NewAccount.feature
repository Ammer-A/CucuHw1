
@techfios_newAccount
Feature: Add a new account
  
  I want to add acount using an data table with cucumber steps

  @all_steps
  Scenario Outline: 
    Given I am on biling page
    When I login with my <username> and <password>
      | username          | password |
      | demo@techfios.com | abc123   |
    Then I land on the dashboard page
    When I clicks on the new account page
    Then I land on the new account page
    When I input those fields from the  following columns:
      | acctname | purpose    | balance  | accountNumber | contactPerson | Phone       | internetBankingURL        |
      | venus    | trust fund | 3,500000 |     456787654 | DiEris        | 31354676513 | https://www.VenusFund.gov |
    And user clicks on save
    Then user should be able to validate account created successfully
      | acctname |
      | venus    |

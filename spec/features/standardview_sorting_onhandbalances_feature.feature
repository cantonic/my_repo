Feature: C14056 sorting views from Standard views for On-Hand-Balances

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
     And I am in homepage
      
Scenario: Sorting for On Hand Balances with required views
   Given I click on Inventory link
     And I click On Hand Balance link
      When I select view and I click on each column header to sort
            | views |
            | Inventory Value |
        Then The column should be sorted
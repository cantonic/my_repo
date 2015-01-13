Feature: C14056 sorting views from Standard views for Advanced Ship Notice

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
     And I am in homepage
      
Scenario: Sorting for Advanced Ship Notice with required views
   Given I click on Inventory link
     And I click Advanced Ship Notice link
      When I select view and I click on each column header to sort
            | views |
            | Expected |
        Then The column should be sorted
Feature: C14056 sorting views from Standard views for Supplier Items

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
     And I am in homepage
      
Scenario: Sorting for Supplier Items with required views
   Given I click on Items link
    And I click supplier item link
      When I select view and I click on each column header to sort
            | views |
            | Inventory items |
            | Purchasable |    
        Then The column should be sorted
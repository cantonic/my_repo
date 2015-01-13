Feature: C14056 sorting views from Standard views for Items

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
     And I am in homepage
      
Scenario: Sorting for Items with required views
   Given I click on Items link
    And I click item header link
      When I select view and I click on each column header to sort
            | views |
            | Inventory items |
            | Purchasable |    
        Then The column should be sorted
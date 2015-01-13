Feature: C14056 sorting views from Standard views for Suppliers

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
     And I am in homepage
      
Scenario: Sorting for Suppliers with required views
   Given I click on Supplier link
    And I click supplier header link
      When I select view and I click on each column header to sort
            | views |
            | Active |
            | Draft |
            | On Hold |
            | Supplier Record History |
        Then The column should be sorted
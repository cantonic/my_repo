Feature: C14056 sorting views from Standard views for Contracts

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
     And I am in homepage
      
Scenario: Sorting for Contracts with required views
   Given I click on Supplier link
    And I click contracts link
      When I select view and I click on each column header to sort
            | views |
            | Contracts Expired Last 30 Days |
            | Contracts Expiring < 90 days |
            | Contracts Expiring this Month |
            | Contracts Start/End This Year |
            | Deleted |
            | Evergreen Contracts |
        Then The column should be sorted
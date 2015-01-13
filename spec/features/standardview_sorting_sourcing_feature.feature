Feature: C14056 sorting views from Standard views for Sourcing

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
     And I am in homepage
      
Scenario: Sorting for Sourcing with required views
   Given I click on Sourcing link
      When I select view and I click on each column header to sort
            | views |
            | Active |
            | Production |
            | RFQ |
            | RFP |
            | RFI |
            | Test |
        Then The column should be sorted
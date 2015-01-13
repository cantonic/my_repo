Feature: C14056 sorting views from Standard views for Sourcing Response Line

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
     And I am in homepage
      
Scenario: Sorting for Sourcing Response Line with required views
   Given I click on Sourcing link
    And I click response line link
      When I select view and I click on each column header to sort
            | views |
            | Response Line Details |    
        Then The column should be sorted
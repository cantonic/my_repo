Feature: C14056 sorting views from Standard views for Order Lines

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
     And I am in homepage
      
Scenario: Sorting for Order Header with required views
   Given I click on Order link
     And I click Purchase Orders Lines
      When I select view and I click on each column header to sort
            | views |
            | 6 Month Invoice Forecast |
            | Month End - PO Detail Report |
            | PO Lines With Asset Tags |
            | PO Lines With Missing Asset Tag |
        Then The column should be sorted
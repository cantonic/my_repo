Feature: C14056 sorting views from Standard views for Order Header

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
     And I am in homepage
      
Scenario: Sorting for Order Header with required views
   Given I click on Order link
     And I click Purchase Orders Header 
      When I select view and I click on each column header to sort
            | views |
            | Acknowledged Orders |
            | Asset Pos |
            | Invoiced PO (Partial and Full) |
            | Month End - PO Summary |
            | Non-USD PO |
            | Not Exported |
            | PO In Error Status |
            | PO Never Invoiced |
            | PO on Buyer Hold |
            | PO on Currency Hold |
            | PO on Supplier Hold |
            | PO on Supplier Window Hold |
            | PO Pending Acknowledgement |
            | PO Record History |
            | PO With Missing Asset Tags |
            | PO With Pending Changes |
            | PO With Revision |
            | Transmission Failures |
            | Un-sent PO |
            | Unopened Email PO by Supplier |
        Then The column should be sorted
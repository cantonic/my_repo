Feature: C14056 sorting views from Standard views for Invoices Header

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
     And I am in homepage
      
Scenario: Sorting for Invoices Header with required views
   Given I click on Invoice link
     And I click Invoices Header 
      When I select view and I click on each column header to sort
            | views |
            | Approved Non-PO Invoices |
            | Approved PO Invoices |
            | Created by Suppliers |
            | Invoice Aging Report - 120 |
            | Invoice History Report |
            | Invoices - Current Approver |
            | Locked |
            | Month End - All Approved Inv. |
            | Month End - Invoice Summary |
            | Month End - Unpaid invoices |
            | Not Exported |
            | Pending Approval |
            | Pending Receipt |
        Then The column should be sorted
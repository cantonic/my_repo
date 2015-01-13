require "spec_helper"

module TestRails
    
	step "I am login as :username and :password" do |uname, pwd|
     step "create instance for classes"
      @login_obj.load	
      @login_obj.useMeToLogin(uname,pwd)
  end

  step "I am in homepage" do    
      @homepage.homepageheader.has_signout_link?                   
  end

  step "I click on expenses link" do 
        @homepage.expensesMenuClick()
  end

  step "I click on Requisition link" do
        @homepage.requisitionMenuClick()
  end
 
  step "I click on Order link" do
        @homepage.ordersMenuClick()
  end

  step "I click on Invoice link" do
        @homepage.invoicesMenuClick()
  end

  step "I click on Setup link" do
        @homepage.setupMenuClick()
  end

  step "I click on Inventory link" do
        @homepage.inventoryMenuClick()
  end

  step "I click on Sourcing link" do
        @homepage.sourcingMenuClick()
  end

  step "I click on Supplier link" do
        @homepage.supplierMenuClick()
  end

  step "I click on Items link" do
        @homepage.itemsMenuClick()
  end

  step "I click Expense Report Header" do    
         @expenses.expenseReportLink()
  end

  step "I click Expense Report Line" do
        @expenses.expenseLineLink()
  end

  step "I click Requisition Header" do
        @requisition.requisitionClick()
  end

  step "I click Requisition Line" do
        @requisition.requisitionLineClick()
  end

  step "I click Purchase Orders Header" do
        @order.orderHeaderClick()
  end

  step "I click Purchase Orders Lines" do
        @order.orderLineClick()
  end

  step "I click Invoices Header" do
        @invoice.invoiceHeaderClick()
  end

  step "I click Invoice line link" do
        @invoice.invoiceLineClick()
  end

  step "I click Users link" do
        @setup.usersClick()
  end

  step "I click Accural Reports link" do
        @setup.accuralReportClick()
  end

  step "I click Receive receipt link" do
        @inventory.receiveReceiptClick()
  end

  step "I click Advanced Ship Notice link" do
        @inventory.advancedShipClick()
  end

  step "I click On Hand Balance link" do
        @inventory.onHandBalanceClick()
  end

  step "I click response line link" do
        @sourcing.responseItemClick()
  end

  step "I click contracts link" do
        @supplier.contractsLinkClick()
  end

  step "I navigate to approvals tab" do        
        @approval.load       
  end

  step "I click supplier item link" do
        @item.supplierItemLinkClick()
  end

  step "I click item header link" do
        @item.itemsLinkClick()
  end

  step "I click supplier header link" do
        @supplier.supplierLinkClick()
  end

  step "I select view and I click on each column header to sort" do |table|
        @length = table.hashes.length
      table.hashes.each do |hash|
        @view_sort.selectView(hash['views'])
         sleep 5
        step "The column should be sorted"  
      end

  end

  step "The column should be sorted" do
      if @temp <= @length
          @view_sort.sortColumns()
        @temp = @temp+1
      end      
  end

  step "I select :view from view" do |view|
        @view_sort.selectView(view)
        sleep 5
  end

  step "I create new view with name :name" do |name|
       @createview.fillDetails(name)
  end

  step "I choose required fields and I click save" do      
        @createview.clickAndDrag()
        sleep 5
        @createview.clickSave()
  end

  step "The new view should be created" do
        expect(page).to have_content('View created')
  end

  step "I click export" do
        @view_sort.clickExport()
  end

  step "I should receive email without airbracks" do
        expect(page).to have_content('The data you requested will be emailed to you shortly.')
  end

  step "create instance for classes" do
       @login_obj=LoginPage.new 
       @homepage = HomePage.new
       @expenses = ExpensesContent.new
       @requisition = RequisitionPage.new
       @order = OrderPage.new
       @invoice = InvoicePage.new
       @setup = SetupMainPage.new
       @inventory = InventoryPage.new
       @sourcing = SourcePage.new
       @supplier = SupplierPage.new
       @item = ItemsPage.new
       @approval = Approvals.new
       @createview = CreateViewPage.new
       @view_sort = Sort.new
       @temp = 1; 
       
  end

   step "step1" do
    @sample = Sample.new
    @login_obj=LoginPage.new 
        @sample.load
        
        @login_obj.useMeToLogin('coupasupport','CoupaSupport1')
        sleep 5
   end

   step "step2" do
       file_path = '/home/ruadmin/First/lookup.csv'
        @sample.click()
         sleep 2

      system("'#{file_path}' 'File Upload'")
     
        # handle = page.driver.find_window("Bulk Load Lookup Values ")
        # page.driver.browser.switch_to.window(handle)
        # page.driver.browser.close

         # system(" \"#{file_path}\" \"File Upload\"")
         # sleep 5

      # okok = 'data_source[file]'
      # file_path = '/home/ruadmin/Downloads/lookup.csv'
      # attach_file okok, file_path
      # sleep 7


   end

   step "step3" do
      
   end

end

RSpec.configure { |c| c.include TestRails }
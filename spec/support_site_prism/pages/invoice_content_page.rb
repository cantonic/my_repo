require "./spec/support_site_prism/sections/invoice_secondaryheader_section.rb"



class InvoicePage < SitePrism::Page

 section :secondaryheaderinvoice, SecondaryHeaderInvoice, 'nav#secondary'


  def invoiceHeaderClick()
    secondaryheaderinvoice.invoice_link.click
    sleep 5
  end

  def invoiceLineClick()
  	secondaryheaderinvoice.invoiceline_link.click
  	sleep 5
  end


end

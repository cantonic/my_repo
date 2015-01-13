require "./spec/support_site_prism/sections/supplier_secondaryheader_section.rb"



class SupplierPage < SitePrism::Page

 section :secondaryheadersuplier, SecondaryHeaderSupplier, 'nav#secondary'


  def supplierLinkClick()
    secondaryheadersuplier.supplier_link.click
    sleep 5
  end

  def contractsLinkClick()
  	secondaryheadersuplier.contracts_link.click
  	sleep 5
  end


end

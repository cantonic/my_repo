require "./spec/support_site_prism/sections/items_secondaryheader_section.rb"



class ItemsPage < SitePrism::Page

 section :secondaryheaderitem, SecondaryHeaderItem, 'nav#secondary'


  def itemsLinkClick()
    secondaryheaderitem.items_link.click
    sleep 5
  end

  def supplierItemLinkClick()
  	secondaryheaderitem.supplier_item_link.click
  	sleep 5
  end


end

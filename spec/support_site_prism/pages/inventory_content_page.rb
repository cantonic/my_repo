require "./spec/support_site_prism/sections/inventory_secondaryheader_section.rb"



class InventoryPage < SitePrism::Page

 section :secondaryheaderinventory, SecondaryHeaderInventory, 'nav#secondary'


  def receiveReceiptClick()
    secondaryheaderinventory.receive_receipt_link.click
    sleep 5
  end
  def advancedShipClick()
  	secondaryheaderinventory.advanced_ship_notice_link.click
  	sleep 5
  end
  def onHandBalanceClick()
  	secondaryheaderinventory.on_hand_balances_link.click
  	sleep 5
  end


end
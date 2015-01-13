class SecondaryHeaderInventory < SitePrism::Section

	element :receive_receipt_link, "a[href='/receipts']"
	element :advanced_ship_notice_link, "a[href='/advance_ship_notice_headers']"
	element :on_hand_balances_link, "a[href='/inventory']"
end
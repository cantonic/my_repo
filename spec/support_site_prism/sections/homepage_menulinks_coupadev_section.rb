class HomePageMenuLinks < SitePrism::Section
	element :expenses_link, "a[href='/expense_reports/home']"
	element :setup_link, "a[href='/administration/home']"
	element :orders_link, "a[href='/order_headers']"
	element :invoices_link, "a[href='/invoices']"
	element :requisition_link, "a[href='/requisition_headers']"
	element :inventory_link, "a[href='/inventory']"
	element :sourcing_link, "a[href='/quotes/requests']"
	element :supplier_link, "a[href='/suppliers']"
	element :items_link, "a[href='/items']"
end
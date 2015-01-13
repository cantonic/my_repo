class SecondaryHeaderInvoice < SitePrism::Section

	element :invoice_link, "a[href='/invoices']"
	element :invoiceline_link, "a[href='/invoice_lines']"
end
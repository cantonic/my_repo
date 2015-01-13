class SecondaryHeader < SitePrism::Section
	element :expensereport_link, "a[href='/expense_reports']"
	element :expenselines_link, "a[href='/expense_lines']"
end
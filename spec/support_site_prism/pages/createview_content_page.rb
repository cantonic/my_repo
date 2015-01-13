class CreateViewPage < SitePrism::Page

element :view_name, '#data_table_view_name'
element :available_field, 'td:first-child .sortable.ui-sortable:first-child li:first-child'
element :selected_field, 'td:last-child .sortable.ui-sortable:last-child'
element :save_view, ".button.right.blue span:contains('Save')"

def fillDetails(view_name)
		view_name.set view_name
end


def clickAndDrag()
		@totalfields = evaluate_script("$('td:first-child li:last-child').index()+1;")
   until @totalfields == 0
      	 available_field.drag_to(selected_field)
    	 @totalfields = evaluate_script("$('td:first-child li:last-child').index()+1;")
   end
end

def clickSave()
	save_view.click
	sleep 6
end

end

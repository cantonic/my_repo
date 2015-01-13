class Sort < SitePrism::Page
    element :selectview, ".filter select[name='filter']"
    element :processImage, "img[src='/images/0.png']"
    element :expand, 'div.expand' 
    element :export, "button span:contains('Export')"
def selectView(view)
  @sort = Sort.new
  @view = view
      selectview.select(view)
      @sort.wait_until_processImage_invisible(100)
       if evaluate_script("$('div.expand').is(':visible');") == true
         expand.click
         sleep 5
       end
end

 def sortColumns()
 			@numberofcolumn = evaluate_script("$('thead th.sortable').size();")   
      puts "In view '#{@view}' , I have #{@numberofcolumn} columns to sort"
      for i in 1..@numberofcolumn
   		#@name = evaluate_script("$('thead th.sortable:nth-child(#{i})').find('span').text();").strip
   		  for k in 1..2  
         @order = evaluate_script("$('thead th.sortable:nth-child(#{i})').attr('data-dir');")
         	if @order.nil?
         		@numberofcolumn = @numberofcolumn + 1
         	end
          if @order.eql? 'ASC'
            execute_script("$('thead th.sortable:nth-child(#{i})').click();")
            sleep 10
            #@sort.wait_until_processImage_invisible(10)
            page.evaluate_script("$('thead th.sortable:nth-child(#{i})').attr('data-dir');").should == 'DESC' 
          end
          if @order.eql? 'DESC'
            execute_script("$('thead th.sortable:nth-child(#{i})').click();")
            sleep 10
            #@sort.wait_until_processImage_invisible(10)
            page.evaluate_script("$('thead th.sortable:nth-child(#{i})').attr('data-dir');").should == 'ASC'
          end
        end
        puts "In This Page Column number #{i} is perfectly sorted"
   	end
 end

 def clickExport()
      sleep 20
      execute_script("$('button span:contains(\"Export\")').click();")    
 end

end
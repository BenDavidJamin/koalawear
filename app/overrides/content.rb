
Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                     :name => "remove Bread Crumb", 
                     :replace_contents => "#content") do
"
          <%= flash_messages %>
          <%= yield %>
"
end
Deface::Override.new(:virtual_path => "spree/shared/_filters", 
                     :name => "remove_filters", 
                     :replace_contents => "code[erb-loud]:contains('form_tag')")


Deface::Override.new(:virtual_path => "spree/shared/_store_menu", 
                     :name => "remove home", 
                     :remove => "code[erb-loud]:contains('root_path')") 
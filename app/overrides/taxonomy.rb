Deface::Override.new(:virtual_path => "spree/shared/_taxonomies", 
                     :name => "taxonomy", 
                     :replace_contents => "h6", 
                     :text => "<%= t(taxonomy.name, :taxonomy => taxonomy.name) %>")


Deface::Override.new(:virtual_path => "spree/products/index", 
                     :name => "add_home", 
                     :insert_top => "[data-hook='homepage_sidebar_navigation']") do
                     "
<%= link_to t(:home), root_path %>
"
end

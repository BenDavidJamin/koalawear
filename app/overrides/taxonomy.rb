Deface::Override.new(:virtual_path => "spree/shared/_taxonomies", 
                     :name => "taxonomy", 
                     :replace_contents => "h6", 
                     :text => "<%= t(taxonomy.name, :taxonomy => taxonomy.name) %>")




Deface::Override.new(:virtual_path => "spree/shared/_taxonomies", 
                     :name => "taxonomy", 
                     :replace => "code[erb-loud]:contains(':shop_by_taxonomy')", 
                     :text => "<%= t(taxonomy.name, :taxonomy => taxonomy.name) %>")


Deface::Override.new(:virtual_path => "spree/shared/_taxonomies", 
                     :name => "add_home", 
                     :insert_top => "nav#taxonomies") do
                     "
<h6 class='taxonomy-root'><%= link_to t(:home), root_path%></h6>
"
end

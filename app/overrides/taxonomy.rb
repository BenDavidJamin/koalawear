Deface::Override.new(:virtual_path => "spree/shared/_taxonomies", 
                     :name => "taxonomy", 
                     :replace_contents => "h6", 
                     :text => "<%= t(taxonomy.name, :taxonomy => taxonomy.name) %>")


Deface::Override.new(:virtual_path => "spree/shared/_taxonomies", 
                     :name => "add_home", 
                     :insert_top => "nav#taxonomies") do
                     "
<h6 ><%= link_to t(:home), root_path, :class => 'taxonomy-root' %></h6>
"
end

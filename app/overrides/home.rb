Deface::Override.new(:virtual_path => "spree/home/index", 
                     :name => "home_image", 
                     :replace_contents => "[data-hook='homepage_products']") do
  
"
      <%= image_tag 'homepage.jpg', :class => 'home_image' %>
"
end
require "http"

# HTTP.get("http://localhost:3000/product")

### Create ###

puts "Enter an item."
item = gets.chomp

HTTP.post("http://localhost:3000/product")

### Update ###

# HTTP.patch("http://localhost:3000/any_product/1")

# ### Delete ###

# HTTP.delete("http://localhost:3000/any_product/1")

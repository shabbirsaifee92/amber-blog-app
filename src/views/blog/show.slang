h1 Show Blog
p = blog.title
p = blog.body
p
  == link_to("Back", "/blogs", class: "btn btn-light btn-sm")
  == link_to("Edit", "/blogs/#{blog.id}/edit", class: "btn btn-success btn-sm")
  == link_to("Delete", "/blogs/#{blog.id}?_csrf=#{csrf_token}", "data-method": "delete", "data-confirm": "Are you sure?", class: "btn btn-danger btn-sm")
  / == link_to("Like", "/blogs/#{blog.id}", class: "btn btn-success btn-sm", "data-method": "post")

== form(action: "/blogs/#{blog.id.to_s}/like", method: :post) do
  == csrf_tag
  == submit("Like", class: "btn btn-success btn-sm")


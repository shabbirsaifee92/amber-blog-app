- if blog.errors
  ul.errors
    - blog.errors.each do |error|
      li = error.to_s

== form(action: "/blogs/#{blog.id.to_s}", method: blog.id ? :patch : :post) do
  == csrf_tag
  .form-group
    == text_field(name: "title", value: blog.title, placeholder: "Title", class: "form-control")
  .form-group
    == text_area(name: "body", content: blog.body, placeholder: "Body", class: "form-control", size: "30x10")
  == submit("Submit", class: "btn btn-success btn-sm")
  == link_to("Back", "/blogs", class: "btn btn-light btn-sm")

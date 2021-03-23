.row
  .col-sm-11
    h2 Blogs
  .col-sm-1
    a.btn.btn-success.btn-sm href="/blogs/new" New
.table-responsive
  table.table.table-striped
    thead
      tr
        th Title
        th Body
        th Actions
    tbody
      - blogs.each do |blog|
        tr
          td = blog.title
          td = blog.body
          td
            span
              == link_to("Show", "/blogs/#{blog.id}", class: "btn btn-info btn-sm")
              == link_to("Edit", "/blogs/#{blog.id}/edit", class: "btn btn-success btn-sm")
              == link_to("Delete", "/blogs/#{ blog.id }?_csrf=#{csrf_token}", "data-method": "delete", "data-confirm": "Are you sure?", class: "btn btn-danger btn-sm")
              span = blog.likes

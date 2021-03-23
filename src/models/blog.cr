class Blog < Granite::Base
  connection pg
  table blogs

  column id : Int64, primary: true
  column title : String?
  column body : String?
  column likes : Int32, default: 0

  timestamps
end
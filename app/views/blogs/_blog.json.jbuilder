json.extract! blog, :id, :btitle, :btext, :bpoint, :bapproved, :user_id, :category_id, :sub_category_id, :created_at, :updated_at
json.url blog_url(blog, format: :json)
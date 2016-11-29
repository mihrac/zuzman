json.extract! question, :id, :qtitle, :qtext, :qpoint, :approved, :category_id, :sub_category_id, :created_at, :updated_at
json.url question_url(question, format: :json)
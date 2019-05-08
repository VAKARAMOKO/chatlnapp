json.extract! course, :id, :titre, :corps, :created_at, :updated_at
json.url course_url(course, format: :json)

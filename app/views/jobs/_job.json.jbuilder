json.extract! job, :id, :title, :description, :requirement, :email, :location, :start, :salary, :job_type, :created_at, :updated_at
json.url job_url(job, format: :json)

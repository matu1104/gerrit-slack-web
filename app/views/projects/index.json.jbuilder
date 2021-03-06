json.array!(@projects) do |project|
  json.extract! project, :id, :name, :plus_two, :plus_one, :zero, :minus_one, :minus_two, :comments, :jenkins_success, :jenkins_failure, :new_patch, :qa_approved, :product_approved, :qa_and_product_approved, :merged, :channel_name
  json.url project_url(project, format: :json)
end

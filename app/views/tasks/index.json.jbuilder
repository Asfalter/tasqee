json.array!(@tasks) do |task|
  json.extract! task, :id, :name, :description, :start_date, :finish_date, :finished_date, :finished
  json.url task_url(task, format: :json)
end

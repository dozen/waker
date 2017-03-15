json.array!(@auto_schedulers) do |auto_scheduler|
  json.extract! auto_scheduler, :id, :name, :settings, :enabled
  json.url auto_scheduler_url(auto_scheduler, format: :json)
end

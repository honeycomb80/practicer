json.array!(@rubyqs) do |rubyq|
  json.extract! rubyq, :id, :prompt_id, :group_id, :prompt1, :prompt2, :answer, :linear
  json.url rubyq_url(rubyq, format: :json)
end

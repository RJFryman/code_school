# Before

json.array(@humans) do |human|
  # your code here
end

# After

json.array(@humans) do |human|
  json.extract! human, :id, :name, :brain_type
  json.message I18n.t('human_message', name: human.name)
end

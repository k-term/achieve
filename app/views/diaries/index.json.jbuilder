json.array!(@diaries) do |diary|
  json.extract! diary, :id, :auther, :date, :content, :number
  json.url diary_url(diary, format: :json)
end

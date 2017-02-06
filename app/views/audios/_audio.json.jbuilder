json.extract! audio, :id, :user_id, :title, :description, :created_at, :updated_at
json.url audio_url(audio, format: :json)
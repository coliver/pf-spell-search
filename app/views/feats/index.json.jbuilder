json.array!(@feats) do |feat|
  json.extract! feat, :id, :name, :type, :description, :prerequisites, :prerequisite_feats, :benefit, :normal, :special, :source, :fulltext, :teamwork, :critical, :grit, :style, :performance, :racial, :companion_familiar, :race_name, :note, :goal, :completion_benefit, :multiples, :suggested_traits
  json.url feat_url(feat, format: :json)
end

class Feature
  def self.enabled?(feature_name)
    case feature_name.to_sym
    when :badge_filter
      !Rails.env.production?
    when :paywalled_search_results
      true
    when :redirect_db_id_profiles
      false
    when :redesign
      ENV.fetch("REDESIGN", false)
    else
      raise "Unknown feature name: #{feature_name}"
    end
  end
end

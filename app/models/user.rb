class User < ApplicationRecord
  def self.to_csv
    CSV.generate do |csv|
      csv << %w{ id  user_name  user_email  phone_number } 
      all.each do |user|
        csv << [ user.id, user.user_name, user.user_email, user.phone_number ]
      end
    end
  end
end

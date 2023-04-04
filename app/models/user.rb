# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def generate_token
    JWT.encode({ user_id: self.id, exp: (Time.now + 1.day).to_i }, Rails.application.credentials.secret_key_base, 'HS256')
  end

  class << self
    def find_by_token(token)
      body = JWT.decode(token, Rails.application.credentials.secret_key_base)[0]
      payload = HashWithIndifferentAccess.new body
      return nil if payload.blank?

      User.find_by(id: payload['user_id'])
    rescue
      nil
    end
  end
end

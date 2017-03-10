class User < ActiveRecord::Base

  EMAIL_REGEXP = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
                 

  validates_presence_of :email, :user_name, :password
  validates_confirmation_of :password
  validates_format_of :email, with: EMAIL_REGEXP, on: :create
  validates_uniqueness_of :email, :user_name

  validate do
    errors.add(:email, :invalid) unless email.match(EMAIL_REGEXP)
  end
end

# == Schema Information
#
# Table name: users
#
#  id                :bigint           not null, primary key
#  age               :integer
#  birthday          :datetime
#  body_weight       :integer
#  commit            :text(65535)
#  height            :integer
#  name              :string(255)      not null
#  password_digest   :string(255)      not null
#  profile_image     :string(255)
#  self_introduction :text(65535)
#  sex               :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_users_on_name  (name) UNIQUE
#

class User < ApplicationRecord
  has_secure_password
  has_many :boards, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  validates :name,
  presence: true,
  uniqueness: true,
  length: { maximum: 16 },
  format: {
    with: /\A[a-z0-9]+\z/,
    message: 'は小文字英数字で入力してください'
  }
  
  validates :password,
  length: { minimum: 8 }
  
  mount_uploader :profile_image, ImageUploader
  
   def boards
    return Board.where(user_id: self.id)
   end
end

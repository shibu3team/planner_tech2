class User < ApplicationRecord
  has_secure_password
  attr_accessor :remember_token, :activation_token
  before_save   :downcase_email
  before_create :create_activation_digest


  validates :name, presence: true, length: { maximum: 25 }, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 6..20 }, allow_nil: true
  validates :profile, length: { maximum: 140 }

  has_many :plans
  has_many :favorites
  has_many :reviews

  private

   # メールアドレスをすべて小文字にする
   def downcase_email
     self.email = email.downcase
   end

   # 有効化トークンとダイジェストを作成および代入する
   def create_activation_digest
     self.activation_token  = User.new_token
     self.activation_digest = User.digest(activation_token)
   end


end

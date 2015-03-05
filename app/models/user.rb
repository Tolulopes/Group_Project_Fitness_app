class User < ActiveRecord::Base
  scope :instructor, -> (boolean = true) { where(role: "instructor") }
  mount_uploader :image, ImageUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :bookings
  has_many :lessons, through: :bookings
  has_many :reviews

  def role?(role_to_compare)
    self.role.to_s == role_to_compare.to_s
  end

end

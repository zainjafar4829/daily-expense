class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :children, :class_name => "User", foreign_key: 'parent_id'
  belongs_to :parent, :class_name => "User", foreign_key: 'parent_id', :optional => true
  has_one :wife, :class_name => "User", foreign_key: 'husband_id'
  belongs_to :husband, :class_name => "User", foreign_key: 'husband_id', :optional => true
end

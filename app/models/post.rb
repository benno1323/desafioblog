class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy # para destruir posts con comentarios
	belongs_to :user
end

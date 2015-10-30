class User < ActiveRecord::Base
	has_secure_password
	validates :email, presence: true, uniqueness: true,
										format: {
											with:/\A[^@\s]+@([^@.\s]+\.)*[^@.\s]+\z/
										}
end
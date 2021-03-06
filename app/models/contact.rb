class Contact < MailForm::Base
	attribute :name,      :validate => true
	attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	attribute :phone
	attribute :message
	attribute :nickname,  :captcha  => true

	def headers
	{
		:subject => "TrueTech Contact",
		:to => "simon_somlai@hotmail.com",
		:from => %("#{name}" <#{email}>)
	}
	end
end

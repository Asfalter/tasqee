class Task < ActiveRecord::Base
	belongs_to :user
	has_attached_file :file
	validates :name, presence: true
	validates_attachment_content_type :file, :content_type => [ 'application/rar', 'application/zip', 'application/pdf', 'application.docx' ],
                                    notice: 'File extension not allowed'
end

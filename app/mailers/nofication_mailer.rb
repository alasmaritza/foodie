class NoficationMailer < ApplicationMailer
    default from: "no-reply@foodie.com"
    
    def comment_added
        mail(to: "bambino@mailinator.com",
        subject: "A comment has been added to your place.")
    end
end

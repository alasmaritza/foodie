class NoficationMailer < ApplicationMailer
    default from: "no-reply@foodie.com"
    
    def comment_added(comment)
        @place = comment.place
        @place_owner = @place.user
        mail(to: @place_owner.email,
        subject: "A comment has been added to your #{@place.name}")
    end
end

class ContactMailer < ApplicationMailer

  def contact_email(name, email, body)
      @name = name
      @email = email
      @body = body

      mail(from: email, subject: 'Datavase Request')
  end


end

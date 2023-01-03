class SupportMailbox < ApplicationMailbox
  def process
    return if user.nil?

    Ticket.create(user: @user, title: mail.subject, body: mail.decoded)
  end

  def user
    @user ||= User.find_by email: mail.from
  end
end

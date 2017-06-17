class GeneralMailer < ApplicationMailer
  require "date"
  default from: "seikowsky@gmail.com"

  def daily_mail
    start_date =  Date.new(2017,6,12)
    difference_in_days = Date.today - start_date
    count = difference_in_days.to_i.to_s
    @subject = "Another day avoiding Television. Day: #{count}"
    mail(to: "seikowsky@gmail.com", subject: @subject)
  end

  def checkin_oleg
      mail(to: "ogiberstein@gmail.com", subject: "Rolling Checkin - OwlMaps - Oleg")
  end

  def checkin_johannes
    mail(to: "seikowsky@gmail.com", subject: "Rolling Checkin - OwlMaps - Johannes")
  end

  def checkin_yoni
    mail(to: "Svechinskyy@gmail.com", subject: "Rolling Checkin - OwlMaps - Yoni")
  end

end

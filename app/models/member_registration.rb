class MemberRegistration
  include ActiveModel::Model

  attr_accessor :name, :position, :introduction

  def save
    ActiveRecord::Base.transaction do
      @member = Member
      Member.save
    end

    @MemberRegistration
  end

end
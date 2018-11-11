class MemberRegistrationsController < ApplicationController
  before_action :set_position, only: :new

  def new
    @member_registration = MemberRegistration.new
  end

  def create
    # serviceを呼び出す
    # validation等は今回は考慮しない
    registrationCreateService = RegistrationCreateService.new(member_registration_params)
    registrationCreateService.execute
    redirect_to members_path
  end

  private
  def set_position
    @positions = Position.all
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def member_registration_params
    params.require(:member_registration).permit(:name, :introduction, position:[])
  end
end

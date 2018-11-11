class MemberRegistrationsController < ApplicationController
  before_action :set_member_registration, only: [:edit, :update, :destroy]
  before_action :set_position, only: [:new, :edit]

  def new
    @member_registration = MemberRegistration.new
  end

  def edit
  end

  def create
    #serviceを呼び出す

    registrationCreateService = RegistrationCreateService.new(member_registration_params)
    registrationCreateService.execute
    redirect_to members_path
  end

  def update
    #serviceを呼び出す
    redirect_to members_path
  end

  def destroy
    @member.destroy
    respond_to do |format|
      format.html { redirect_to members_url, notice: 'Member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_position
    @positions = Position.all
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_member_registration
    @member = Member.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def member_registration_params
    params.require(:member_registration).permit(:name, :introduction, position:[])
  end
end

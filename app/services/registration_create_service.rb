class RegistrationCreateService
  def initialize(params)
    @name = params[:name]
    @introduction = params[:introduction]
    @position = params[:position]
  end

  def execute
    ActiveRecord::Base.transaction do
      member = Member.create(
          name: @name,
          introduction: @introduction
      )

      @position.map { |p|
        MemberPosition.create(
            member_id: member.id,
            position_id: @position[p.to_i]
        )
      }
    end
  end

  private
  attr_accessor :name, :introduction, :position
end
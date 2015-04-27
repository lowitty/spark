class AmasController < ApplicationController
  def index
    @amas = Ama.order(updated_at: :desc)
    @mentors = User.limit(3).where(:role => 'mentor')
  end
end

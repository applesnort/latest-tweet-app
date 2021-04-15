class SnapshotsController < ApplicationController
  def index
    # render plain: "i am snapshot index"
  end

  def search
    @client = Snapshot.client  # authenticates with api
    
    begin
      @twat = @client.user(params[:handle])
      @timeline = @client.user_timeline(@twat).take(10)
    rescue Twitter::Error => e
      
    end
    render "search_results"
  end
  
end

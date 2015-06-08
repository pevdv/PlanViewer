class NavigatorController < ApplicationController
  def index
    
    if params[:layout_id] != nil
      @layout = Layout.find(params[:layout_id])
      @layouts = Layout.where("floor_id = ?", @layout.floor_id)
      #render :json => @layout
    end
    
    if params[:floor_id] != nil
      @layouts = Layout.where("floor_id = ?", params[:floor_id])
      #render :json => @layout
    end
  end
end

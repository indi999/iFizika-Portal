class UploadController < ApplicationController
  # kontroler zadataka
  # other before_actions
  before_action :authenticate_user!
  before_action :set_upload, only: [:show, :edit, :update, :destroy]


  def index
    render :file => 'app\views\upload\uploadFile.html.erb'
  end
  def uploadFile
    post = DataFile.save( params[:upload])
    render :text => "File has been uploaded successfully"
  end


 def show
 end

 def new
  @upload = Upload.new
 end



end
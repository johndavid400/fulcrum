class FileAttachmentsController < ApplicationController
  before_filter :load_story, :only => [:index, :create]
  before_filter :load_new_file_attachment, :only => [:create]

  protected
  def load_story
    @story = Story.find(params[:story_id])
  end

  def load_new_file_attachment
    @file_attachment = FileAttachment.new(params[:file_attachment])
    @file_attachment.story = @story
  end

  public
  def index
    @project = @story.project
    @file_attachments = @story.file_attachments
  end

  def create
    if @file_attachment.save
      flash[:notice] = t(:file_attachment_created_successfully)
    else
      flash[:error] = t(:file_attachment_created_unsuccessfully)
    end
    redirect_to @story.project
  end

  def destroy
    session[:return_to] ||= request.referer
    @file_attachment = FileAttachment.find(params[:id])
    debugger
    if @file_attachment.destroy
      flash[:notice] = "Book deleted"
    else
      flash[:error] = "Delete error"
    end
    redirect_to session[:return_to]
  end

end

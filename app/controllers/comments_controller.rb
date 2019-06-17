class CommentsController < ApplicationController
	 before_action :set_course

  def index
    @comment = @course.comments.order('created_at asc')
    respond_to do |format|
      format.html { render layout: !request.xhr? }
    end
  end

  def create
    @comment = @course.comments.build(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      create_notification @course, @comment
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    else
      flash[:alert] = 'Check the comment form, something went wrong.'
      render root_path
    end
  end

  def destroy
    @comment = @course.comments.find(params[:id])

    if @comment.user_id == current_user.id
      @comment.destroy
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    end
  end

 private
#implementation of comment fonction
  def create_notification(post, comment)
   return if course.user.id == current_user.id
     Notification.create(user_id: course.user.id,
                        notified_by_id: current_user.id,
                        course_id: course.id,
                        identifier: comment.id,
                        notice_type: 'comment')
  end

  def comment_params
    params.require(:comment).permit(:content)
  end

  def set_course
    @course = Course.find(params[:course_id])
  end

end

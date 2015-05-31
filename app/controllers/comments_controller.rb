class CommentsController < ApplicationController
  def create
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.build(comments_params)
  	if @comment.save
  		# al usar @post automitcamente sabe que lo redirigo al post respectivo
  		# también puedo usar post_path(@post)
  		redirect_to @post, notice: "El comentario fue creado"
  	else
  		redirect_to @post, alert: "El comentario no se pudo crear!"
  	end
  end

  private
  def comments_params
  	params.require(:comment).permit(:comment)
  end
end

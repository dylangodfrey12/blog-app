class ArticlesController < ApplicationController
   def new 
      @article = Article.new
   end
   def create

   @article = Article.new(article_params)

   @article.save

   redirect_to article_path(@article)

   end
   
   def show
      @article = Article.find(params[:id])
   end
   
   def index
      @article = Article.all
   end
   
   private

   def article_params

   params.require(:article).permit(:title, :description)

   end
end
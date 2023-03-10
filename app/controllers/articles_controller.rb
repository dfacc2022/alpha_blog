class ArticlesController < ApplicationController 

   def new
        @article = Article.new
        #after creating @article, create form in new.html.erb
    end
    
    def create
       @article = Article.new(article_params)
       if @article.save
         #to give message type flash
         #for flash to be seen, go to application.html,erb
         flash[:notice] = "Article was successfully created"
         redirect_to article_path(@article)
       else
         render 'new'
       end
    end

    def show
      @article = Article.find(params[:id])
    end

    private
     def article_params
        params.require(:article).permit(:title, :description)
     end
end

#after creating a controller, go to views, create a new folder naming articles(articles was named from the table) create a new file naming new.html.erb
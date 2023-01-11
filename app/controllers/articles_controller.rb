class ArticlesController < ApplicationController
    def create
       @article = Article.new(article_params)
       @create = @article.save!
       return render json: {message: "Article created successfully"} if @create.present?
    end

    def index
        @articles = Article.all
        return render json: {data: @articles} if @articles.present?
        return render json: {message: "No articles found"} unless @articles.present?
    end

    def show
        @article = Article.find(params[:id])
        return render json: {data: @article} if @article.present?
        return render json: {message: "No article found"} unless @article.present?
    end

    def article_params
        params.permit(:title, :description, :author, :blog_active, :published_date)
    end
    
    def update
        @article = Article.find(params[:id])
        @update = @article.update!(article_params)
        return render json: {message: "Article updated successfully"} if @update.present?
    end

    def destroy
        @article = Article.find(params[:id])
        @delete = @article.destroy!
        return render json: {message: "Article deleted successfully"} if @delete.present?
    end
    def article_params
        params.permit(:title, :description, :author, :blog_active, :published_date)
    end
end

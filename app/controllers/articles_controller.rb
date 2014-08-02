class ArticlesController < ApplicationController
  include ArticlesHelper

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save

    flash.notice = "Article '#{@article.title}' Created!"

    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    flash.notice = "Article '#{@article.title}' Deleted!"

    redirect_to articles_path
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)

    flash.notice = "Article '#{@article.title}' Updated!"

    redirect_to article_path(@article)
  end
end

##@articles in an instance variable because : We want the list of articles to be accessible from both the controller and the view that we’re about to create.
#In order for it to be visible in both places it has to be an instance variable.
#If we had just named it articles, that local variable would only be available within the index method of the controller.
#In Rails’ controllers, there’s a hack which allows instance variables to be automatically transferred from the controller to the object which renders the view template.
#So any data we want available in the view template should be promoted to an instance variable by adding a @ to the beginning.

class FavoritesController < ApplicationController
  def create
    current_user.favorites.create(blog_id: params[:blog_id])
    redirect_to blogs_url, notice: "ブログをお気に入り登録しました。"
  end

  def destroy
    current_user.favorites.find_by(blog_id: params[:id]).destroy
    redirect_to blogs_url, notice: "ブログをお気に入り解除しました。"
  end
end

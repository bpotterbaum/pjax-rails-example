class BookController < ApplicationController

  def beginning
    if request.headers['X-PJAX']
      render :layout => false
    end
  end

  def middle
    if request.headers['X-PJAX']
      render :layout => false
    end
  end

  def end
    if request.headers['X-PJAX']
      render :layout => false
    end
  end

end

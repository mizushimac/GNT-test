class ErrorsController < ApplicationController
  layout 'errors'

  %w(404 422 500).each do |exception_method|
    define_method "#{exception_method.to_s}" do
      render "#{exception_method}", status: exception_method
    end
  end
end

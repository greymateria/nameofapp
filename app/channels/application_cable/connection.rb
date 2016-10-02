# used to run any sort of code before the connection between a user and the server is established
module ApplicationCable
  class Connection < ActionCable::Connection::Base
  	identified_by :current_user

  	def connect

    end

    def disconnect
      self.current_user = find_verified_user
    end

    protected

      def find_verified_user
        if verified_user = request.env['warden'].user
          verified_user
        else
          reject_unauthorized_connection
        end
      end
  end
end

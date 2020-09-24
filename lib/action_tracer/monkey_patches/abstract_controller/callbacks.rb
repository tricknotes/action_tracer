# frozen_string_literal: true

module ActionTracer
  module MonkeyPatches
    module AbstractController
      module Callbacks
        def process_action(*args)
          ActionTracer::Request.new(self).log do
            super
          end
        end
      end
    end
  end
end

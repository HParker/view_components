# frozen_string_literal: true

module Primer
  module Alpha
    # BorderBoxHeader: used inside the BorderBoxComponent to render its header slot
    # Optional title slot
    # @accessibility
    # When using header.title, the recommended tag is a heading tag, such as h1, h2, h3, etc.
    class BorderBoxHeader < Primer::Component
      # Optional Title.
      #
      # @param system_arguments [Hash] <%= link_to_system_arguments_docs %>
      renders_one :title, lambda { |**system_arguments|
        system_arguments[:tag] = :div
        system_arguments[:classes] = class_names(
          "Box-title",
          system_arguments[:classes]
        )

        Primer::BaseComponent.new(**system_arguments)
      }

      # @example default use case
      #
      #   <%= render(Primer::Alpha::BorderBoxHeader.new) do %>
      #     Header
      #   <% end %>
      #
      # @example with title
      #   <%= render(Primer::Alpha::BorderBoxHeader.new) do |h| %>
      #     <% h.title do %>I am a title<% end %>
      #   <% end %>
      #
      # @param system_arguments [Hash] <%= link_to_system_arguments_docs %>
      def initialize(**system_arguments)
        @system_arguments = system_arguments
        @system_arguments[:tag] = :div
        @system_arguments[:classes] = class_names(
          "Box-header",
          system_arguments[:classes]
        )
      end
    end
  end
end

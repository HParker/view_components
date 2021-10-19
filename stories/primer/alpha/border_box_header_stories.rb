# frozen_string_literal: true

require "primer/alpha/border_box_header"

class Primer::Alpha::BorderBoxHeaderStories < ViewComponent::Storybook::Stories
  layout "storybook_preview"

  story(:default) do
    content do
      "Header"
    end
  end

  story(:with_title) do
    content do |component|
      component.title { "Title" }
    end
  end
end

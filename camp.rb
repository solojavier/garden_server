require 'camping'

Camping.goes :GardenServer

module GardenServer
  module Models
  end

  module Controllers
    class Index
      def get
        render :index
      end
    end
  end

  module Helpers
  end

  module Views
    def layout
      html do
        head do
          title 'Garden Server'
          link rel: 'stylesheet', type: 'text/css',
          href: '/styles.css', media: 'screen'
        end
        body do
          h1 'Garden Server'

          div.wrapper! do
            self << yield
          end
        end
      end
    end

    def index
      p do 
        text 'Welcome to '
        a 'Javier', href: 'https://www.jvrc.ca'
        text '\'s self-hosted garden running with '
        a 'Miren', href: 'https://miren.dev'
        text ' in a '
        a 'Midstack', href: 'https://midstack.com'
        text ' virtual machine.'
      end

      p do
        text 'Currently hosting Ruby demo apps, check '
        a 'this article', href: 'https://www.rubyforum.org/'
        text ' for more information.'
      end

      h2 'Hosted apps'

      table do
        tbody do
          ul do
            li do
              a 'camping-demo.gardenserver.com', href: 'https://camping-demo.gardenserver.com'
              text ' ('
              a 'source code', href: 'https://github.com/solojavier/garden_server'
              text ')'
            end
            li do
              a 'hanami-demo.gardenserver.com', href: 'https://hanami-demo.gardenserver.com'
              text ' ('
              a 'source code', href: 'https://github.com/solojavier/hanami-demo'
              text ')'
            end
            li do
              a 'bridgetown-demo.gardenserver.com', href: 'https://bridgetown-demo.gardenserver.com'
              text ' ('
              a 'source code', href: 'https://github.com/solojavier/bridgetown-demo'
              text ')'
            end
          end
        end
      end
    end
  end
end


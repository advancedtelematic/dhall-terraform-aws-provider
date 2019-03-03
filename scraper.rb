require 'httparty'
require 'nokogiri'
require 'pry'

def resource_link?(link)
  link.attributes['href'].value.include?('/docs/providers/aws/r/')
end

def resources
  base_url = 'https://www.terraform.io'

  page = HTTParty.get(base_url + '/docs/providers/aws/r/instance.html')

  doc = Nokogiri::HTML(page)

  all_links = doc.search('.docs-sidenav li ul.nav-visible li a')
  # docs-sidebar > div > ul > li:nth-child(7) > ul > li:nth-child(1) > a

  all_resources = all_links.select { |l| resource_link?(l) }
  all_resources.map do |r|
    { link: r.attributes['href'].value,
      name: r.children.text
    }
  end
end

pry.inspect

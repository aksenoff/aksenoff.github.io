# Run after `bundle exec jekyll build` to catch missing pages and assets.
require "rexml/document"

%w[index.html ru/index.html css/pixyll.css feed.xml sitemap.xml CNAME].each do |path|
  file = File.join("_site", path)
  abort "Missing or empty output: #{file}" unless File.file?(file) && File.size?(file)
end

abort "Custom domain changed" unless File.read("_site/CNAME").strip == "blog.aksenov.in"
%w[feed.xml sitemap.xml].each do |path|
  REXML::Document.new(File.read(File.join("_site", path)))
end
%w[index.html ru/index.html].each do |path|
  html = File.read(File.join("_site", path))
  abort "Missing stylesheet in #{path}" unless html.include?("/css/pixyll.css")
  abort "Unrendered Liquid in #{path}" if html.match?(/\{%|\{\{/)
end
puts "Site smoke checks passed."

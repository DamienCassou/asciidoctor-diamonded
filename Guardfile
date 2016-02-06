Bundler.require(:default)

guard 'shell' do
  watch(/slim\/html5\/.+\.slim$/) {|m|
    `make html`
  }
  watch(/.+\.adoc$/) {|m|
    `make html`
  }
end

guard 'livereload' do
  watch(%r{builds/.+\.html})
end

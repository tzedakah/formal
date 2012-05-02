guard 'jasmine-node' do
  watch(%r{^spec/(.+).spec\.(js|coffee)})  { |m| "spec/#{m[1]}.spec.#{m[2]}" }
  watch(%r{^lib/(.+)\.(js|coffee)})        { |m| "spec/#{m[1]}.spec.#{m[2]}" }
  watch(%r{spec/spec_helper\.(js\.coffee|js|coffee)}) { "spec" }
end

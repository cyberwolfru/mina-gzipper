desc "Compresses all .js and .css files under the assets path"
task :gzip_assets do
  queue %{
    echo "-----> Compressing assets"
    cd "#{deploy_to}/#{current_path}/public/assets"
    find . \\( -name "*.css" -o  -name "*.js" \\) -exec test ! -e {}.gz \\; -print0 | xargs -r -P8 -0 gzip --keep --best --quiet
  }
end

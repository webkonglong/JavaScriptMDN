
List<Map> arrayCode = [{
  'name': 'Webpack-Plugin',
  'code': """
    class InjectTitlePlugin {
      constructor (options) {
        this.options = options
      }
    
      apply (compiler) {
        compiler.plugin('emit', (compilation, callback) => {
          const asset = compilation.assets['index.html']
          let content = asset.source()
          content = content.replace('网站title', this.options.title)
          content = content.replace('网站favicon', this.options.favicon)
          compilation.assets['index.html'] = new RawSource(content)
          callback()
        })
      }
    }
   """
}];
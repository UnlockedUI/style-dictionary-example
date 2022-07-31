const StyleDictionaryPackage = require('style-dictionary');


// Format token names by removing type & prefix as the
// unlocked tokens only include colour, not recommended for 
// more complex token formats, but a good plug and play
// example to get you started!

StyleDictionaryPackage.registerFormat({
  name: 'javascript/module-flat/tailwind',
  formatter: function({dictionary, file}) {
    return StyleDictionaryPackage.formatHelpers.fileHeader({file}) +
      'module.exports = ' +
      '{\n' + dictionary.allTokens.map(function(token) {
        let name = (token.name.substring(token.type.length))
        let camelName = name.charAt(0).toLowerCase() + name.slice(1)
        let desc = token.description ? token.description : 'No description'
        return `  ${camelName}` + ': ' + `${JSON.stringify(token.value)}`  + ', // ' + `${desc}`;
      }).join('\n') + '\n}'
  },
});

module.exports = {
  source: ['input/**/*.json'],
  platforms: {
    js: {
      transformGroup: 'js',
      buildPath: 'dist/js/',
      files: [
        {
          format: 'javascript/module-flat/tailwind',
          destination: 'tokens.js',
          options: {
            outputReferences: true
          }
        }
      ]
    }
  }
}

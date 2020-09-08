# Idecoder gem

[![Gem Version](https://badge.fury.io/rb/idecoder.svg)](http://badge.fury.io/rb/idecoder)

Idecoder was created for developers building web applications with coding editors. Idecoder.js provides a plugin that gives the developer a screen inside their own app 
to give the users a way to develop codes.

## Installation

Add this line to your application's Gemfile:

    gem 'idecoder'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install idecoder
    
## Usage
Simply add the `render_idecoder` helper method to your Rails layout or to any specific page you wish.

<pre>
  &lt;html>
  &lt;head>...&lt;/head>
  &lt;body>
    &lt;h1>My Content&lt;/h1>
    ...
    &lt;%= render_idecoder %>
  &lt;/body>
  &lt;/html>
</pre>

To add options to the Idecoder plugin, simply pass them as a _Hash_ to the helper method:

<pre>
  # Switching to Haml
  %html
    %head
      ... something ...
    %body
      %h1 Any content
      ... something ...
      
      = render_idecoder {language: 'sql', read_only: 'false'}
</pre>

If you wish to have Idecoder in your production and/or staging environment, pass the last argument of `false`:

<pre>
  = render_idecoder {language: 'ruby', read_only: 'false'}, <i style='color: #c00'>false</i>
</pre>

### Options

| Value    | Default  | Description |
|----------|----------|------------------------------------------|
| language | ruby | See Language Options List |
| theme | monokai | See Themes Options List |
| height | 300px | Canvas height |
| width | 90% | Canvas width |
| border | '1px solid lightgray' | Border style |
| read_only | true | Does not allow the user to make changes in databases |

### Language Options

| Value    | Description |
|----------|------------------------------------------|
| abap | ABAP Language |
| asciidoc | AsciiDoc Language  |
| c_cpp | C / C++  |
| coldfusion | Cold Fusion  |
| csharp | C Sharp  |
| css | CSS  |
| dart | Dart Language  |
| dot | .Net  |
| haml | HAML  |
| java | Java Language  |
| javascript | Javascript  |
| json | Json  |
| objectivec | Objective C  |
| perl | Perl  |
| pgsql | Language for PostgreSQL  |
| php | PHP  |
| python | Python Language  |
| ruby | Ruby Language  |
| sql | SQL Scripts  |
| typescript | TypeScript  |
| xml | XML  |
| yaml | YAML  |


### Theme Options

| Value    | Description |
|----------|------------------------------------------|
| ambiance | Ambiance |
| chaos | Chaos |
| chrome | Chrome |
| clouds | Clouds |
| clouds_midnight | Clouds Midnight |
| cobalt | Cobalt |
| crimson_editor | Crimson Editor |
| dawn | Dawn |
| dreamweaver | Dreamweaver |
| eclipse | Eclipse |
| github | Github |
| idle_fingers | Idle Fingers |
| kr | KR |
| merbivore | Merbivore |
| merbivore_soft | Merbivore Soft |
| mono_industrial | Mono Industrial |
| monokai | Monokai |
| pastel_on_dark | Pastel On Dark |
| solarized_dark | Solarized Dark |
| solarized_light | Solarized Dark |
| textmate | TextMate |
| tomorrow | Tomorrow |
| tomorrow_night | Tomorrow Night |
| tomorrow_night_blue | Tomorrow Night Blue |
| tomorrow_night_bright | Tomorrow Night Bright |
| tomorrow_night_eighties | Tomorrow Night Eighties |
| twillight | Twillight |
| vibrant_ink | Vibrant Ink |
| xcode | XCode |

**Dependencies**

Marx.Idecoder has a dependency on:
1. jQuery version >= 1.10.x
2. JQuery Ace Rails  1.0.1


## Contributing

1. Fork it ( https://github.com/popolin/idecoder/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

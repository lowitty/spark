Installation issues/solution
------

#### 1. When run bundle install, may met error:
> Gem::RemoteFetcher::FetchError: Errno::ECONNRESET: Connection reset by peer - SSL_connect (https://rubygems.org/gems/minitest-5.6.0.gem)

For RVM & OSX users

  1. Make sure you use latest rvm:
  	`rvm get stable`

  2. Update certificates:
    `rvm osx-ssl-certs update all`

  3. Update rubygems:
    `rvm rubygems latest`

If the issue still there, it maybe because you are in China's network and Chinese gov stop the connection.
You can use a VPN or just update the source in Gemfile:
`source 'http://rubygems.org'`
and run `bundle install` may fix the issue.



####2. when run bundle install, may met error:

> An error occurred while installing nokogiri (1.6.6.2), and Bundler cannot continue.
Make sure that `gem install nokogiri -v '1.6.6.2'` succeeds before bundling.

> checking for main() in -llzma... yes
>
> checking for xmlParseDoc() in libxml/parser.h... no

> checking for xmlParseDoc() in -lxml2... no

> checking for xmlParseDoc() in -llibxml2... no


It may because there are something wrong with your libxml lib. If you are using Mac and brew, , just run:

`brew unlink libxml2`
`brew install libxml2 libxslt libiconv`

Will solve the issue.


If still met the issue, install nokogiri with specified lib path:

`gem install nokogiri -v '1.6.5' -- --use-system-libraries --with-xml2-include=/usr/include/libxml2 --with-xml2-lib=/usr/lib`


# Oargun

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'oargun'
```

You must first define the constant `RDF_VOCABS` like so:

```ruby
RDF_VOCABS = {
  geonames:    { prefix: 'http://sws.geonames.org/', strict: false, fetch: false },
  lcsh:        { prefix: 'http://id.loc.gov/authorities/subjects/', strict: false, fetch: false },
  lcnames:     { prefix: 'http://id.loc.gov/authorities/names/', strict: false, fetch: false },
  aat:         { prefix: 'http://vocab.getty.edu/aat/', strict: false, fetch: false }
}
```

# Loris

Pipeline for importing, searching and notifying about (RIS) documents.

## Installation

```
git clone https://github.com/lhm/loris.git
bundle install
```

Needs Elasticsearch installed.

## Usage

bin/import consumes line based JSON on stdin and imports as is into the
'loris' index on Elasticsearch running on localhost:9200.

```
cat path/to/json | bin/import
```

## TODO

* pass primary key as argument, and don't import if doc exists
* process ES response, and output only created document (not updated
  ones)

## Contributing

1. Fork it ( https://github.com/lhm/loris/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

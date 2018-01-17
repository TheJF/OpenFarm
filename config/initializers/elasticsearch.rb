ENV["ELASTICSEARCH_URL"] ||= "http://localhost:9200"

Searchkick.client_options = {
  retry_on_failure: true
}

json.array!(@folios) do |folio|
  json.extract! folio, :id, :folio, :expiration
  json.url folio_url(folio, format: :json)
end

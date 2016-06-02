module CmeFixListener
  class HistoryResponseHandler < ResponseHandler
    def handler_headers(parsed_headers, _raw_headers)
      @token = parsed_headers['token']
    end

    def body_error_message
      "CME response had errors when requesting history for account id #{account_id}"
    end
  end
end

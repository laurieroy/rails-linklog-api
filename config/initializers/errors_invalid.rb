class JsonapiErrorsHandler::Errors::Invalid
	# overwrite serializable_hash to have detail for error, thanks to denialtorres

	def serializable_hash
		errors_array = []
		errors.to_h&.each do |error|
			errors_array << {
				status: status,
				title: title,
				detail: "#{error[0]} #{error[1]}",
				source: { pointer: "/data/attributes/#{error[0]}" }
			}
		end

		errors_array
	end
end
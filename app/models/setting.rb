class Setting < ApplicationRecord
	enum :when_send_notification => {:'diariamente' => 1, :'semanalmente' => 7, :'mensalmente' => 30}
end

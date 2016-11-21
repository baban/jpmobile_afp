module Jpmobile
  module RequestWithMobile
    def android_feature_phone?
      mobile and mobile.android_feature_phone?
    end
  end

  module Mobile
    DEFAULT_CARRIERS.unshift "AndroidFeaturePhone"
    Jpmobile::Mobile.carriers = DEFAULT_CARRIERS

    class AbstractMobile
      def android_feature_phone?
        false
      end
    end

    class AndroidFeaturePhone < SmartPhone
      # Android Feature Phone Device User Agents
      AFP_DEVICES = [
        # AU : 2015, Summer Model
        /SHF31/, # AQUOS K
        /SHF32/, # AQUOS K
        # AU : 2016, Winter Model
        /KYF32/, # かんたんケータイ KYF32
        /SHF33/, # AQUOS K
        # DOCOMO : 2015, Summer Model
        /SH-06G/, # AQUOSケータイ
        /F-05G/,  # ARROWS ケータイ
        # DOCOMO : 2015, Winter Model
        /SH-03H/,
        # DOCOMO : 2016, Winter Model
        /F-02J/,  # らくらくホン F-02J
        /SH-01J/, # AQUOS ケータイ
        /P-01J/,  # P-smart ケータイ
      ]

      USER_AGENT_REGEXP = Regexp.new(AFP_DEVICES.map(&:to_s)*'|')

      def android_feature_phone?
        true
      end
    end
  end
end

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
        /SHF31/,
        /SHF32/,
        /SH-06G/,
        /F-05G/,
      ]

      USER_AGENT_REGEXP = Regexp.new(AFP_DEVICES.map(&:to_s)*'|')

      def android_feature_phone?
        true
      end
    end
  end
end

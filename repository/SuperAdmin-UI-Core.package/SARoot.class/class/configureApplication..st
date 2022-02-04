seaside
configureApplication: application
  | filter exceptionHandlerAttribute |
  application configuration addParent: SASystemConfiguration instance.
  application preferenceAt: #'sessionClass' put: self defaultSessionClass.
  application exceptionHandler: SAProductionWalkbackErrorHandler.
  application configuration addParent: WAEmailConfiguration instance.
  application configuration
    at: #'userLockSeconds' put: 600;
    at: #'smtpServer' put: '';
    at: #'smtpPort' put: 587;
    at: #'smtpUsername' put: '';
    at: #'smtpPassword' put: '';
    at: #'reCaptchaSiteKey' put: '';
    at: #'reCaptchaSecretKey' put: ''.
  ^ application
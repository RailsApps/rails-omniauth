OmniAuth.config.allowed_request_methods = [:post, :get]

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :openid_connect,
    name: :openid_connect,
    issuer: "https://catchandrelease-dev.fusionauth.io",
    discovery: true,
    scope: [:openid, :email],
    response_type: :code,
    client_options: {
      identifier: ENV["FUSIONAUTH_CLIENT_ID"],
      secret: ENV["FUSIONAUTH_CLIENT_SECRET"],
      redirect_uri: "http://localhost:3000/auth/openid_connect/callback",
      scheme: "https",
      host: "catchandrelease-dev.fusionauth.io",
      port: 443,
    },
    provider_ignores_state: Rails.env.development?
end

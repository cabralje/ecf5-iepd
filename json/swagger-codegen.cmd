@echo ON
REM Available languages: [ada, akka-scala, android, apache2, apex, aspnetcore, bash, csharp, clojure, cwiki, cpprest, csharp-dotnet2, dart, elixir, eiffel,
REM erlang-server, finch, flash, python-flask, go, go-server, groovy, haskell-http-client, haskell, jmeter, jaxrs-cxf-client, jaxrs-cxf, java, inflector,
REM jaxrs-cxf-cdi, jaxrs-spec, jaxrs, msf4j, java-play-framework, jaxrs-resteasy-eap, jaxrs-resteasy, javascript, javascript-closure-angular, java-vertx,
REM kotlin, lua, lumen, nancyfx, nodejs-server, objc, perl, php, php-symfony, powershell, pistache-server, python, qt5cpp, r, rails5, restbed, ruby, rust,
REM rust-server, scala, scalatra, scalaz, php-silex, sinatra, slim, spring, dynamic-html, html2, html, swagger, swagger-yaml, swift4, swift3, swift, tizen,
REM typescript-aurelia, typescript-angular, typescript-angularjs, typescript-fetch, typescript-jquery, typescript-node, undertow, ze-ph]

SET JAR=C:\Users\JamesECabral\git\swagger-codegen\modules\swagger-codegen-cli\target\swagger-codegen-cli.jar
SET SWAGGER_FILES=(*.openapi.json)
SET LANGS=(aspnetcore,html,java)

FOR %%L IN %LANGS% DO FOR %%F IN %SWAGGER_FILES% DO java -jar %JAR% generate -i %%F -l %%L -o codegen/%%L/%%F
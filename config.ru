$stdout.sync = true

use Rack::Static,
  :urls => ["/css/basic.css", "/js/NLPortal.js.js", "/js/refresh.min.js", "/spec", "/images/banner.jpg", "/images/da13.png", "/images/favicon.png", "/css/bootstrap.css","/css/icomoon.css","/css/jquery.mCustomScrollbar.css","/css/prettyPhoto.css","/css/scrolbar.css","/css/toggle-panel.css"],
  :root => "."

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('home.html', File::RDONLY)
  ]
}


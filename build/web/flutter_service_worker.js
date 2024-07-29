'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "51d89eba429ac3ba2cf043fcc94f360f",
"version.json": "9b818ca9511483c901bed1545384376c",
"index.html": "6a981b4d9f55fc4bc7fff9d4f4d5e8ac",
"/": "6a981b4d9f55fc4bc7fff9d4f4d5e8ac",
"main.dart.js": "3c12798c4459e9f0a0da6e8e9c6fb0bd",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "e2b9103aaafaf8ed9f90576c9d9a1341",
"assets/AssetManifest.json": "b060d6190c1f102131324573e1bd2b76",
"assets/NOTICES": "bf2fb0fb5c1ab569355dbfedd0c1a943",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/AssetManifest.bin.json": "42b7d8857c20b01a4ca75073bc5cb765",
"assets/packages/fluttertoast/assets/toastify.js": "56e2c9cedd97f10e7e5f1cebd85d53e3",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "18a928ae851f7443c5466827ed9e8358",
"assets/fonts/MaterialIcons-Regular.otf": "1c26451afb9df8aac0239f60efee3d2b",
"assets/assets/pump_icon.png": "964d16a8ed3b00f67df20d019405c6cb",
"assets/assets/splash_page_bg.png": "508ad865078cd20742fdbdaaa5b51a47",
"assets/assets/coin_svg.svg": "1cb770c9f39d532d68f45fd843936330",
"assets/assets/telegram.png": "721bbc7f0e88f2407899563fd7d06afc",
"assets/assets/battery.png": "892e9898bb17670dbef06a3d84949e55",
"assets/assets/battery_add_icon.png": "479881f318916fb618a4919697c7f525",
"assets/assets/coin_icon.png": "5996177385a2298ee97d53537f450294",
"assets/assets/instagram.png": "8076e75ac03c921604a53d65bd4a6bc0",
"assets/assets/Rectangle_card.png": "bd1d62d23ca3a59456207ffa76abec15",
"assets/assets/boost.png": "738fd72709961b94e675cb4d0ea46b5d",
"assets/assets/energy.png": "6063b9d1d8850e414ae2c0eb4513a0ef",
"assets/assets/more_botton.png": "a96543548c188cbf014f5639de0fb186",
"assets/assets/tap.png": "7edc31ea23b87bfcd5473b6e66610e05",
"assets/assets/Vector.png": "c6f79c5e2dc0fc004f66616d288b4219",
"assets/assets/refferal_tab_icon.png": "029fdd1c5822166d5e3e9a7e3472fb05",
"assets/assets/get_it_botton.png": "be8cd1e68b3e7d3129019e5a354f3dcc",
"assets/assets/battery_icon.png": "1b46dd4cec92127304b1df4b0f9c0c75",
"assets/assets/hand_icon.png": "9126fb5db0d7d4d2e139f50ce2efb1ca",
"assets/assets/bottom_bar.png": "089cf626c036a26e348c5403359f324c",
"assets/assets/splash_dog_img.png": "bc3c68594f683fec6b9a20eacdbe62e9",
"assets/assets/next_icon.png": "13dbbbea7c2f28ab7eee8065dcbfb172",
"assets/assets/tap_coin.png": "b0c7d15eb6c893481a68fe6430437774",
"assets/assets/speed_icon.png": "f1dd966e212217b5b113de86bc275482",
"assets/assets/stats_tab_icon.png": "eb147e8c758585d78462f4fb4f18c783",
"assets/assets/energy_icon.png": "9dcde1e4d3946039eda9571f5d6884b8",
"assets/assets/empty_box.png": "27c6c5121187b0fcc3040aa5353abee4",
"assets/assets/boost_tab_icon.png": "fce0a99b9ae1ebbde5f3422bba6320b3",
"assets/assets/task_tab_icon.png": "c669f3ac6580a8f48c5f441f31601f4c",
"assets/assets/task_tag_img.png": "be2a2e97e229adc71106f369fe348708",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}

'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "9b818ca9511483c901bed1545384376c",
"index.html": "ac9a3e74e4a7d6fa3f9ec96c194291be",
"/": "ac9a3e74e4a7d6fa3f9ec96c194291be",
"main.dart.js": "adaf05b1608e540c5e3ece633d5ee6d2",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "e2b9103aaafaf8ed9f90576c9d9a1341",
"assets/AssetManifest.json": "b8bc818b13d5edb270c2250f387acf69",
"assets/NOTICES": "602029852ff5df675539663028855dfd",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "06af8e1fc037c310cae924f692b323f0",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/AssetManifest.bin": "7959cb3c28cee15d6e08698c45d9d419",
"assets/fonts/MaterialIcons-Regular.otf": "0047eeae87bd1033dbdb84b45931e5dc",
"assets/assets/headphones.png": "5738f273c1e5acf8dd1eb26101dd8761",
"assets/assets/check.png": "c87ba8c858cdcf41583800e00f1a62bc",
"assets/assets/school.png": "2d733718bd4cb4db180f3cfb42fb9bb8",
"assets/assets/company_logo.png": "e70ee7b97018b850a387b37416aca421",
"assets/assets/kotlin_icon.png": "9135fb83b906209468a6ad9e8e4b2cbc",
"assets/assets/instagram.png": "0b6b3c8d2c74fc2e0be8f5d940ec1e14",
"assets/assets/sql_icon.png": "a39c72c95b5ec6ac3e9f73da58ba1ead",
"assets/assets/python_icon.png": "54ecc6329a664e539e48cca96a479d43",
"assets/assets/smc_logo.jpeg": "e28fa76878106abb35b9918aea7aa668",
"assets/assets/qthrust_logo.jpeg": "5ba7b24695811dbc7c422d0ffdb57483",
"assets/assets/programmer.png": "89e71478336aa43c02c4435d338ca5c1",
"assets/assets/github.png": "1b9b9f71269e504156ce9d89a00f2551",
"assets/assets/coffee-cup.png": "411b263df281237e77bba3b2ea7195bb",
"assets/assets/traveling.png": "1d849f6427010611aa269fce36c79ce8",
"assets/assets/smartphone.png": "07c28484887d1e8f958e7975763a2d2b",
"assets/assets/right-arrow.png": "af962c843656925a1a2a4640784e7ad5",
"assets/assets/user_about.JPG": "081a3e49f1caac762189f6ada931418d",
"assets/assets/graduate_icon.png": "0edc2c24bc98d1772e5199f7bdfb2f5a",
"assets/assets/flutter_icon.png": "df1d84f812ed8f3a1db0efd31f6e365b",
"assets/assets/wave.png": "ecad7eeeedb8caa1e5f1add7f300b742",
"assets/assets/home_bg.png": "11bb5cc1b59fbd8126c9d6975ed3cb6b",
"assets/assets/linkedin.png": "fd0d5546fdbdc85c76c4372a0d51f1bc",
"assets/assets/money.png": "a0e55fcb44888168d0193a8eeffa62ee",
"assets/assets/golang_icon.png": "cf0028b7245758e72d461917f058ee7d",
"assets/assets/computer.png": "2eb00b636957129d319c6c195f7c475d",
"assets/assets/youtube.png": "8f8bc2286e823d24d028e4c2b7ce754d",
"assets/assets/swift_icon.png": "d1271ffddd2f696890494fbc2660f119",
"assets/assets/main_image.png": "2ff0075afb846dc6a5002d20daaee24d",
"assets/assets/capermint.png": "55bacfc38b655fad97dffc1f79be2cb5",
"assets/assets/alpha_lion.jpeg": "1ea2a79d9359657961b545bc75cefa76",
"assets/assets/sun.png": "8bd5a2452fd617060970113d00c70b75",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
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

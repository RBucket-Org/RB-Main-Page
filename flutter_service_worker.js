'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/COMMIT_EDITMSG": "8882df942a193a5eea5e9a92700903ba",
".git/config": "538acbd0bf5716f3ea44ab039dfec663",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "f3b524cbed7a30ad9bcbd2f6ae0733f3",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "9e21fe504596ec93e91bf816844e12a9",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "15b90afc5c66e208e8a5600d33995792",
".git/logs/refs/heads/rb_ping": "ef341dce32674fcf1b9b0e47537b2b24",
".git/logs/refs/remotes/origin/rb_ping": "3605f1c4c6e7b04bf96ef5d7a43c6a0e",
".git/objects/01/8327cc41957d28d85eab1b7e4ac4be2f37ee09": "4c195e7596eb6b3f6c5d08245cde2809",
".git/objects/0a/3d6cba7ad1ff939e1592608cee60fa36ea3996": "701cec093be7847b6160b984c708475e",
".git/objects/0a/5c7b98dd00b95c8ffb7f9d49e91cfd585c1d15": "0f7015b9ec3d6b0d6ab69576f75803f6",
".git/objects/0d/0df08f7c3e147a8ae36017cf81a96e35b73717": "106e868f28a72727fb6fb0fa71123633",
".git/objects/11/9c070f3c7d76ea22ff1e98bfbe7cb4380b953c": "75c5b998527a19bdd4748ab603249cab",
".git/objects/22/ff560978d4fe9d7619ce1e64eb62a7363b9c52": "a2258800955f492174d3723357ae544c",
".git/objects/23/c0986e1fabcb7185c2a0ad4de47b961608028e": "a45196f63ebc2718d60efb7dbc4c8d41",
".git/objects/24/b1f14dd348b07c9b8373758bde9ac14d16fd92": "dbf45d6c044044561758a334420e9569",
".git/objects/27/3df1bb8879bfedb7decc9d343b362fa58272da": "c376038512f86d6fe386976618808791",
".git/objects/2d/cf3542c874e33cd8ab86ceb6f0ec444228aa78": "66baad0ae5d874f09b6eee790095bc65",
".git/objects/2e/b96223282bbe09178d894090d5161041c2c59a": "48b5f1c49c2eda0dfe6deb2bfb1a73be",
".git/objects/30/fa70d3757ee8eb0ac728622e9c521ef486e979": "bb8ff90beb896ab9422dbd2408382c0f",
".git/objects/32/46ad559eeae0370195978eaed83f1053ee13fd": "a043dbc0a0bda96ce2127799ccc27506",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/4a/8411d0248896a48ce8f7e6ba6d1548b86c3031": "e3c1af9bb4429e79266c6085e88ab012",
".git/objects/4e/89617a3696bd10c155ec378f4a65a9f89e9e3a": "d8056e20bae90d092b619c895129e982",
".git/objects/58/8bad36d2e75c8fb17333f8d519a07f74a86fdd": "44b0b65bc6048edb8a5913a7796bb95f",
".git/objects/62/926f79243c7505851af75633ab8a77c680f1e2": "a197768fad7b73e8bcb4c2c8ad2ee3d9",
".git/objects/64/2bd7c2956be744f024813913d5cf854af82681": "c2877c7983a49477c181fa3445f4f2c5",
".git/objects/68/aae67168aa3609e89eceee46d2ff772d43523e": "74df9de5e47cb8483f12253ec657048d",
".git/objects/76/8651b2e249c2517c7b37bdbeea0a5d8bfbb707": "495b1c4fefa633f6afe4dc5840ebe18f",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/7c/7cfa2e6fa890f414c220893bde6eeb5e85b70e": "fd242f71dda2042100b1987ef9d7c2a2",
".git/objects/7f/43f4c729be8597a03942fca87056611332c897": "04b10958c8144c299330873b76b679d7",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/93/7e07b73e632ba74ff7e5229e8ee63d190a2802": "02d1eadeec30d018db8e356fa63e5fa2",
".git/objects/94/587708a1c04cabf69b918e13c0c75ede1d1189": "38b137bdbc3d27359a81451c8c495c69",
".git/objects/97/1bff8ca6607e1e78bfeb26c73db580486b0917": "89bdaf27f524ff491b1c6dd581c6c548",
".git/objects/98/523b112f7e2944358a7379ff90551d4fa1be9d": "f0f6769328266a1fd3c6b33b13bf4dbf",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a3/c25f76dca75c22253079f53101a73a87ab9bdb": "2dbc6bd34486e955dc2e564e47826819",
".git/objects/a4/bd2ab2312ffdf010b87cab2211b94d3ed09517": "00a84bd79cbe9f7af6b2126d7b489329",
".git/objects/a8/beffd3ad4fe54d6cabccf83a05477d6a986cd0": "6677888e4a051c7838b5b240c09f0981",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/ab/4109948591dc720859ae0f7f2a0d9a53a32df3": "426b2a9a07b1eb9feb2924b7b6d57ea1",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/0b198c61cc948b90bfdc0b274bba85b8c04aea": "5d4e5cee13d304ce45bb58da47244e52",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/b9/db6050278dab01f2587bf7e57d524b98c7b312": "1a291719b92cd945b5373299d376264e",
".git/objects/ba/3b147c6299dd7cd1dc702a0f8541ca7f542957": "e6559d4085c27f89a0a97cffcc4d4c44",
".git/objects/be/02cbade72d6447e37d4d91d746cea28820939e": "06b54b67699ae197b7aa1d3b2b4015ae",
".git/objects/c5/a19fd2d1bf41c521630ba9ff04dea51a7e032b": "a5af352b16f4d0c20669014b695514ab",
".git/objects/c8/1498c229171c1cfbfa1770420eccbbeb0d67fa": "615f5eff43a41e3629f5ba56a2f8e308",
".git/objects/ce/69eadbd1dff8bb765a15cc082c35349aed91a4": "af7332f79aade4c603767cf26c594985",
".git/objects/cf/1d030298896e9628c3497c5160f878331b896c": "3ce69652d2d7a1e233a99874e3eb6d91",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d8/1c9e40d5a20115e433775ea82b9a7a8137b216": "501c1ed7aa50b42b6082fab4c472182f",
".git/objects/e0/a135721eaeb29e6e82083643f3eb403f46a93d": "cd047f27c0bf67c19e36641b21782915",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e6/ad867ec2fc3a3ee60c43c94ee8a3608c421074": "bd5dd8a80bc371c8de435ed4795bf30c",
".git/objects/e7/7519f8ab7b7fd97a220a0cbd8d75d1002278e0": "8d4a911dfe2e76d0e58af29c2b279563",
".git/objects/e9/e575d0b36ebd696294496017834c26b62e1505": "8eca52e53d59927cc7c00a13888ea67b",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ee/dfb6f430f8a277eb53318f10035fde0c95fa03": "da79bf18c5c12c7e70a7cddb4c0fb327",
".git/objects/f6/f9dc8a2943f37ffbdb08d88d85884550764388": "b613f636e4883ab88b621694f52817ed",
".git/objects/fd/e4b91bfff249c2c98f07e2a007dc1dcfed3652": "e931c6d80ad331b839ae7ef566b1179d",
".git/objects/fe/0d05e66f21d237d1380dc00d04481c9aabc203": "e67a5f20ecd18b3990c5d0f42b585b0e",
".git/refs/heads/rb_ping": "68468f3fe813ed955e9819dc939c793d",
".git/refs/remotes/origin/rb_ping": "68468f3fe813ed955e9819dc939c793d",
"assets/AssetManifest.json": "9473423d41a93401b94918158f7b4b08",
"assets/assets/images/mobile.png": "089b3683ffff3b5c4ce19e851fbf1a69",
"assets/assets/images/mobile458x659.png": "9ceb43793f47dba554432586e2c56d5c",
"assets/assets/images/mobile572x974.png": "0a6fd3e9491a895b32a786958579d022",
"assets/assets/images/rbucket.png": "73c310aa56d5a175a953effbcb18d15e",
"assets/assets/images/rbucket_bw.png": "14097c97c1de828a684ef56f89314bf2",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "1447a44fee4ad41bcd45a66effbecf8a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "36f2eb6cc04205b61e87e7680ca8ede5",
"/": "36f2eb6cc04205b61e87e7680ca8ede5",
"main.dart.js": "7b8da40d3c620b52d3690ae37c913a15",
"manifest.json": "c1309ce13c8710f89e711bb6caa3b1d0",
"rbucket_bw.png": "14097c97c1de828a684ef56f89314bf2",
"version.json": "5ab1374527388c0bc506890211fcb406"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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

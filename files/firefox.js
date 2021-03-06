//////////////////////////////////////////
//////// Mozilla User Preferences ////////
//////////////////////////////////////////
////                                  ////
////     /etc/firefox/pref/user.js    ////
////  (applies to new profiles only)  ////
////                                  ////
//////////////////////////////////////////

//// neuter the hazard of ctrl+q
pref("browser.showQuitWarning", true);

//// disable sponsored tiles
pref("browser.newtab.preload", false);
pref("browser.newtabpage.enhanced", false);
pref("browser.newtabpage.directory.ping", "");
pref("browser.newtabpage.directory.source", "");

//// set DONOTTRACK header
pref("privacy.donottrackheader.enabled", true);

//// disable loading system colours - hazardous gtk dark
pref("browser.display.use_system_colors", false);

//// disable address/search bar "one-off" custom searches
pref("browser.urlbar.oneOffSearches", false);
pref("browser.urlbar.suggest.searches", false);

//// disable disk cache
pref("browser.cache.disk.enable", false);
pref("browser.cache.disk_cache_ssl", false);
pref("browser.cache.offline.enable", false);

//// by default open to blank page
pref("browser.startup.page", 0);

//// enable tracking protection
pref("privacy.trackingprotection.enabled", true);
pref("privacy.trackingprotection.pbmode.enabled", true);
// NB: breaks flash, ref moz#1317846 - no Flash on Linux anyway...
// see: https://wiki.mozilla.org/Security/Fingerprinting
pref("privacy.resistFingerprinting", true);

//// discard third-party cookies
pref("network.cookie.cookieBehavior", 1);

//// disable geolocation services
pref("geo.enabled", false);

//// why would anyone need access to these
pref("dom.battery.enabled", false);
pref("device.sensors.enabled", false);

//// disable misc nonsense
pref("media.getusermedia.screensharing.enabled", false);
pref("extensions.pocket.enabled", false);
pref("browser.bookmarks.showRecentlyBookmarked", false);
pref("browser.download.manager.addToRecentDocs", false);

//// disable captive portal detection - GNOME provides this
pref("network.captive-portal-service.enabled", false);

//// disable a href ping
pref("browser.send_pings", false);
pref("browser.send_pings.require_same_host", true);
pref("beacon.enabled", false);

//// duckduckgo as default search
pref("browser.search.defaultenginename", "data:text/plain,browser.search.defaultenginename=DuckDuckGo");
pref("browser.search.hiddenOneOffs", "Amazon.com,Twitter");

//// disable health report
pref("datareporting.healthreport.service.enabled", false);
pref("datareporting.healthreport.uploadEnabled", false);
pref("datareporting.policy.dataSubmissionEnabled", false);
pref("datareporting.policy.dataSubmissionEnabled.v2", false);
pref("toolkit.telemetry.enabled", false);

/// disable media plugins - no proprietary software by default
pref("media.eme.enabled", false);
pref("media.gmp-provider.enabled", false);
pref("media.gmp-eme-adobe.enabled", false);
pref("media.gmp-gmpopenh264.enabled", false);
pref("media.gmp-gmpopenh264.provider.enabled", false);
pref("plugins.notifyMissingFlash", false);

//// backspace goes back a page
pref("browser.backspace_action", 0);

//// disable Hello
pref("loop.enabled", false);

//// disable search suggestions
pref("browser.search.suggest.enabled", false);

//// disable Firefox Heartbeat Rating Widget
pref("browser.selfsupport.url", "");

//// disable formfill
pref("browser.formfill.enable", false);

//// disable password manager
pref("signon.rememberSignons", false);

//// disable referrer for cross-site requests
pref("network.http.referer.XOriginPolicy", 1);

//// disable prefetching
pref("network.prefetch-next", false);
pref("network.dns.disablePrefetch", true);
pref("network.dns.disablePrefetchFromHTTPS", true);
pref("network.http.speculative-parallel-limit", 0);

//// security
pref("security.mixed_content.block_active_content", true);
pref("security.mixed_content.block_display_content", true);
pref("security.xpconnect.plugin.unrestricted", false);
pref("security.fileuri.strict_origin_policy", true);
pref("network.negotiate-auth.allow-insecure-ntlm-v1", false);
pref("security.cert_pinning.enforcement_level", 2);
pref("security.ssl.treat_unsafe_negotiation_as_broken", true);
pref("security.insecure_password.ui.enabled", true);

//// block non-perfect forward secrecy legacy ciphers
//pref("security.tls.version.min", 3);
pref("security.ssl3.rsa_aes_128_sha", false);
//pref("security.ssl3.rsa_aes_256_sha", false);
pref("security.ssl3.rsa_des_ede3_sha", false);
pref("security.ssl3.rsa_rc4_128_md5", false);
pref("security.ssl3.rsa_rc4_128_sha", false);
pref("security.ssl3.dhe_rsa_aes_128_sha", false);
pref("security.ssl3.dhe_rsa_aes_256_sha", false);

//// useful for socks5
pref("network.proxy.socks_remote_dns", true);

//// block webrtc IP leak: https://ipleak.net/#webrtcleak
pref("media.peerconnection.enabled", false);
pref("media.peerconnection.use_document_iceservers", false);
pref("media.navigator.enabled", false);
pref("media.getusermedia.screensharing.enabled", false);
pref("media.getusermedia.screensharing.allowed_domains", "");

//// don't leak text selection and copy/paste
//pref("dom.event.clipboardevents.enabled", false);

//// don't try to "fix up" url typos -> localhost means localhost not www.localhost.com
pref("browser.fixup.alternate.enabled", false);

//// display punycode
pref("network.IDN_show_punycode", true);

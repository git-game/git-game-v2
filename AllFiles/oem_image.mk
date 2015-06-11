


<!DOCTYPE html>
<html lang="en" class="">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    
    
    <title>android_build/oem_image.mk at cm-12.0 · CyanogenMod/android_build · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="CyanogenMod/android_build" name="twitter:title" /><meta content="android_build - Android Build System (cyanogenmod)" name="twitter:description" /><meta content="https://avatars3.githubusercontent.com/u/317721?v=3&amp;s=400" name="twitter:image:src" />
      <meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars3.githubusercontent.com/u/317721?v=3&amp;s=400" property="og:image" /><meta content="CyanogenMod/android_build" property="og:title" /><meta content="https://github.com/CyanogenMod/android_build" property="og:url" /><meta content="android_build - Android Build System (cyanogenmod)" property="og:description" />
      <meta name="browser-stats-url" content="https://api.github.com/_private/browser/stats">
    <meta name="browser-errors-url" content="https://api.github.com/_private/browser/errors">
    <link rel="assets" href="https://assets-cdn.github.com/">
    
    <meta name="pjax-timeout" content="1000">
    

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>
      <meta name="google-analytics" content="UA-3769691-2">

    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="A9EBAEB0:3921:80AB6C9:5576A494" name="octolytics-dimension-request_id" />
    
    <meta content="Rails, view, blob#show" name="analytics-event" />
    <meta class="js-ga-set" name="dimension1" content="Logged Out">
    <meta class="js-ga-set" name="dimension2" content="Header v3">
    <meta name="is-dotcom" content="true">
      <meta name="hostname" content="github.com">
    <meta name="user-login" content="">

    
    <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">


    <meta content="authenticity_token" name="csrf-param" />
<meta content="zLkolXzY+lYc3Rn7bVxnP6ZlO2MkPrSXNM49NiNQB7ET6qJ4iAVzhBjbi4rfJ/s0jaHaIXdm9LoZGpwGSml68Q==" name="csrf-token" />

    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github/index-6967b378b26829cc5a2ea2ad4209ff0af50f2a65057962219dc9dcf8942683f0.css" media="all" rel="stylesheet" />
    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github2/index-f12d212c132049f6e7151d799b0a47e5c1ea78b1623248b105726336e068e46e.css" media="all" rel="stylesheet" />
    
    


    <meta http-equiv="x-pjax-version" content="ed7ff7b2d545eadc0223b1139ecb7f03">

      
  <meta name="description" content="android_build - Android Build System (cyanogenmod)">
  <meta name="go-import" content="github.com/CyanogenMod/android_build git https://github.com/CyanogenMod/android_build.git">

  <meta content="317721" name="octolytics-dimension-user_id" /><meta content="CyanogenMod" name="octolytics-dimension-user_login" /><meta content="747311" name="octolytics-dimension-repository_id" /><meta content="CyanogenMod/android_build" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="true" name="octolytics-dimension-repository_is_fork" /><meta content="301134" name="octolytics-dimension-repository_parent_id" /><meta content="abstrakraft/android_build" name="octolytics-dimension-repository_parent_nwo" /><meta content="301134" name="octolytics-dimension-repository_network_root_id" /><meta content="abstrakraft/android_build" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/CyanogenMod/android_build/commits/cm-12.0.atom" rel="alternate" title="Recent Commits to android_build:cm-12.0" type="application/atom+xml">

  </head>


  <body class="logged_out  env-production  vis-public fork page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div class="wrapper">
      
      
      


        
        <div class="header header-logged-out" role="banner">
  <div class="container clearfix">

    <a class="header-logo-wordmark" href="https://github.com/" data-ga-click="(Logged out) Header, go to homepage, icon:logo-wordmark">
      <span class="mega-octicon octicon-logo-github"></span>
    </a>

    <div class="header-actions" role="navigation">
        <a class="btn btn-primary" href="/join" data-ga-click="(Logged out) Header, clicked Sign up, text:sign-up">Sign up</a>
      <a class="btn" href="/login?return_to=%2FCyanogenMod%2Fandroid_build%2Fblob%2Fcm-12.0%2Fcore%2Ftasks%2Foem_image.mk" data-ga-click="(Logged out) Header, clicked Sign in, text:sign-in">Sign in</a>
    </div>

    <div class="site-search repo-scope js-site-search" role="search">
      <form accept-charset="UTF-8" action="/CyanogenMod/android_build/search" class="js-site-search-form" data-global-search-url="/search" data-repo-search-url="/CyanogenMod/android_build/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
  <label class="js-chromeless-input-container form-control">
    <div class="scope-badge">This repository</div>
    <input type="text"
      class="js-site-search-focus js-site-search-field is-clearable chromeless-input"
      data-hotkey="s"
      name="q"
      placeholder="Search"
      data-global-scope-placeholder="Search GitHub"
      data-repo-scope-placeholder="Search"
      tabindex="1"
      autocapitalize="off">
  </label>
</form>
    </div>

      <ul class="header-nav left" role="navigation">
          <li class="header-nav-item">
            <a class="header-nav-link" href="/explore" data-ga-click="(Logged out) Header, go to explore, text:explore">Explore</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="/features" data-ga-click="(Logged out) Header, go to features, text:features">Features</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="https://enterprise.github.com/" data-ga-click="(Logged out) Header, go to enterprise, text:enterprise">Enterprise</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="/blog" data-ga-click="(Logged out) Header, go to blog, text:blog">Blog</a>
          </li>
      </ul>

  </div>
</div>



      <div id="start-of-content" class="accessibility-aid"></div>
          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    <div id="js-flash-container">
      
    </div>
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">

        
<ul class="pagehead-actions">

  <li>
      <a href="/login?return_to=%2FCyanogenMod%2Fandroid_build"
    class="btn btn-sm btn-with-count tooltipped tooltipped-n"
    aria-label="You must be signed in to watch a repository" rel="nofollow">
    <span class="octicon octicon-eye"></span>
    Watch
  </a>
  <a class="social-count" href="/CyanogenMod/android_build/watchers">
    64
  </a>

  </li>

  <li>
      <a href="/login?return_to=%2FCyanogenMod%2Fandroid_build"
    class="btn btn-sm btn-with-count tooltipped tooltipped-n"
    aria-label="You must be signed in to star a repository" rel="nofollow">
    <span class="octicon octicon-star"></span>
    Star
  </a>

    <a class="social-count js-social-count" href="/CyanogenMod/android_build/stargazers">
      310
    </a>

  </li>

    <li>
      <a href="/login?return_to=%2FCyanogenMod%2Fandroid_build"
        class="btn btn-sm btn-with-count tooltipped tooltipped-n"
        aria-label="You must be signed in to fork a repository" rel="nofollow">
        <span class="octicon octicon-repo-forked"></span>
        Fork
      </a>
      <a href="/CyanogenMod/android_build/network" class="social-count">
        1,139
      </a>
    </li>
</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="mega-octicon octicon-repo-forked"></span>
          <span class="author"><a href="/CyanogenMod" class="url fn" itemprop="url" rel="author"><span itemprop="title">CyanogenMod</span></a></span><!--
       --><span class="path-divider">/</span><!--
       --><strong><a href="/CyanogenMod/android_build" data-pjax="#js-repo-pjax-container">android_build</a></strong>

          <span class="page-context-loader">
            <img alt="" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
          </span>

            <span class="fork-flag">
              <span class="text">forked from <a href="/abstrakraft/android_build">abstrakraft/android_build</a></span>
            </span>
        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline  ">
        <div class="repository-sidebar clearfix">
            
<nav class="sunken-menu repo-nav js-repo-nav js-sidenav-container-pjax js-octicon-loaders"
     role="navigation"
     data-pjax="#js-repo-pjax-container"
     data-issue-count-url="/CyanogenMod/android_build/issues/counts">
  <ul class="sunken-menu-group">
    <li class="tooltipped tooltipped-w" aria-label="Code">
      <a href="/CyanogenMod/android_build" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /CyanogenMod/android_build">
        <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>


    <li class="tooltipped tooltipped-w" aria-label="Pull requests">
      <a href="/CyanogenMod/android_build/pulls" aria-label="Pull requests" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g p" data-selected-links="repo_pulls /CyanogenMod/android_build/pulls">
          <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull requests</span>
          <span class="js-pull-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>

  </ul>
  <div class="sunken-menu-separator"></div>
  <ul class="sunken-menu-group">

    <li class="tooltipped tooltipped-w" aria-label="Pulse">
      <a href="/CyanogenMod/android_build/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-selected-links="pulse /CyanogenMod/android_build/pulse">
        <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>

    <li class="tooltipped tooltipped-w" aria-label="Graphs">
      <a href="/CyanogenMod/android_build/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-selected-links="repo_graphs repo_contributors /CyanogenMod/android_build/graphs">
        <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>
  </ul>


</nav>

              <div class="only-with-full-nav">
                  
<div class="js-clone-url clone-url open"
  data-protocol-type="http">
  <h3><span class="text-emphasized">HTTPS</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/CyanogenMod/android_build.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="js-clone-url clone-url "
  data-protocol-type="subversion">
  <h3><span class="text-emphasized">Subversion</span> checkout URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/CyanogenMod/android_build" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>



<div class="clone-options">You can clone with
  <form accept-charset="UTF-8" action="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone" class="inline-form js-clone-selector-form " data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="B2DSEg4nu9ohN9aXBbYsCdwQkCCR9rcnMbKieyknB2As+88PY/cRYCZx2ZCTJoZVnafrnYxEAhhhU/57zcNJZQ==" /></div><button class="btn-link js-clone-selector" data-protocol="http" type="submit">HTTPS</button></form> or <form accept-charset="UTF-8" action="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone" class="inline-form js-clone-selector-form " data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="Qee5EGdsB705RFGX83qHlgq0de5Mqaqr3YAbhYBylujYaVH34+R3668NrxROiZ7gXNDFOKfmVDnCuKIQQOeRDw==" /></div><button class="btn-link js-clone-selector" data-protocol="subversion" type="submit">Subversion</button></form>.
  <a href="https://help.github.com/articles/which-remote-url-should-i-use" class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <span class="octicon octicon-question"></span>
  </a>
</div>




                <a href="/CyanogenMod/android_build/archive/cm-12.0.zip"
                   class="btn btn-sm sidebar-button"
                   aria-label="Download the contents of CyanogenMod/android_build as a zip file"
                   title="Download the contents of CyanogenMod/android_build as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>

          

<a href="/CyanogenMod/android_build/blob/e43e164e37583b332b729236ab5396cc4e3af040/core/tasks/oem_image.mk" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:4a7e205ce71b977f02c578b6c709a5f6 -->

<div class="file-navigation js-zeroclipboard-container">
  
<div class="select-menu js-menu-container js-select-menu left">
  <span class="btn btn-sm select-menu-button js-menu-target css-truncate" data-hotkey="w"
    data-ref="cm-12.0"
    title="cm-12.0"
    role="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button css-truncate-target">cm-12.0</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
      </div>

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" data-filter-placeholder="Filter branches/tags" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/caf/cm-12.0/core/tasks/oem_image.mk"
               data-name="caf/cm-12.0"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="caf/cm-12.0">
                caf/cm-12.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/caf/cm-12.1/core/tasks/oem_image.mk"
               data-name="caf/cm-12.1"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="caf/cm-12.1">
                caf/cm-12.1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/cm-9.0.0/core/tasks/oem_image.mk"
               data-name="cm-9.0.0"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="cm-9.0.0">
                cm-9.0.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/cm-9.1.0/core/tasks/oem_image.mk"
               data-name="cm-9.1.0"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="cm-9.1.0">
                cm-9.1.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/cm-10.1/core/tasks/oem_image.mk"
               data-name="cm-10.1"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="cm-10.1">
                cm-10.1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/cm-10.2/core/tasks/oem_image.mk"
               data-name="cm-10.2"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="cm-10.2">
                cm-10.2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/cm-11.0/core/tasks/oem_image.mk"
               data-name="cm-11.0"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="cm-11.0">
                cm-11.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open selected"
               href="/CyanogenMod/android_build/blob/cm-12.0/core/tasks/oem_image.mk"
               data-name="cm-12.0"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="cm-12.0">
                cm-12.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/cm-12.1/core/tasks/oem_image.mk"
               data-name="cm-12.1"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="cm-12.1">
                cm-12.1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/donut/core/tasks/oem_image.mk"
               data-name="donut"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="donut">
                donut
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/eclair/core/tasks/oem_image.mk"
               data-name="eclair"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="eclair">
                eclair
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/froyo/core/tasks/oem_image.mk"
               data-name="froyo"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="froyo">
                froyo
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/froyo-stable/core/tasks/oem_image.mk"
               data-name="froyo-stable"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="froyo-stable">
                froyo-stable
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/gb-release-7.2/core/tasks/oem_image.mk"
               data-name="gb-release-7.2"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="gb-release-7.2">
                gb-release-7.2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/gingerbread/core/tasks/oem_image.mk"
               data-name="gingerbread"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="gingerbread">
                gingerbread
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/gingerbread-release/core/tasks/oem_image.mk"
               data-name="gingerbread-release"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="gingerbread-release">
                gingerbread-release
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/ics/core/tasks/oem_image.mk"
               data-name="ics"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="ics">
                ics
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/ics-release/core/tasks/oem_image.mk"
               data-name="ics-release"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="ics-release">
                ics-release
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/jellybean/core/tasks/oem_image.mk"
               data-name="jellybean"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="jellybean">
                jellybean
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/jellybean-release/core/tasks/oem_image.mk"
               data-name="jellybean-release"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="jellybean-release">
                jellybean-release
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/jellybean-stable/core/tasks/oem_image.mk"
               data-name="jellybean-stable"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="jellybean-stable">
                jellybean-stable
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/mr1.1-staging/core/tasks/oem_image.mk"
               data-name="mr1.1-staging"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="mr1.1-staging">
                mr1.1-staging
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/qcril/core/tasks/oem_image.mk"
               data-name="qcril"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="qcril">
                qcril
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/shipping/cm-11.0/core/tasks/oem_image.mk"
               data-name="shipping/cm-11.0"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="shipping/cm-11.0">
                shipping/cm-11.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/stable/cm-10.2/core/tasks/oem_image.mk"
               data-name="stable/cm-10.2"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="stable/cm-10.2">
                stable/cm-10.2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/stable/cm-11.0/core/tasks/oem_image.mk"
               data-name="stable/cm-11.0"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="stable/cm-11.0">
                stable/cm-11.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/stable/cm-11.0-XNF8Y/core/tasks/oem_image.mk"
               data-name="stable/cm-11.0-XNF8Y"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="stable/cm-11.0-XNF8Y">
                stable/cm-11.0-XNF8Y
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/stable/cm-11.0-XNF9X/core/tasks/oem_image.mk"
               data-name="stable/cm-11.0-XNF9X"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="stable/cm-11.0-XNF9X">
                stable/cm-11.0-XNF9X
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/stable/cm-11.0-XNG2S/core/tasks/oem_image.mk"
               data-name="stable/cm-11.0-XNG2S"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="stable/cm-11.0-XNG2S">
                stable/cm-11.0-XNG2S
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/stable/cm-11.0-XNG3C/core/tasks/oem_image.mk"
               data-name="stable/cm-11.0-XNG3C"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="stable/cm-11.0-XNG3C">
                stable/cm-11.0-XNG3C
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/stable/cm-12.0-YNG1T/core/tasks/oem_image.mk"
               data-name="stable/cm-12.0-YNG1T"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="stable/cm-12.0-YNG1T">
                stable/cm-12.0-YNG1T
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/stable/cm-12.0-YNG1TA/core/tasks/oem_image.mk"
               data-name="stable/cm-12.0-YNG1TA"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="stable/cm-12.0-YNG1TA">
                stable/cm-12.0-YNG1TA
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/stable/cm-12.0-YNG3C/core/tasks/oem_image.mk"
               data-name="stable/cm-12.0-YNG3C"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="stable/cm-12.0-YNG3C">
                stable/cm-12.0-YNG3C
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/stable/cm-12.1-YOG3C/core/tasks/oem_image.mk"
               data-name="stable/cm-12.1-YOG3C"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="stable/cm-12.1-YOG3C">
                stable/cm-12.1-YOG3C
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/staging/caf/themes/cm-12.0/core/tasks/oem_image.mk"
               data-name="staging/caf/themes/cm-12.0"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="staging/caf/themes/cm-12.0">
                staging/caf/themes/cm-12.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/staging/cm-12.0-caf/core/tasks/oem_image.mk"
               data-name="staging/cm-12.0-caf"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="staging/cm-12.0-caf">
                staging/cm-12.0-caf
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/CyanogenMod/android_build/blob/staging/cm-12.1/core/tasks/oem_image.mk"
               data-name="staging/cm-12.1"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="staging/cm-12.1">
                staging/cm-12.1
              </span>
            </a>
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-11.0-XNPH44S-bacon-5fa8c79c0b/core/tasks/oem_image.mk"
                 data-name="cm-11.0-XNPH44S-bacon-5fa8c79c0b"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-11.0-XNPH44S-bacon-5fa8c79c0b">cm-11.0-XNPH44S-bacon-5fa8c79c0b</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-11.0-XNPH33R-bacon-3628510d76/core/tasks/oem_image.mk"
                 data-name="cm-11.0-XNPH33R-bacon-3628510d76"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-11.0-XNPH33R-bacon-3628510d76">cm-11.0-XNPH33R-bacon-3628510d76</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-11.0-XNPH30O-bacon-4f280f505a/core/tasks/oem_image.mk"
                 data-name="cm-11.0-XNPH30O-bacon-4f280f505a"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-11.0-XNPH30O-bacon-4f280f505a">cm-11.0-XNPH30O-bacon-4f280f505a</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-11.0-XNPH25R-bacon-d22b777afa/core/tasks/oem_image.mk"
                 data-name="cm-11.0-XNPH25R-bacon-d22b777afa"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-11.0-XNPH25R-bacon-d22b777afa">cm-11.0-XNPH25R-bacon-d22b777afa</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-11.0-XNPH22R-bacon-03d77315ea/core/tasks/oem_image.mk"
                 data-name="cm-11.0-XNPH22R-bacon-03d77315ea"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-11.0-XNPH22R-bacon-03d77315ea">cm-11.0-XNPH22R-bacon-03d77315ea</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-11.0-XNPH05Q-tomato-9828f8e9cc/core/tasks/oem_image.mk"
                 data-name="cm-11.0-XNPH05Q-tomato-9828f8e9cc"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-11.0-XNPH05Q-tomato-9828f8e9cc">cm-11.0-XNPH05Q-tomato-9828f8e9cc</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-11.0-XNPH05Q-bacon-5229c4ef56/core/tasks/oem_image.mk"
                 data-name="cm-11.0-XNPH05Q-bacon-5229c4ef56"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-11.0-XNPH05Q-bacon-5229c4ef56">cm-11.0-XNPH05Q-bacon-5229c4ef56</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-10.2-M1/core/tasks/oem_image.mk"
                 data-name="cm-10.2-M1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-10.2-M1">cm-10.2-M1</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-10.2.1/core/tasks/oem_image.mk"
                 data-name="cm-10.2.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-10.2.1">cm-10.2.1</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-10.2.0/core/tasks/oem_image.mk"
                 data-name="cm-10.2.0"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-10.2.0">cm-10.2.0</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-10.1-M3/core/tasks/oem_image.mk"
                 data-name="cm-10.1-M3"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-10.1-M3">cm-10.1-M3</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-10.1-M2/core/tasks/oem_image.mk"
                 data-name="cm-10.1-M2"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-10.1-M2">cm-10.1-M2</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-10.1-M1/core/tasks/oem_image.mk"
                 data-name="cm-10.1-M1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-10.1-M1">cm-10.1-M1</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-10.1.3-RC2/core/tasks/oem_image.mk"
                 data-name="cm-10.1.3-RC2"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-10.1.3-RC2">cm-10.1.3-RC2</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-10.1.3-RC1/core/tasks/oem_image.mk"
                 data-name="cm-10.1.3-RC1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-10.1.3-RC1">cm-10.1.3-RC1</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-10.1.3/core/tasks/oem_image.mk"
                 data-name="cm-10.1.3"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-10.1.3">cm-10.1.3</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-10.1.2/core/tasks/oem_image.mk"
                 data-name="cm-10.1.2"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-10.1.2">cm-10.1.2</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-10.1.1/core/tasks/oem_image.mk"
                 data-name="cm-10.1.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-10.1.1">cm-10.1.1</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-10.1.0-RC5/core/tasks/oem_image.mk"
                 data-name="cm-10.1.0-RC5"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-10.1.0-RC5">cm-10.1.0-RC5</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-10.1.0-RC4/core/tasks/oem_image.mk"
                 data-name="cm-10.1.0-RC4"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-10.1.0-RC4">cm-10.1.0-RC4</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-10.1.0-RC3/core/tasks/oem_image.mk"
                 data-name="cm-10.1.0-RC3"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-10.1.0-RC3">cm-10.1.0-RC3</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-10.1.0-RC2/core/tasks/oem_image.mk"
                 data-name="cm-10.1.0-RC2"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-10.1.0-RC2">cm-10.1.0-RC2</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-10.1.0-RC1/core/tasks/oem_image.mk"
                 data-name="cm-10.1.0-RC1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-10.1.0-RC1">cm-10.1.0-RC1</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-10.1.0.1/core/tasks/oem_image.mk"
                 data-name="cm-10.1.0.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-10.1.0.1">cm-10.1.0.1</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-10.1.0/core/tasks/oem_image.mk"
                 data-name="cm-10.1.0"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-10.1.0">cm-10.1.0</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-7.1.0/core/tasks/oem_image.mk"
                 data-name="cm-7.1.0"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-7.1.0">cm-7.1.0</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-7.0.3/core/tasks/oem_image.mk"
                 data-name="cm-7.0.3"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-7.0.3">cm-7.0.3</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-7.0.2.1/core/tasks/oem_image.mk"
                 data-name="cm-7.0.2.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-7.0.2.1">cm-7.0.2.1</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-7.0.1/core/tasks/oem_image.mk"
                 data-name="cm-7.0.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-7.0.1">cm-7.0.1</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/CyanogenMod/android_build/tree/cm-7.0.0/core/tasks/oem_image.mk"
                 data-name="cm-7.0.0"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cm-7.0.0">cm-7.0.0</a>
            </div>
        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div>

    </div>
  </div>
</div>

  <div class="btn-group right">
    <a href="/CyanogenMod/android_build/find/cm-12.0"
          class="js-show-file-finder btn btn-sm empty-icon tooltipped tooltipped-s"
          data-pjax
          data-hotkey="t"
          aria-label="Quickly jump between files">
      <span class="octicon octicon-list-unordered"></span>
    </a>
    <button aria-label="Copy file path to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
  </div>

  <div class="breadcrumb js-zeroclipboard-target">
    <span class="repo-root js-repo-root"><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/CyanogenMod/android_build" class="" data-branch="cm-12.0" data-pjax="true" itemscope="url"><span itemprop="title">android_build</span></a></span></span><span class="separator">/</span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/CyanogenMod/android_build/tree/cm-12.0/core" class="" data-branch="cm-12.0" data-pjax="true" itemscope="url"><span itemprop="title">core</span></a></span><span class="separator">/</span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/CyanogenMod/android_build/tree/cm-12.0/core/tasks" class="" data-branch="cm-12.0" data-pjax="true" itemscope="url"><span itemprop="title">tasks</span></a></span><span class="separator">/</span><strong class="final-path">oem_image.mk</strong>
  </div>
</div>


  <div class="commit file-history-tease">
    <div class="file-history-tease-header">
        <img alt="" class="avatar" height="24" src="https://1.gravatar.com/avatar/4384fd72d7af1c0f209d16675ab8bbb3?d=https%3A%2F%2Fassets-cdn.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png&amp;r=x&amp;s=140" width="24" />
        <span class="author"><span>Ying Wang</span></span>
        <time datetime="2014-04-28T16:43:51Z" is="relative-time">Apr 28, 2014</time>
        <div class="commit-title">
            <a href="/CyanogenMod/android_build/commit/b8888432f0bc0706d5e00e971dde3ac2e986f2af" class="message" data-pjax="true" title="Set up rules to build oem.img

To build oem.img:
- You must define BOARD_OEMIMAGE_PARTITION_SIZE in your BoardConfig.mk
- The file system type will be the same as system.img and userdata.img.
- To install a module to oem.img, use &quot;LOCAL_OEM_MODULE := true&quot;
- run &quot;make -j48 showcommands oem_image dist&quot;. By default it&#39;s not
  built.

Bug: 13367676
Change-Id: I1a26d4d0c61b72ecffe60279667b1b3de050780d">Set up rules to build oem.img</a>
        </div>
    </div>

    <div class="participation">
      <p class="quickstat">
        <a href="#blob_contributors_box" rel="facebox">
          <strong>0</strong>
           contributors
        </a>
      </p>
      
    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
      </ul>
    </div>
  </div>

<div class="file">
  <div class="file-header">
    <div class="file-actions">

      <div class="btn-group">
        <a href="/CyanogenMod/android_build/raw/cm-12.0/core/tasks/oem_image.mk" class="btn btn-sm " id="raw-url">Raw</a>
          <a href="/CyanogenMod/android_build/blame/cm-12.0/core/tasks/oem_image.mk" class="btn btn-sm js-update-url-with-hash">Blame</a>
        <a href="/CyanogenMod/android_build/commits/cm-12.0/core/tasks/oem_image.mk" class="btn btn-sm " rel="nofollow">History</a>
      </div>


          <button type="button" class="octicon-btn disabled tooltipped tooltipped-n" aria-label="You must be signed in to make or propose changes">
            <span class="octicon octicon-pencil"></span>
          </button>

        <button type="button" class="octicon-btn octicon-btn-danger disabled tooltipped tooltipped-n" aria-label="You must be signed in to make or propose changes">
          <span class="octicon octicon-trashcan"></span>
        </button>
    </div>

    <div class="file-info">
        47 lines (40 sloc)
        <span class="file-info-divider"></span>
      1.905 kB
    </div>
  </div>
  
  <div class="blob-wrapper data type-makefile">
      <table class="highlight tab-size js-file-line-container" data-tab-size="8">
      <tr>
        <td id="L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="LC1" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#</span></td>
      </tr>
      <tr>
        <td id="L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="LC2" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Copyright (C) 2014 The Android Open Source Project</span></td>
      </tr>
      <tr>
        <td id="L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="LC3" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#</span></td>
      </tr>
      <tr>
        <td id="L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="LC4" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);</span></td>
      </tr>
      <tr>
        <td id="L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="LC5" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># you may not use this file except in compliance with the License.</span></td>
      </tr>
      <tr>
        <td id="L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="LC6" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># You may obtain a copy of the License at</span></td>
      </tr>
      <tr>
        <td id="L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="LC7" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#</span></td>
      </tr>
      <tr>
        <td id="L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="LC8" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#      http://www.apache.org/licenses/LICENSE-2.0</span></td>
      </tr>
      <tr>
        <td id="L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="LC9" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#</span></td>
      </tr>
      <tr>
        <td id="L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="LC10" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Unless required by applicable law or agreed to in writing, software</span></td>
      </tr>
      <tr>
        <td id="L11" class="blob-num js-line-number" data-line-number="11"></td>
        <td id="LC11" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># distributed under the License is distributed on an &quot;AS IS&quot; BASIS,</span></td>
      </tr>
      <tr>
        <td id="L12" class="blob-num js-line-number" data-line-number="12"></td>
        <td id="LC12" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.</span></td>
      </tr>
      <tr>
        <td id="L13" class="blob-num js-line-number" data-line-number="13"></td>
        <td id="LC13" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># See the License for the specific language governing permissions and</span></td>
      </tr>
      <tr>
        <td id="L14" class="blob-num js-line-number" data-line-number="14"></td>
        <td id="LC14" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># limitations under the License.</span></td>
      </tr>
      <tr>
        <td id="L15" class="blob-num js-line-number" data-line-number="15"></td>
        <td id="LC15" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#</span></td>
      </tr>
      <tr>
        <td id="L16" class="blob-num js-line-number" data-line-number="16"></td>
        <td id="LC16" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L17" class="blob-num js-line-number" data-line-number="17"></td>
        <td id="LC17" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># We build oem.img only if it&#39;s asked for.</span></td>
      </tr>
      <tr>
        <td id="L18" class="blob-num js-line-number" data-line-number="18"></td>
        <td id="LC18" class="blob-code blob-code-inner js-file-line"><span class="pl-k">ifneq</span> (<span class="pl-s">$(<span class="pl-c1">filter</span> <span class="pl-s">$(<span class="pl-v">MAKECMDGOALS</span>)</span>,oem_image)</span>,)</td>
      </tr>
      <tr>
        <td id="L19" class="blob-num js-line-number" data-line-number="19"></td>
        <td id="LC19" class="blob-code blob-code-inner js-file-line"><span class="pl-k">ifndef</span> <span class="pl-smi">BOARD_OEMIMAGE_PARTITION_SIZE</span></td>
      </tr>
      <tr>
        <td id="L20" class="blob-num js-line-number" data-line-number="20"></td>
        <td id="LC20" class="blob-code blob-code-inner js-file-line">$(error BOARD_OEMIMAGE_PARTITION_SIZE is not set.)</td>
      </tr>
      <tr>
        <td id="L21" class="blob-num js-line-number" data-line-number="21"></td>
        <td id="LC21" class="blob-code blob-code-inner js-file-line"><span class="pl-k">endif</span></td>
      </tr>
      <tr>
        <td id="L22" class="blob-num js-line-number" data-line-number="22"></td>
        <td id="LC22" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L23" class="blob-num js-line-number" data-line-number="23"></td>
        <td id="LC23" class="blob-code blob-code-inner js-file-line"><span class="pl-smi">INTERNAL_OEMIMAGE_FILES</span> := <span class="pl-cce">\</span></td>
      </tr>
      <tr>
        <td id="L24" class="blob-num js-line-number" data-line-number="24"></td>
        <td id="LC24" class="blob-code blob-code-inner js-file-line">    <span class="pl-s">$(<span class="pl-c1">filter</span> <span class="pl-s">$(<span class="pl-smi">TARGET_OUT_OEM</span>)</span>/<span class="pl-c1">%</span>,<span class="pl-s">$(<span class="pl-smi">ALL_DEFAULT_INSTALLED_MODULES</span>)</span>)</span></td>
      </tr>
      <tr>
        <td id="L25" class="blob-num js-line-number" data-line-number="25"></td>
        <td id="LC25" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L26" class="blob-num js-line-number" data-line-number="26"></td>
        <td id="LC26" class="blob-code blob-code-inner js-file-line"><span class="pl-smi">oemimage_intermediates</span> := <span class="pl-cce">\</span></td>
      </tr>
      <tr>
        <td id="L27" class="blob-num js-line-number" data-line-number="27"></td>
        <td id="LC27" class="blob-code blob-code-inner js-file-line">    <span class="pl-s">$(<span class="pl-c1">call</span> intermediates-dir-for,PACKAGING,oem)</span></td>
      </tr>
      <tr>
        <td id="L28" class="blob-num js-line-number" data-line-number="28"></td>
        <td id="LC28" class="blob-code blob-code-inner js-file-line"><span class="pl-smi">BUILT_OEMIMAGE_TARGET</span> := <span class="pl-s">$(<span class="pl-smi">PRODUCT_OUT</span>)</span>/oem.img</td>
      </tr>
      <tr>
        <td id="L29" class="blob-num js-line-number" data-line-number="29"></td>
        <td id="LC29" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># We just build this directly to the install location.</span></td>
      </tr>
      <tr>
        <td id="L30" class="blob-num js-line-number" data-line-number="30"></td>
        <td id="LC30" class="blob-code blob-code-inner js-file-line"><span class="pl-smi">INSTALLED_OEMIMAGE_TARGET</span> := <span class="pl-s">$(<span class="pl-smi">BUILT_OEMIMAGE_TARGET</span>)</span></td>
      </tr>
      <tr>
        <td id="L31" class="blob-num js-line-number" data-line-number="31"></td>
        <td id="LC31" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L32" class="blob-num js-line-number" data-line-number="32"></td>
        <td id="LC32" class="blob-code blob-code-inner js-file-line"><span class="pl-en"><span class="pl-s">$(<span class="pl-smi">INSTALLED_OEMIMAGE_TARGET</span>)</span></span> : <span class="pl-s">$(<span class="pl-smi">INTERNAL_USERIMAGES_DEPS</span>)</span> <span class="pl-s">$(<span class="pl-smi">INTERNAL_OEMIMAGE_FILES</span>)</span></td>
      </tr>
      <tr>
        <td id="L33" class="blob-num js-line-number" data-line-number="33"></td>
        <td id="LC33" class="blob-code blob-code-inner js-file-line">	<span class="pl-s">$(<span class="pl-c1">call</span> pretty,&quot;Target oem fs image: <span class="pl-v">$@</span>&quot;)</span></td>
      </tr>
      <tr>
        <td id="L34" class="blob-num js-line-number" data-line-number="34"></td>
        <td id="LC34" class="blob-code blob-code-inner js-file-line">	@mkdir -p <span class="pl-s">$(<span class="pl-smi">TARGET_OUT_OEM</span>)</span></td>
      </tr>
      <tr>
        <td id="L35" class="blob-num js-line-number" data-line-number="35"></td>
        <td id="LC35" class="blob-code blob-code-inner js-file-line">	@mkdir -p <span class="pl-s">$(<span class="pl-smi">oemimage_intermediates</span>)</span> <span class="pl-k">&amp;&amp;</span> rm -rf <span class="pl-s">$(<span class="pl-smi">oemimage_intermediates</span>)</span>/oem_image_info.txt</td>
      </tr>
      <tr>
        <td id="L36" class="blob-num js-line-number" data-line-number="36"></td>
        <td id="LC36" class="blob-code blob-code-inner js-file-line">	<span class="pl-s">$(<span class="pl-c1">call</span> generate-userimage-prop-dictionary, <span class="pl-s">$(<span class="pl-smi">oemimage_intermediates</span>)</span>/oem_image_info.txt, skip_fsck=true)</span></td>
      </tr>
      <tr>
        <td id="L37" class="blob-num js-line-number" data-line-number="37"></td>
        <td id="LC37" class="blob-code blob-code-inner js-file-line">	<span class="pl-s">$(<span class="pl-smi">hide</span>)</span> PATH=<span class="pl-s">$(<span class="pl-c1">foreach</span> p,<span class="pl-s">$(<span class="pl-smi">INTERNAL_USERIMAGES_BINARY_PATHS</span>)</span>,<span class="pl-s">$(<span class="pl-smi">p</span>)</span>:)</span><span class="pl-smi">$$</span>PATH <span class="pl-cce">\</span></td>
      </tr>
      <tr>
        <td id="L38" class="blob-num js-line-number" data-line-number="38"></td>
        <td id="LC38" class="blob-code blob-code-inner js-file-line">	  ./build/tools/releasetools/build_image.py <span class="pl-cce">\</span></td>
      </tr>
      <tr>
        <td id="L39" class="blob-num js-line-number" data-line-number="39"></td>
        <td id="LC39" class="blob-code blob-code-inner js-file-line">	  <span class="pl-s">$(<span class="pl-smi">TARGET_OUT_OEM</span>)</span> <span class="pl-s">$(<span class="pl-smi">oemimage_intermediates</span>)</span>/oem_image_info.txt <span class="pl-v">$@</span></td>
      </tr>
      <tr>
        <td id="L40" class="blob-num js-line-number" data-line-number="40"></td>
        <td id="LC40" class="blob-code blob-code-inner js-file-line">	<span class="pl-s">$(<span class="pl-smi">hide</span>)</span> <span class="pl-s">$(<span class="pl-c1">call</span> assert-max-image-size,<span class="pl-v">$@</span>,<span class="pl-s">$(<span class="pl-smi">BOARD_OEMIMAGE_PARTITION_SIZE</span>)</span>)</span></td>
      </tr>
      <tr>
        <td id="L41" class="blob-num js-line-number" data-line-number="41"></td>
        <td id="LC41" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L42" class="blob-num js-line-number" data-line-number="42"></td>
        <td id="LC42" class="blob-code blob-code-inner js-file-line"><span class="pl-c1">.PHONY</span>: oem_image</td>
      </tr>
      <tr>
        <td id="L43" class="blob-num js-line-number" data-line-number="43"></td>
        <td id="LC43" class="blob-code blob-code-inner js-file-line"><span class="pl-en">oem_image</span> : <span class="pl-s">$(<span class="pl-smi">INSTALLED_OEMIMAGE_TARGET</span>)</span></td>
      </tr>
      <tr>
        <td id="L44" class="blob-num js-line-number" data-line-number="44"></td>
        <td id="LC44" class="blob-code blob-code-inner js-file-line">$(call dist-for-goals, oem_image, $(INSTALLED_OEMIMAGE_TARGET))</td>
      </tr>
      <tr>
        <td id="L45" class="blob-num js-line-number" data-line-number="45"></td>
        <td id="LC45" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L46" class="blob-num js-line-number" data-line-number="46"></td>
        <td id="LC46" class="blob-code blob-code-inner js-file-line"><span class="pl-k">endif</span>  <span class="pl-c"># oem_image in $(MAKECMDGOALS)</span></td>
      </tr>
</table>

  </div>

</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" action="" class="js-jump-to-line-form" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="btn">Go</button>
</form></div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links right">
        <li><a href="https://status.github.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
      <li><a href="https://developer.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
      <li><a href="https://training.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
      <li><a href="https://shop.github.com" data-ga-click="Footer, go to shop, text:shop">Shop</a></li>
        <li><a href="https://github.com/blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
        <li><a href="https://github.com/about" data-ga-click="Footer, go to about, text:about">About</a></li>

    </ul>

    <a href="https://github.com" aria-label="Homepage">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
</a>
    <ul class="site-footer-links">
      <li>&copy; 2015 <span title="0.05274s from github-fe136-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="https://github.com/site/terms" data-ga-click="Footer, go to terms, text:terms">Terms</a></li>
        <li><a href="https://github.com/site/privacy" data-ga-click="Footer, go to privacy, text:privacy">Privacy</a></li>
        <li><a href="https://github.com/security" data-ga-click="Footer, go to security, text:security">Security</a></li>
        <li><a href="https://github.com/contact" data-ga-click="Footer, go to contact, text:contact">Contact</a></li>
    </ul>
  </div>
</div>


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-suggester-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="fullscreen-contents js-fullscreen-contents" placeholder=""></textarea>
      <div class="suggester-container">
        <div class="suggester fullscreen-suggester js-suggester js-navigation-container"></div>
      </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped tooltipped-w" aria-label="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped tooltipped-w"
      aria-label="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    

    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-x flash-close js-ajax-error-dismiss" aria-label="Dismiss error"></a>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" src="https://assets-cdn.github.com/assets/frameworks-68c41efebc976764e6b82e425124ad913abbe691b87d1681debeb2554e8a0d3a.js"></script>
      <script async="async" crossorigin="anonymous" src="https://assets-cdn.github.com/assets/github/index-8d9ac24ecec907c7f13871519a661f464269e254cb013ea0e1bbd1be03e1605d.js"></script>
      
      
  </body>
</html>


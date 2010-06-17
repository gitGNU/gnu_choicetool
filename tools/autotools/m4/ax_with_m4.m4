
  
  

  


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
        <title>m4/ax_with_m4.m4 at master from salvestrini's build-utils - GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="http://github.com/fluidicon.png" title="GitHub" />

    <link href="http://assets2.github.com/stylesheets/bundle_common.css?b181fcaa659d1b44c4e561ed12e6d82be464cf78" media="screen" rel="stylesheet" type="text/css" />
<link href="http://assets2.github.com/stylesheets/bundle_github.css?b181fcaa659d1b44c4e561ed12e6d82be464cf78" media="screen" rel="stylesheet" type="text/css" />

    <script type="text/javascript" charset="utf-8">
      var GitHub = {}
      var github_user = null
      
    </script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
    <script src="http://assets0.github.com/javascripts/bundle_common.js?b181fcaa659d1b44c4e561ed12e6d82be464cf78" type="text/javascript"></script>
<script src="http://assets1.github.com/javascripts/bundle_github.js?b181fcaa659d1b44c4e561ed12e6d82be464cf78" type="text/javascript"></script>

        <script type="text/javascript" charset="utf-8">
      GitHub.spy({
        repo: "salvestrini/build-utils"
      })
    </script>

    
  
    
  

  <link href="http://github.com/salvestrini/build-utils/commits/master.atom" rel="alternate" title="Recent Commits to build-utils:master" type="application/atom+xml" />

        <meta name="description" content="Autotools build related utilities (scripts, macros, Makefile.am snippets and so on...)" />
    <script type="text/javascript">
      GitHub.nameWithOwner = GitHub.nameWithOwner || "salvestrini/build-utils";
      GitHub.currentRef = "master";
    </script>
  

            <script type="text/javascript">
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-3769691-2']);
      _gaq.push(['_trackPageview']);
      (function() {
        var ga = document.createElement('script');
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        ga.setAttribute('async', 'true');
        document.documentElement.firstChild.appendChild(ga);
      })();
    </script>

  </head>

  

  <body>
    

    
      <script type="text/javascript">
        var _kmq = _kmq || [];
        (function(){function _kms(u,d){if(navigator.appName.indexOf("Microsoft")==0 && d)document.write("<scr"+"ipt defer='defer' async='true' src='"+u+"'></scr"+"ipt>");else{var s=document.createElement('script');s.type='text/javascript';s.async=true;s.src=u;(document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(s);}}_kms('https://i.kissmetrics.com/i.js');_kms('http'+('https:'==document.location.protocol ? 's://s3.amazonaws.com/' : '://')+'scripts.kissmetrics.com/406e8bf3a2b8846ead55afb3cfaf6664523e3a54.1.js',1);})();
      </script>
    

    

    

    <div class="subnavd" id="main">
      <div id="header" class="pageheaded">
        <div class="site">
          <div class="logo">
            <a href="http://github.com"><img src="/images/modules/header/logov3.png" alt="github" /></a>
          </div>
          
          <div class="topsearch">
  
    <form action="/search" id="top_search_form" method="get">
      <a href="/search" class="advanced-search tooltipped downwards" title="Advanced Search">Advanced Search</a>
      <input type="search" class="search my_repos_autocompleter" name="q" results="5" placeholder="Search&hellip;" /> <input type="submit" value="Search" class="button" />
      <input type="hidden" name="type" value="Everything" />
      <input type="hidden" name="repo" value="" />
      <input type="hidden" name="langOverride" value="" />
      <input type="hidden" name="start_value" value="1" />
    </form>
  
  
    <ul class="nav logged_out">
      
        <li><a href="http://github.com">Home</a></li>
        <li class="pricing"><a href="/plans">Pricing and Signup</a></li>
        <li><a href="http://github.com/explore">Explore GitHub</a></li>
        
        <li><a href="/blog">Blog</a></li>
      
      <li><a href="https://github.com/login">Login</a></li>
    </ul>
  
</div>

        </div>
      </div>

      
      
        
    <div class="site">
      <div class="pagehead repohead vis-public   ">
        <h1>
          <a href="/salvestrini">salvestrini</a> / <strong><a href="http://github.com/salvestrini/build-utils">build-utils</a></strong>
          
          
        </h1>

        
    <ul class="actions">
      

      
        <li class="for-owner" style="display:none"><a href="https://github.com/salvestrini/build-utils/edit" class="minibutton btn-admin "><span><span class="icon"></span>Admin</span></a></li>
        <li>
          <a href="/salvestrini/build-utils/toggle_watch" class="minibutton btn-watch " id="watch_button" style="display:none"><span><span class="icon"></span>Watch</span></a>
          <a href="/salvestrini/build-utils/toggle_watch" class="minibutton btn-watch " id="unwatch_button" style="display:none"><span><span class="icon"></span>Unwatch</span></a>
        </li>
        
          
            <li class="for-notforked" style="display:none"><a href="/salvestrini/build-utils/fork" class="minibutton btn-fork " id="fork_button" onclick="var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'POST'; f.action = this.href;var s = document.createElement('input'); s.setAttribute('type', 'hidden'); s.setAttribute('name', 'authenticity_token'); s.setAttribute('value', '3f946dd2d25e8f5536957fd4d60874ebaa4a29f0'); f.appendChild(s);f.submit();return false;"><span><span class="icon"></span>Fork</span></a></li>
            <li class="for-hasfork" style="display:none"><a href="#" class="minibutton btn-fork " id="your_fork_button"><span><span class="icon"></span>Your Fork</span></a></li>
          

          
          <li id="pull_request_item" class='ospr' style="display:none"><a href="/salvestrini/build-utils/pull_request/" class="minibutton btn-pull-request "><span><span class="icon"></span>Pull Request</span></a></li>
          

          <li><a href="#" class="minibutton btn-download " id="download_button"><span><span class="icon"></span>Download Source</span></a></li>
        
      
      
      <li class="repostats">
        <ul class="repo-stats">
          <li class="watchers"><a href="/salvestrini/build-utils/watchers" title="Watchers" class="tooltipped downwards">1</a></li>
          <li class="forks"><a href="/salvestrini/build-utils/network" title="Forks" class="tooltipped downwards">1</a></li>
        </ul>
      </li>
    </ul>


        
  <ul class="tabs">
    <li><a href="http://github.com/salvestrini/build-utils/tree/master" class="selected" highlight="repo_source">Source</a></li>
    <li><a href="http://github.com/salvestrini/build-utils/commits/master" highlight="repo_commits">Commits</a></li>

    
    <li><a href="/salvestrini/build-utils/network" highlight="repo_network">Network (1)</a></li>

    

    
      
      <li><a href="/salvestrini/build-utils/issues" highlight="issues">Issues (0)</a></li>
    

    
      
      <li><a href="/salvestrini/build-utils/downloads">Downloads (0)</a></li>
    

    
      
      <li><a href="http://wiki.github.com/salvestrini/build-utils/">Wiki (1)</a></li>
    

    <li><a href="/salvestrini/build-utils/graphs" highlight="repo_graphs">Graphs</a></li>

    <li class="contextswitch nochoices">
      <span class="toggle leftwards" >
        <em>Branch:</em>
        <code>master</code>
      </span>
    </li>
  </ul>

  <div style="display:none" id="pl-description"><p><em class="placeholder">click here to add a description</em></p></div>
  <div style="display:none" id="pl-homepage"><p><em class="placeholder">click here to add a homepage</em></p></div>

  <div class="subnav-bar">
  
  <ul>
    <li>
      <a href="#" class="dropdown">Switch Branches (1)</a>
      <ul>
        
          
            <li><strong>master &#x2713;</strong></li>
            
      </ul>
    </li>
    <li>
      <a href="#" class="dropdown defunct">Switch Tags (0)</a>
      
    </li>
    <li>
    
    <a href="/salvestrini/build-utils/branches" class="manage">Branch List</a>
    
    </li>
  </ul>
</div>

  
  
  
  
  


        
    <div id="repo_details" class="metabox clearfix">
      <div id="repo_details_loader" class="metabox-loader" style="display:none">Sending Request&hellip;</div>

      

      <div id="repository_description" rel="repository_description_edit">
        
          <p>Autotools build related utilities (scripts, macros, Makefile.am snippets and so on...)
            <span id="read_more" style="display:none">&mdash; <a href="#readme">Read more</a></span>
          </p>
        
      </div>
      <div id="repository_description_edit" style="display:none;" class="inline-edit">
        <form action="/salvestrini/build-utils/edit/update" method="post"><div style="margin:0;padding:0"><input name="authenticity_token" type="hidden" value="3f946dd2d25e8f5536957fd4d60874ebaa4a29f0" /></div>
          <input type="hidden" name="field" value="repository_description">
          <input type="text" class="textfield" name="value" value="Autotools build related utilities (scripts, macros, Makefile.am snippets and so on...)">
          <div class="form-actions">
            <button class="minibutton"><span>Save</span></button> &nbsp; <a href="#" class="cancel">Cancel</a>
          </div>
        </form>
      </div>

      
      <div class="repository-homepage" id="repository_homepage" rel="repository_homepage_edit">
        <p><a href="http://" rel="nofollow"></a></p>
      </div>
      <div id="repository_homepage_edit" style="display:none;" class="inline-edit">
        <form action="/salvestrini/build-utils/edit/update" method="post"><div style="margin:0;padding:0"><input name="authenticity_token" type="hidden" value="3f946dd2d25e8f5536957fd4d60874ebaa4a29f0" /></div>
          <input type="hidden" name="field" value="repository_homepage">
          <input type="text" class="textfield" name="value" value="">
          <div class="form-actions">
            <button class="minibutton"><span>Save</span></button> &nbsp; <a href="#" class="cancel">Cancel</a>
          </div>
        </form>
      </div>

      <div class="rule "></div>

      <div id="url_box" class="url-box">
        <ul class="clone-urls">
          
            
            <li id="http_clone_url"><a href="http://github.com/salvestrini/build-utils.git" data-permissions="Read-Only">HTTP</a></li>
            <li id="public_clone_url"><a href="git://github.com/salvestrini/build-utils.git" data-permissions="Read-Only">Git Read-Only</a></li>
          
        </ul>
        <input type="text" spellcheck="false" id="url_field" class="url-field" />
              <span style="display:none" id="url_box_clippy"></span>
      <span id="clippy_tooltip_url_box_clippy" class="clippy-tooltip tooltipped" title="copy to clipboard">
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
              width="14"
              height="14"
              class="clippy"
              id="clippy" >
      <param name="movie" value="http://assets0.github.com/flash/clippy.swf?v5"/>
      <param name="allowScriptAccess" value="always" />
      <param name="quality" value="high" />
      <param name="scale" value="noscale" />
      <param NAME="FlashVars" value="id=url_box_clippy&amp;copied=&amp;copyto=">
      <param name="bgcolor" value="#FFFFFF">
      <param name="wmode" value="opaque">
      <embed src="http://assets0.github.com/flash/clippy.swf?v5"
             width="14"
             height="14"
             name="clippy"
             quality="high"
             allowScriptAccess="always"
             type="application/x-shockwave-flash"
             pluginspage="http://www.macromedia.com/go/getflashplayer"
             FlashVars="id=url_box_clippy&amp;copied=&amp;copyto="
             bgcolor="#FFFFFF"
             wmode="opaque"
      />
      </object>
      </span>

        <p id="url_description">This URL has <strong>Read+Write</strong> access</p>
      </div>
    </div>


        

      </div><!-- /.pagehead -->

      









<script type="text/javascript">
  GitHub.currentCommitRef = "master"
  GitHub.currentRepoOwner = "salvestrini"
  GitHub.currentRepo = "build-utils"
  GitHub.downloadRepo = '/salvestrini/build-utils/archives/master'

  

  
</script>










  <div id="commit">
    <div class="group">
        
  <div class="envelope commit">
    <div class="human">
      
        <div class="message"><pre><a href="/salvestrini/build-utils/commit/691a10e79221365fef47b50c45c65f2a389eb21b">Fixed typo</a> </pre></div>
      

      <div class="actor">
        <div class="gravatar">
          
          <img src="http://www.gravatar.com/avatar/d321d27412e30e206452a6283db68438?s=140&d=http%3A%2F%2Fgithub.com%2Fimages%2Fgravatars%2Fgravatar-140.png" alt="" width="30" height="30"  />
        </div>
        <div class="name"><a href="/salvestrini">salvestrini</a> <span>(author)</span></div>
        <div class="date">
          <abbr class="relatize" title="2010-02-08 13:22:05">Mon Feb 08 13:22:05 -0800 2010</abbr>
        </div>
      </div>

      

    </div>
    <div class="machine">
      <span>c</span>ommit&nbsp;&nbsp;<a href="/salvestrini/build-utils/commit/691a10e79221365fef47b50c45c65f2a389eb21b" hotkey="c">691a10e79221365fef47</a><br />
      <span>t</span>ree&nbsp;&nbsp;&nbsp;&nbsp;<a href="/salvestrini/build-utils/tree/691a10e79221365fef47b50c45c65f2a389eb21b/maint/bootstrap" hotkey="t">84da6296f88321787c94</a><br />
      
        <span>p</span>arent&nbsp;
        
        <a href="/salvestrini/build-utils/commit/a2cb837a5806c68d76be1ad2e62769bd0311ffb8" hotkey="p">a2cb837a5806c68d76be</a>
      

    </div>
  </div>

    </div>
  </div>



  
    <div id="path">
      <b><a href="/salvestrini/build-utils/tree/master">build-utils</a></b> / <a href="/salvestrini/build-utils/tree/master/m4">m4</a> / ax_with_m4.m4       <span style="display:none" id="clippy_4060">m4/ax_with_m4.m4</span>
      
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
              width="110"
              height="14"
              class="clippy"
              id="clippy" >
      <param name="movie" value="http://assets0.github.com/flash/clippy.swf?v5"/>
      <param name="allowScriptAccess" value="always" />
      <param name="quality" value="high" />
      <param name="scale" value="noscale" />
      <param NAME="FlashVars" value="id=clippy_4060&amp;copied=copied!&amp;copyto=copy to clipboard">
      <param name="bgcolor" value="#FFFFFF">
      <param name="wmode" value="opaque">
      <embed src="http://assets0.github.com/flash/clippy.swf?v5"
             width="110"
             height="14"
             name="clippy"
             quality="high"
             allowScriptAccess="always"
             type="application/x-shockwave-flash"
             pluginspage="http://www.macromedia.com/go/getflashplayer"
             FlashVars="id=clippy_4060&amp;copied=copied!&amp;copyto=copy to clipboard"
             bgcolor="#FFFFFF"
             wmode="opaque"
      />
      </object>
      

    </div>

    <div id="files">
      <div class="file">
        <div class="meta">
          <div class="info">
            <span class="icon"><img alt="Txt" height="16" src="http://assets1.github.com/images/icons/txt.png?b181fcaa659d1b44c4e561ed12e6d82be464cf78" width="16" /></span>
            <span class="mode" title="File Mode">100644</span>
            
              <span>31 lines (29 sloc)</span>
            
            <span>0.827 kb</span>
          </div>
          <ul class="actions">
            
              <li><a id="file-edit-link" href="#" rel="/salvestrini/build-utils/file-edit/__ref__/m4/ax_with_m4.m4">edit</a></li>
            
            <li><a href="/salvestrini/build-utils/raw/master/m4/ax_with_m4.m4" id="raw-url">raw</a></li>
            
              <li><a href="/salvestrini/build-utils/blame/master/m4/ax_with_m4.m4">blame</a></li>
            
            <li><a href="/salvestrini/build-utils/commits/master/m4/ax_with_m4.m4">history</a></li>
          </ul>
        </div>
        
  <div class="data syntax type-plain">
    
      <table cellpadding="0" cellspacing="0">
        <tr>
          <td>
            <pre class="line_numbers"><span id="LID1" rel="#L1">1</span>
<span id="LID2" rel="#L2">2</span>
<span id="LID3" rel="#L3">3</span>
<span id="LID4" rel="#L4">4</span>
<span id="LID5" rel="#L5">5</span>
<span id="LID6" rel="#L6">6</span>
<span id="LID7" rel="#L7">7</span>
<span id="LID8" rel="#L8">8</span>
<span id="LID9" rel="#L9">9</span>
<span id="LID10" rel="#L10">10</span>
<span id="LID11" rel="#L11">11</span>
<span id="LID12" rel="#L12">12</span>
<span id="LID13" rel="#L13">13</span>
<span id="LID14" rel="#L14">14</span>
<span id="LID15" rel="#L15">15</span>
<span id="LID16" rel="#L16">16</span>
<span id="LID17" rel="#L17">17</span>
<span id="LID18" rel="#L18">18</span>
<span id="LID19" rel="#L19">19</span>
<span id="LID20" rel="#L20">20</span>
<span id="LID21" rel="#L21">21</span>
<span id="LID22" rel="#L22">22</span>
<span id="LID23" rel="#L23">23</span>
<span id="LID24" rel="#L24">24</span>
<span id="LID25" rel="#L25">25</span>
<span id="LID26" rel="#L26">26</span>
<span id="LID27" rel="#L27">27</span>
<span id="LID28" rel="#L28">28</span>
<span id="LID29" rel="#L29">29</span>
<span id="LID30" rel="#L30">30</span>
<span id="LID31" rel="#L31">31</span>
</pre>
          </td>
          <td width="100%">
            
              <div class="highlight"><pre><div class='line' id='LC1'>#####</div><div class='line' id='LC2'>#</div><div class='line' id='LC3'># SYNOPSIS</div><div class='line' id='LC4'>#</div><div class='line' id='LC5'>#   AX_WITH_M4([VALUE-IF-NOT-FOUND],[PATH])</div><div class='line' id='LC6'>#</div><div class='line' id='LC7'># DESCRIPTION</div><div class='line' id='LC8'>#</div><div class='line' id='LC9'>#   Locates an installed M4 binary, placing the result in the</div><div class='line' id='LC10'>#   precious variable $M4. Accepts a present $M4, then --with-m4,</div><div class='line' id='LC11'>#   and failing that searches for m4 in the given path (which</div><div class='line' id='LC12'>#   defaults to the system path). If m4 is found, $M4 is set to the</div><div class='line' id='LC13'>#   full path of the binary; if it is not found, $M4 is set to</div><div class='line' id='LC14'>#   VALUE-IF-NOT-FOUND, which defaults to 'm4'.</div><div class='line' id='LC15'>#</div><div class='line' id='LC16'># LAST MODIFICATION</div><div class='line' id='LC17'>#</div><div class='line' id='LC18'>#   2008-01-29</div><div class='line' id='LC19'>#</div><div class='line' id='LC20'># COPYLEFT</div><div class='line' id='LC21'>#</div><div class='line' id='LC22'>#   Copyright (c) 2008 Francesco Salvestrini &lt;salvestrini@users.sourceforge.net&gt;</div><div class='line' id='LC23'>#</div><div class='line' id='LC24'>#   Copying and distribution of this file, with or without</div><div class='line' id='LC25'>#   modification, are permitted in any medium without royalty provided</div><div class='line' id='LC26'>#   the copyright notice and this notice are preserved.</div><div class='line' id='LC27'><br/></div><div class='line' id='LC28'>AC_DEFUN([AX_WITH_M4],[</div><div class='line' id='LC29'>&nbsp;&nbsp;&nbsp;&nbsp;AX_WITH_PROG(M4,m4)</div><div class='line' id='LC30'>])</div><div class='line' id='LC31'><br/></div></pre></div>
            
          </td>
        </tr>
      </table>
    
  </div>


      </div>
    </div>

  


    </div>
  
      

      <div class="push"></div>
    </div>

    <div id="footer">
      <div class="site">
        <div class="info">
          <div class="links">
            <a href="http://github.com/blog"><b>Blog</b></a> |
            <a href="http://support.github.com">Support</a> |
            <a href="http://github.com/training">Training</a> |
            <a href="http://github.com/contact">Contact</a> |
            <a href="http://develop.github.com">API</a> |
            <a href="http://status.github.com">Status</a> |
            <a href="http://twitter.com/github">Twitter</a> |
            <a href="http://help.github.com">Help</a> |
            <a href="http://github.com/security">Security</a>
          </div>
          <div class="company">
            &copy;
            2010
            <span id="_rrt" title="0.32793s from fe3.rs.github.com">GitHub</span> Inc.
            All rights reserved. |
            <a href="/site/terms">Terms of Service</a> |
            <a href="/site/privacy">Privacy Policy</a>
          </div>
        </div>
        <div class="sponsor">
          <div>
            Powered by the <a href="http://www.rackspace.com ">Dedicated
            Servers</a> and<br/> <a href="http://www.rackspacecloud.com">Cloud
            Computing</a> of Rackspace Hosting<span>&reg;</span>
          </div>
          <a href="http://www.rackspace.com">
            <img alt="Dedicated Server" src="http://assets1.github.com/images/modules/footer/rackspace_logo.png?b181fcaa659d1b44c4e561ed12e6d82be464cf78" />
          </a>
        </div>
      </div>
    </div>

    <script>window._auth_token = "3f946dd2d25e8f5536957fd4d60874ebaa4a29f0"</script>
    

    <script type="text/javascript">
      _kmq.push(['trackClick', 'entice_banner_link', 'Entice banner clicked']);
      
    </script>
    
  </body>
</html>


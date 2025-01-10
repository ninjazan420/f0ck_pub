<div class='content-wrapper transparent' id='home'>
    <div class='messages'></div>
    <header>
      <a href="https://f0ck.org" target="_self"><img src="img/f0ck_anonymous_imageboard.png" alt="Catmemes, Shitposts, girls and more"></a>
      <!--
      <div id=site_banner>
      	<?php
		$banners = array_diff(scandir(__DIR__ . "/static/banners/"), array(".", ".."));
		sort($banners);
		$banner_number = rand(0, count($banners) - 1);
		$banner = $banners[$banner_number];
		echo "<img src='/static/banners/$banner'>";
	?>
    </div>
    -->
    
        <h4><a href="https://f0ck.org" target="_self">f0ck.org</a> - Catmemes, Shitposts, girls and more</h4>
    </header>
    <% if (ctx.canListPosts) { %>
        <form class='horizontal'>
            <%= ctx.makeTextInput({name: 'search-text', placeholder: 'Enter some tags'}) %>
            <input type='submit' value='Search'/>
            <span class=sep>or</span>
            <a href='<%- ctx.formatClientLink('posts') %>'>See all posts</a>
        </form>
    <% } %>
    <div class='post-info-container'></div>
    <footer class='footer-container'></footer>
</div>



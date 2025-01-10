<ul>
   <li><i class="fa fa-gift" aria-hidden="true"></i> Support us <a target="_blank" href='https://ko-fi.com/f0ck_org'>here.</a></li><span class='sep'>
    </span><li><i class="fa fa-upload" aria-hidden="true"></i> <%- ctx.postCount %> posts </li><li>use <i class="fa fa-hdd-o" aria-hidden="true"></i> <%= ctx.makeFileSize(ctx.diskUsage) %></li><span class='sep'>
    </span>
    
    <li><i class="fa fa-server" aria-hidden="true"></i> Build <a class='version' target="_blank" href='https://github.com/ninjazan420/f0ck/commits/master'><%- ctx.version %></a><%- ctx.isDevelopmentMode ? " (DEV MODE)" : "" %> Last build: <i class="fa fa-clock-o" aria-hidden="true"></i> <%= ctx.makeRelativeTime(ctx.buildDate) %></li><span class='sep'>
    </span><br><% if (ctx.canListSnapshots) { %><li><a href='<%- ctx.formatClientLink('history') %>'><i class="fa fa-history" aria-hidden="true"></i>
 History</a></li><span class='sep'>
    </span><% } %>
    <li><a href='https://f0ck.org/help/addon'><i class="fa fa-puzzle-piece" aria-hidden="true"></i> Browser Addon</a></li><span class='sep'>
    </span>
    <li><a target="_blank" href='https://discord.gg/SmWpwGnyrU'> Discord</a></li><span class='sep'>
    </span>
    <li><a target="_blank" href='ts3server://ts.f0ck.org'> TeamSpeak 3</a></li><br><span class='sep'>
    </span>
    <li><a target="_blank" href='https://sx.f0ck.org'><i class="fa fa-cloud-upload" aria-hidden="true"> f0ck.org ShareX Server - Free file server, URL shortener, temp text and more.</a></li><br>
    <li>Made with <i style="color: red;" class="fa fa-heart" aria-hidden="true"></i> and <i class='fa fa-coffee' aria-hidden="true"></i></li>
</ul>

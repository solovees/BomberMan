<#include "security.ftl">
<#import "login.ftl" as l>

<nav class="navbar navbar-expand-lg navbar-light my-nav-bar">
    <a class="navbar-brand" href="/">Sweater</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <#if isAdmin>
            <li class="nav-item">
                <a class="nav-link" href="/user">User list</a>
            </li>
            </#if>
            <#if user??>
            <li class="nav-item">
                <a class="nav-link" href="/main">Messages</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/user/profile">Profile</a>
            </li>
            </#if>
        </ul>

        <#if !user??>

        </#if>

        <div class="navbar-text mr-3">${name}</div>
        <#if signOut>
            <@l.logout />
        </#if>
        <#if signIn>
            <@l.sign_in />
        </#if>
    </div>
</nav>
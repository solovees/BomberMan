<#assign
    known = Session.SPRING_SECURITY_CONTEXT??
>

<#if known>
    <#assign
        user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
    name = user.getUsername()
    isAdmin = user.isAdmin()
    signOut = true
    signIn = false
    >
<#else>
    <#assign
        name = " "
        isAdmin = false
        signOut = false
        signIn = true
    >
</#if>
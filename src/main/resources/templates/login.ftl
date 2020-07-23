<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<style>
    body{
        width: 100%;
        height: 100%;
        background-color: #d5c4ffff;
        color: #000000;
        font-family: "Segoe UI",Arial,sans-serif;
        font-size: 1em;
        line-height: 135%;
    }
    a{
        color: #930048;
        text-decoration: none;
    }
    a:hover{
        color: #930048;
    }
</style>
<@c.page>
Login page
<@l.login "/login" />
<a href="/registration">Add new user</a>
</@c.page>
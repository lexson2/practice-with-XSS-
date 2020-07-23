<#import "parts/common.ftl" as c>
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
<div>Hello, user</div>
<a href="/main">Main page</a>
</@c.page>

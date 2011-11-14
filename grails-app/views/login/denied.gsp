<head>
<meta name='layout' content='main' />
<title><g:message code="springSecurity.denied.title" /></title>
</head>

<body>
  <div class='body'>
    <div class="nav" role="navigation">
      <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message
              code="default.home.label" /></a></li>
        <li><a class="search" href="${createLink(uri: '/search')}"><g:message
              code="default.search.label" /></a></li>
        <li><g:link class="create" action="create" controller="recipe">
            <g:message code="default.new.label" args="['Recipe']" />
          </g:link></li>
      </ul>
    </div>
    <br />
    <div class='errors'>
      <g:message code="springSecurity.denied.message" />
    </div>
  </div>
</body>

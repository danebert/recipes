<div id="searchResults">
  <g:if test="${searchResults}">
    <br />
    <h3>Search Results</h3>
    <div class="list">
      <table>
        <thead>
          <tr>
            <th>Recipe</th>
            <th>Category</th>
            <th>SubCategory</th>
            <th>Owner</th>
          </tr>
        </thead>
        <tbody>
          <g:each in="${searchResults}" status="i" var="recipe">
            <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
              <td><g:link controller="recipe" action="show" id="${recipe.id}">
                  ${fieldValue(bean: recipe, field: "title")}
                </g:link></td>
              <td>
                ${fieldValue(bean: recipe, field: "category.name")}
              </td>
              <td>
                ${fieldValue(bean: recipe, field: "subCategory.name")}
              </td>
              <td>
                ${fieldValue(bean: recipe, field: "owner.displayName")}
              </td>
            </tr>
          </g:each>
        </tbody>
      </table>
    </div>
  </g:if>
</div>
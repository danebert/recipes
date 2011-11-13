<%@ page import="com.mathin.recipes.Recipe"%>
<g:javascript library="jquery" />
<g:javascript>
    function updateSubCategories(data) {
       // The response comes back as a bunch-o-JSON
        if (data) {
            var rselect = document.getElementById('subCategory')

            // Clear all previous options
            var l = rselect.length

            while (l > 0) {
                l--
                rselect.remove(l)
            }

            // Rebuild the select
            for (i in data){
                item = data[i];
                var opt = document.createElement('option');
                opt.text = item.name
                opt.value = item.id
                if(item.id == ${recipeInstance.subCategory.id}) {
                    opt.selected=true;
                }
                try {
                    rselect.add(opt, null) // standards compliant; doesn't work in IE
                }
                catch(ex) {
                    rselect.add(opt) // IE only
                }
            };
        }
    }
    
    // This is called when the page loads to initialize subCategories
    var zselect = document.getElementById('category')
    var zopt = zselect.options[zselect.selectedIndex]
    ${remoteFunction(controller:"ajax", action:"getSubCategories", params:"'id=' + zopt.value", onSuccess:"updateSubCategories(data)")}
</g:javascript>

<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'title', 'error')} required">
  <label for="title"> <g:message code="recipe.title.label" default="Title" /> <span
    class="required-indicator">*</span>
  </label>
  <g:textField name="title" required="" value="${recipeInstance?.title}" />
</div>

<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'body', 'error')} required">
  <label for="body"> <g:message code="recipe.body.label" default="Body" /> <span
    class="required-indicator">*</span>
  </label>
  <g:textArea name="body" required="" value="${recipeInstance?.body}" rows="50" columns="80" />
</div>

<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'category', 'error')} required">
  <label for="category"> <g:message code="recipe.category.label" default="Category" /> <span
    class="required-indicator">*</span>
  </label>
  <g:select id="category" name="category.id" from="${categoryInstanceList}"
    optionKey="id" optionValue="name" required="" value="${recipeInstance?.category?.id}"
    class="many-to-one"
    onchange="${remoteFunction(
            controller:'ajax', 
            action:'getSubCategories', 
            params:'\'id=\' + escape(this.value)',
            onSuccess:'updateSubCategories(data)')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'subCategory', 'error')} ">
  <label for="subCategory"> <g:message code="recipe.subCategory.label"
      default="Sub Category" />
  </label>
  <g:select id="subCategory" name="subCategory.id" from="${subCategories}"
    optionKey="id" optionValue="name" required="false" />
</div>



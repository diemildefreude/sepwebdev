let postForm, addTechBut, addFeatureBut,
    techStackContainer, featuresContainer, techFields, featureFields;

document.addEventListener("DOMContentLoaded", () =>
{
    postForm = document.querySelector(".js-post-form");
    techStackContainer = document.querySelector(".js-tech-stack-container");
    techFields = document.querySelectorAll(".js-tech-field");
    featuresContainer = document.querySelector(".js-features-container");
    featureFields = document.querySelectorAll(".js-feature-field");
    addTechBut = document.querySelector(".js-add-tech-but");
    addFeatureBut = document.querySelector(".js-add-feature-but");

    for(let i = 0; i < techFields.length; ++i)
    {
        addRemoveListener(techFields[i]);
    }
    for(let i = 0; i < featureFields.length; ++i)
    {
        addRemoveListener(featureFields[i]);
    }

    addTechBut.addEventListener("click", () =>
    {
        makeNewField(techStackContainer, techFields[0]);        
    })
    addFeatureBut.addEventListener("click", () =>
    {
        makeNewField(featuresContainer, featureFields[0]);
    })

    function makeNewField(container, field)
    {
        const newField = field.cloneNode(true);
        const inp = newField.querySelector('input');
        inp.value = "";
        addRemoveListener(newField);
        container.appendChild(newField);
    }

    postForm.addEventListener("submit", (e) =>
    {
        e.preventDefault();
        const form = e.target;
        const techStackJson = convertFieldsToJson(form, ".js-tech-input", "tech_stack");
        const featuresJson = convertFieldsToJson(form, ".js-feature-input", "features");
        
        form.appendChild(techStackJson);
        form.appendChild(featuresJson);
        form.submit();
    });

    function convertFieldsToJson(form, inputSelector, inputName)
    {
        const inputs = form.querySelectorAll(inputSelector);
        const arr = Array.from(inputs).map((i) => i.value);
        console.log("arr ", arr);
        const jsonField = document.createElement('input');
        jsonField.type = 'hidden';
        jsonField.name = inputName;
        jsonField.value = JSON.stringify(arr);

        for(let i = 0; i < inputs.length; ++i)
        {
            inputs[i].remove();
        }

        return jsonField;
    }

    function addRemoveListener(field)
    {
        const removeBut = field.querySelector('.js-remove-but');
        removeBut.addEventListener('click', () =>
        {
            field.remove();
        });
    }
});
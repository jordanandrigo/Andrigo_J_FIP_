async function fetchData(datasource) {
    let resource = await fetch(datasource).then(response => {
        // bang operator - means "does not equal" 
        if (response.status !== 200) {
            throw new Error(`Danger! Error ${response.status}`);
        }

        return response;
    })

    let DataSet = await resource.json();

    return DataSet[0];
}

export { fetchData };
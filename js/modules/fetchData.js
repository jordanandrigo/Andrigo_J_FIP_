async function fetchData(sourceURL) {

    let resource = await fetch(sourceURL).then(response => {
        if (response.status !== 200) {
            throw new Error(`Error ${response.status}: ${errorCodes[response.status]}`);
        }
        return response;           
    });
    
        let dataset = await resource.json();
        return dataset[0];
    }
    export { fetchData };
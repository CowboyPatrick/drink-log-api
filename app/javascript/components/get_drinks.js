import JSONFormatter from 'json-formatter-js'

const setDrinks = () => {
  const drinkButton = document.getElementById("get-drinks")
      fetch("https://drink-log-backend.herokuapp.com/api/v1/drinks", {
        headers: {
            'Content-Type': 'application/json',
            'X-User-Email': "patrick@patrick.com",
            'X-User-Token': "pz3oRZ6sTWiUQs8e1aMA"
        }
    })
    .then(response => response.json())
    .then(data => appendData(data))

}

const appendData = (data) => {
  const display = document.getElementById('display-box')
  display.innerHTML = ""
  const formatted = new JSONFormatter(data)
  display.appendChild(formatted.render())
  // for (let i = 0; i < data.length; i++){
  //   const div = document.createElement("div")
  //   div.innerHTML = `ID:${data[i].id} Name:${data[i].name}`
  //   display.appendChild(div)
  // }
  // const display = document.getElementById('display-code')
  // display.innerHTML = `${data}`
}

const getDrinks = () => {
  const drinkButton = document.getElementById("get-drinks").addEventListener("click", setDrinks)
}
export { getDrinks }

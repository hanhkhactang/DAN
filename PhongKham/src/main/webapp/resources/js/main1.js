function addToDonThuoc(id, name){
    event.preventDefault()
    
    fetch ("/PhongKham/doctor/api/dt", {
        method: 'post',
        body: JSON.stringify({
            "medicineId":id,
            "medicineName": name,
            "quantity": 1
        }),
        headers:{
            "Content-Type": "application/json"
        }
    }).then(function(res){
        return res.json()
    }).then(function(data){
        let counter = document.getElementById("thuocCounter")
        counter.innerText = data
    })
    
}


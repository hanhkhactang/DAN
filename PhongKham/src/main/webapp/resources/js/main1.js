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

function updateDt(obj, medicineId){
    fetch("/PhongKham/doctor/api/dt",{
        method:"put",
        body: JSON.stringify({
            "medicineId":medicineId,
            "medicineName": "",
            "quantity": obj.value
        }),
        headers:{
            "Content-Type":"application/json"
        }
    }).then(function(res){
        return res.json()
    })
} 


function deleteDt(medicineId){
    
    if(confirm("Ban co chac chan muon xoa thuoc nay khong?")==true){
        fetch(`/PhongKham/doctor/api/${medicineId}`, {
        method:"delete"
        }).then(function(res){
            return res.json()
        }).then(function(data){
            let counter = document.getElementById("thuocCounter")
            counter.innerText = data
    //        location.reload()
            let row = document.getElementById(`medicine${medicineId}`)
            row.style.display = "none"
        })
    }
}

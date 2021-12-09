function addToDonThuoc(id, name,iddt){
    event.preventDefault()
    fetch ("/PhongKham/doctor/api/dt", {
        method: 'post',
        body: JSON.stringify({
            "medicineId":id,
            "medicineName": name,
            "orderid": iddt,
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
            
            location.reload()
            let row = document.getElementById(`medicine${medicineId}`)
            row.style.display = "none"
            counter.innerText = data
        })
    }
}

function xacNhan(){
    if(confirm("Ban xac nhan don thuoc nay") == true){
        fetch("/PhongKham/doctor/api/confirm", {
            method:"post"
        }).then(function(res){
            return res.json();
        }).then(function(code){
            console.info(code);
            location.reload()
        })
    }
}

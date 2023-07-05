var tm_pilih = document.getElementById('pilih');
var file = document.getElementById('file');
tm_pilih.addEventListener('click', function () {
    file.click();
})
file.addEventListener('change', function () {
    gambar(this);
})
function gambar(a) {
    if (a.files && a.files[0]) {     
            var reader = new FileReader();    
            reader.onload = function (e) {
                document.getElementById('gambar').src=e.target.result;
            }    
            reader.readAsDataURL(a.files[0]);
            document.getElementById("save").innerHTML = "<button type='submit' class='btn btn-primary' id='submitimg' onclick='loading();'> Save </button>";
    }

}
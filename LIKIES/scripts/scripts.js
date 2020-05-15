function E_Click(){
    document.querySelector('#entImage').click();
}

function E_Image(e) {
    if(e.files[0]){
        var reader = new FileReader();
        reader.onload = function(e){
            document.querySelector('#entdisplay').setAttribute('src', e.target.result);
        }
        reader.readAsDataURL(e.files[0]);
    }
}

function showYear(){
    document.getElementById('divYear').style.display = 'block';
    document.getElementById('divAuthor').style.display = 'none';
    document.getElementById('divArtist').style.display = 'none';
}
function showAuthor(){
    document.getElementById('divYear').style.display = 'none';
    document.getElementById('divAuthor').style.display = 'block';
    document.getElementById('divArtist').style.display = 'none';
}
function showArtist(){
    document.getElementById('divYear').style.display = 'none';
    document.getElementById('divAuthor').style.display = 'none';
    document.getElementById('divArtist').style.display = 'block';
}



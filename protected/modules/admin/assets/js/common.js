function before_ajax_update(id){
    alert(id);
}

function after_ajax_update(id,data){
    alert(id);
    alert(data);
}

function deleteImage(img){
	$(img).closest("div.thumbnail").remove();
}





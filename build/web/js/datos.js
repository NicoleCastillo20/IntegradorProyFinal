
/**
 * Comment
 */
function fecha() {
    date = new Date();
year = date.getFullYear();
month = date.getMonth() + 1;
day = date.getDate();
document.getElementById('current_date').innerHTML = day + "/" + month + "/" + year;
}

/**
 * Comment
 */
function hora() {
    ma=new Date();
hora= ma.getHours();
min=ma.getMinutes();
seg=ma.getSeconds();

manda= hora +" : " + min + " : " + seg;
document.getElementById('mostrarHora').innerHTML = manda;
    setTimeout("hora()",1000);
}



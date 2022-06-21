var ikona = "";
var query = "SELECT *, TIMESTAMPDIFF(minute, NOW(),data_wygasniecia)as'zostalo' FROM obrazki join uzytkownicy using(id_uzytkownika) join obrazek_kategorie USING(id_obrazka) join kategorie USING(id_kategorii) order by data_wygasniecia, id_obrazka, id_kategorii";
//console.log(query);

document.onload = new function () {
	function lajk()
	{
		var query= "SELECT id_obrazka, count(*) as liczba FROM `polubienia` group by id_obrazka";
	$.ajax({
		type: "POST",
		url: "show.php",
		data: { id: query },
		dataType: "json",
		success: function (data) {
			var tab = JSON.parse(JSON.stringify(data));
			
			for (var i = 0; i < tab.length; i++) 
			{
				document.getElementById("szot_id_"+tab[i].id_obrazka).innerHTML = tab[i].liczba;
			}
			
		}
		
	});
	//
	
	}


	function show(query)
	{
	$.ajax({
		type: "POST",
		url: "show.php",
		data: { id: query },
		dataType: "json",
		success: function (data) {
			var tab = JSON.parse(JSON.stringify(data));
			//console.log(tab);
			tab.push("x");
			let ikona="";
			let ik=[];
			
			for (var i = 0; i < tab.length-1; i++) 
			{
				//console.log(tab[i].nazwa_kategorii);
				if(tab[i].id_obrazka == tab[i+1].id_obrazka)
				{
					ik.push(tab[i].nazwa_kategorii);
				}else
				{
					ik.push(tab[i].nazwa_kategorii);
					//ik.push(tab[i].id_obrazka);
					//console.log(ik);
					var path = window.location.pathname;
					var page = path.split("/").pop();
					console.log( page );
					if(page == "search.php")
					{
						ikona = ikona + '<div class=" col-sm-6 col-lg-6"><div class="szot"><div class="szot__nick szot--text">#' + tab[i].login +'</div><div class="szot__tags horizontal-container">';
					}else
					{
						ikona = ikona + '<div class=" col-sm-6 col-lg-4"><div class="szot"><div class="szot__nick szot--text">#' + tab[i].login +'</div><div class="szot__tags horizontal-container">';
					}
					
					for(var x = 0; x<ik.length; x++)
					{
						ikona = ikona + '<div class="szot__tag szot--text">#'+ik[x]+'</div>';
					}

					ikona = ikona + '</div><img src="'+tab[i].obrazek+'"><div class="szot__title">'+tab[i].tytul+'</div><div class="szot__desc">'+tab[i].opis+'</div><div class="szot__like_plus horizontal-container"><form method="POST" action=""><input type="hidden" name="image" value="'+tab[i].obrazek+'"><input type="submit" name="submit" value="" class="plus_btn"></form>';
					ikona = ikona + '<div id="szot_id_'+tab[i].id_obrazka+'"></div>';
					
					ikona = ikona + '</div><div class="szot__time">Minuty do wygaśnięcia: '+ tab[i].zostalo+'</div></div></div>';
					
					ik=[];
				}
				
			}
			
		
			/*
			for (var i = 0; i < tab.length; i++) 
			{
				ikona = ikona + '<div class="szot"><div class="szot__nick szot--text">#' + tab[i].login +'</div><div class="szot__tags horizontal-container"><div class="szot__tag szot--text">#'+tab[i].nazwa_kategorii+'</div></div><img src="'+tab[i].obrazek+'"><div class="szot__title">'+tab[i].tytul+'</div><div class="szot__desc">'+tab[i].opis+'</div><div class="szot__like_plus horizontal-container"><form><input type="submit" value="" class="plus_btn"></form>22</div><div class="szot__time">Ważny do: 21'+ tab[i].data_wygasniecia+'</div></div>';
			}
			*/
			//console.log(ikona);
			document.getElementById("szot_hook").innerHTML = ikona;
			lajk();
		}
		
	});
	}
	show(query);
	

	$(document).ready(function() {
		$("#author_search").click(function() {
			var name = document.getElementById("author_name").value;
			query = "SELECT *,TIMESTAMPDIFF(minute, NOW(),data_wygasniecia)as'zostalo' FROM obrazki join uzytkownicy using(id_uzytkownika) join obrazek_kategorie USING(id_obrazka) join kategorie USING(id_kategorii) where login = '"+name+"' order by data_wygasniecia, id_obrazka, id_kategorii";
			//console.log(query);
			show(query);
		});

		$("#category_search").click(function() {
			var chceck_smieszne = document.getElementById("chceck-smieszne");
			var chceck_krajobraz = document.getElementById("chceck-krajobraz");
			var chceck_sztuka = document.getElementById("chceck-sztuka");
	
			query = "SELECT *,TIMESTAMPDIFF(minute, NOW(),data_wygasniecia)as'zostalo' FROM obrazki join uzytkownicy using(id_uzytkownika) join obrazek_kategorie USING(id_obrazka) join kategorie USING(id_kategorii)";
			var ifchceck=0;
			if (chceck_smieszne.checked == true)
			{
				query += "WHERE (id_kategorii = 1";
				ifchceck =1;
			}
			if (chceck_krajobraz.checked == true)
			{
				if(ifchceck==1)
				{
					query += " OR id_kategorii = 2";
				}else
				{
					query += "WHERE (id_kategorii = 2";
					ifchceck=1;
				}
			}
			if (chceck_sztuka.checked == true)
			{
				if(ifchceck==1)
				{
					query += " OR id_kategorii = 3";
				}else
				{
					query += "WHERE (id_kategorii = 3";
					ifchceck=1;
				}
			}
			if(ifchceck==1)
			query+=")";
	
	
			endofquery = "order by data_wygasniecia, id_obrazka, id_kategorii;";
			fullquery = query + endofquery;
			//console.log(fullquery);
			show(fullquery);		
		});
	})
}


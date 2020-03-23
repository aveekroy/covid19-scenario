<style>
div.step
{
    background-color: #F8F8F8
}

blockquote{
    min-height : 1em;
    padding    : 0.5em;
    font       : 1em/150% sans-serif;
    position   : relative;
}

blockquote::before,
blockquote::after{
    position : absolute;
    height   : 1rem;
    font     : 6rem/100% Georgia, "Time New Roman", Times, serif;
}
</style>

<blockquote>Please choose your **Country/Region** from the list given below and then click **Save Setting**</blockquote>

<input type="text" name="country" id="country" required="required" placeholder="Insert the Country/Region Name from below">
<button type="button" onClick="doAction()" class="btn btn-success">Save Setting</button>

<script type="text/javascript">
function doAction(){
    var aTags = document.getElemensByTagName("code");
    var searchText="country";
    var found;

    for(var i=0;i<aTags.length;i++){
        if(aTags[i].textContent ==searchText){
            found=aTags[i];
            break;
        }
    }
    var country = document.getElementById("country").value;
    found.innerHTML=`"${country}"`;

}
</script>



>China
>Italy
>Spain
>Germany
>Iran
>France
>US
>Korea, South
>Switzerland
>United Kingdom
>Netherlands
>Belgium
>Austria
>Norway
>Sweden
>Portugal
>Brazil
>Denmark
>Malaysia
>Turkey
>Czechia
>Japan
>Israel
>Ireland
>Luxembourg
>Ecuador
>Pakistan
>Cruise Ship
>Poland
>Chile
>Finland
>Greece
>Thailand
>Iceland
>Australia
>Indonesia
>Saudi Arabia
>Qatar
>Singapore
>Romania
>Canada
>Slovenia
>India
>Philippines
>Russia
>Peru
>Bahrain
>Egypt
>Estonia
>South Africa
>Croatia
>Mexico
>Lebanon
>Panama
>Iraq
>Colombia
>Argentina
>Serbia
>Dominican Republic
>Algeria
>Armenia
>Kuwait
>Bulgaria
>Slovakia
>Taiwan*
>San Marino
>United Arab Emirates
>Latvia
>Uruguay
>Costa Rica
>Hungary
>Lithuania
>Bosnia and Herzegovina
>Morocco
>North Macedonia
>Andorra
>Vietnam
>Jordan
>Cyprus
>Moldova
>Malta
>Albania
>Brunei
>Cambodia
>Sri Lanka
>Belarus
>Burkina Faso
>Tunisia
>Ukraine
>Venezuela
>Senegal
>New Zealand
>Azerbaijan
>Kazakhstan
>Guadeloupe
>Oman
>Georgia
>Trinidad and Tobago
>Reunion
>Uzbekistan
>Afghanistan
>Cameroon
>Liechtenstein
>Martinique
>Cuba
>Congo (Kinshasa)
>Nigeria
>Bangladesh
>Honduras
>Bolivia
>Ghana
>Monaco
>Paraguay
>Montenegro
>Guatemala
>Rwanda
>French Guiana
>Mauritius
>Jamaica
>Togo
>Kenya
>Barbados
>Cote d'Ivoire
>Kyrgyzstan
>Maldives
>Tanzania
>Ethiopia
>Mayotte
>Mongolia
>Guyana
>Seychelles
>Equatorial Guinea
>Gabon
>Suriname
>Bahamas, The
>Eswatini
>Cabo Verde
>Central African Republic
>Congo (Brazzaville)
>El Salvador
>Liberia
>Madagascar
>Namibia
>Zambia
>Zimbabwe
>Angola
>Benin
>Bhutan
>Fiji
>Guinea
>Haiti
>Kosovo
>Mauritania
>Nepal
>Nicaragua
>Niger
>Saint Lucia
>Sudan
>Antigua and Barbuda
>Chad
>Djibouti
>Dominica
>Eritrea
>Gambia, The
>Grenada
>Holy See
>Mozambique
>Papua New Guinea
>Saint Vincent and the Grenadines
>Somalia
>Syria
>Timor-Leste
>Uganda
>Cape Verde
>East Timor
>Greenland
>Guam
>Guernsey
>Jersey
>Puerto Rico
>Republic of the Congo
>The Bahamas
>The Gambia
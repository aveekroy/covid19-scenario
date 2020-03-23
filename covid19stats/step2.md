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

<blockquote>Please choose your Province/State from the list given below and then click **Save Setting**</blockquote>

<input type="text" name="state" id="state" required="required" placeholder="Insert the Province/State Name from below">
<button type="button" onClick="doAction()" class="btn btn-success">Save Setting</button>

<script type="text/javascript">
function doAction(){
    var aTags = document.getElemensByTagName("code");
    var searchText="state";
    var found;

    for(var i=0;i<aTags.length;i++){
        if(aTags[i].textContent ==searchText){
            found=aTags[i];
            break;
        }
    }
    var state = document.getElementById("state").value;
    found.innerHTML=state;

}
</script>

>Hubei
>France
>New York
>United Kingdom
>Netherlands
>Washington
>New Jersey
>California
>Guangdong
>Denmark
>Henan
>Zhejiang
>Illinois
>Michigan
>Hunan
>Anhui
>Jiangxi
>Louisiana
>Florida
>Shandong
>Diamond Princess
>Massachusetts
>Jiangsu
>Texas
>Georgia
>Chongqing
>Sichuan
>New South Wales
>Beijing
>Pennsylvania
>Tennessee
>Heilongjiang
>Colorado
>Ontario
>British Columbia
>Shanghai
>Wisconsin
>Ohio
>Hebei
>Hong Kong
>Fujian
>North Carolina
>Victoria
>Alberta
>Guangxi
>Shaanxi
>Maryland
>Connecticut
>Queensland
>Virginia
>Quebec
>Mississippi
>Indiana
>South Carolina
>Nevada
>Utah
>Yunnan
>Minnesota
>Hainan
>Arkansas
>Oregon
>Arizona
>Guizhou
>Alabama
>Tianjin
>Gansu
>Shanxi
>Liaoning
>Western Australia
>Faroe Islands
>District of Columbia
>South Australia
>Missouri
>Kentucky
>Jilin
>Iowa
>Maine
>Rhode Island
>Xinjiang
>Inner Mongolia
>Ningxia
>Oklahoma
>New Hampshire
>Kansas
>New Mexico
>Saskatchewan
>Vermont
>Nebraska
>Diamond Princess
>Hawaii
>Delaware
>Idaho
>Channel Islands
>Montana
>Grand Princess
>Nova Scotia
>North Dakota
>Guam
>Wyoming
>Puerto Rico
>Tasmania
>Alaska
>South Dakota
>Macau
>Australian Capital Territory
>Manitoba
>Qinghai
>New Brunswick
>French Polynesia
>Gibraltar
>Grand Princess
>West Virginia
>Aruba
>Newfoundland and Labrador
>United States Virgin Islands
>Isle of Man
>Greenland
>New Caledonia
>St Martin
>Northern Territory
>Saint Barthelemy
>Curacao
>Cayman Islands
>Prince Edward Island
>Bermuda
>Northwest Territories
>Tibet
>Sint Maarten
>US
>Montserrat
>From Diamond Princess
>French Guiana
>Guadeloupe
>Mayotte
>Reunion

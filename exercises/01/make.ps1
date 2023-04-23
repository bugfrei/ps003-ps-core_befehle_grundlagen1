function giveExt {
    $nr = $rnd.Next(0, $ext.Length - 1)
    return $ext[$nr]
}
function giveName {
    $nr = $rnd.Next(0, $word1.Length - 1)
    return $word1[$nr]
}
function giveWas {
    $rv = ""
    while($true) {
        $nr = $rnd.Next(0, $word2.Length - 1)
        $list = $word2[$nr].Split(";")

        $was1 = $list[0]
        if ($list.Length -gt 1) {
            $nr = $rnd.Next(1, $list.Length - 1)
            $was2 = $list[$nr]
        } else {
            $was2 = $list[1]
        }
        if ($was2 -eq "*") {
            $was2 = giveName
            $rv += "$was1 $was2 "
        }
        else {
            $rv += "$was1 $was2"
            return $rv
        } 
    }

}
cd bilder

$anz = 100
Write-Host "100 Beispieldateien werden erstellt"
$word1 = @("Kevin", "Luisa", "Nachbar", "Franz", "Ich", "Mama", "Papa", "Oma", "Opa", "Hund", "Katze")
$word2 = @("malt;ein Hund;Papa;Mama;Uns alle;ein Bild", "besucht;Kevin;Luisa;Franz;Mama;Papa;Oma;Opa", "beim;spielen;baden;lernen;schalfen;aufräumen;schwimmen;tanzen;spazierengehen", "und;*", "urlaub;auf Balkonien;am Strand;am See;in Italien")
$ext = @("jpg","png", "gif", "mp4", "mpeg", "mpg", "jpg", "png", "png", "png")
$rnd = [Random]::new()
while($anz -gt 0) {
    $filename = ""
    $anz--
    $size = $rnd.Next(20kb,5mb)
    
    $name = giveName
    $filename += $name + " " + (giveWas) + "." + (giveExt)

    $content = ("x" * $size)
    Set-Content $filename $content
}

md AlteBilder
md BilderMitOpa
md GrosseBilder
md NeueBilder

cd..



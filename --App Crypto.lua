-- Aktienstatistik Programm

-- Initialisiere Aktien-Daten
local aktienDaten = {
  {datum = "2022-01-01", wert = 100},
  {datum = "2022-01-02", wert = 110},
  {datum = "2022-01-03", wert = 105},
  {datum = "2022-01-04", wert = 115},
  {datum = "2022-01-05", wert = 120},
  {datum = "2022-01-06", wert = 125},
  {datum = "2022-01-07", wert = 130},
  {datum = "2022-01-08", wert = 135},
  {datum = "2022-01-09", wert = 140},
  {datum = "2022-01-10", wert = 145},
}

-- Funktion, die die Aktienstatistik ausgibt
function printAktienStatistik(startDatum, endDatum)
  -- Initialisiere Variablen
  local gesamtWert = 0
  local anzahlTage = 0
  local minWert = math.huge
  local maxWert = 0
  
  -- Schleife über Aktien-Daten im angegebenen Zeitfenster
  for i = 1, #aktienDaten do
    local aktienTag = aktienDaten[i]
    if aktienTag.datum >= startDatum and aktienTag.datum <= endDatum then
      -- Aktualisiere Statistik
      gesamtWert = gesamtWert + aktienTag.wert
      anzahlTage = anzahlTage + 1
      if aktienTag.wert < minWert then
        minWert = aktienTag.wert
      end
      if aktienTag.wert > maxWert then
        maxWert = aktienTag.wert
      end
    end
  end
  
  -- Gib Statistik aus
  print("Aktienstatistik von " .. startDatum .. " bis " .. endDatum .. ":")
  print("Durchschnittswert: " .. gesamtWert/anzahlTage)
  print("Minimalwert: " .. minWert)
  print("Maximalwert: " .. maxWert)
end

-- Beispielaufruf der Funktion
printAktienStatistik("2022-01-03", "2022-01-07")

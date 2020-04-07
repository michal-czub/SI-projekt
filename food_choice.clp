(deftemplate MAIN::food
   (slot name (type STRING)))

(defrule MAIN::bachelorparty_test
	(not (bachelor ?))
   =>
   (println "Czy wieczor kawalerski? (tak / nie)")
   (assert (bachelor (read))))

(defrule MAIN::b_dinnerType_test
	(not (typical_dinner ?))
	(bachelor tak)
   =>
   (println "Menu tradycyjne? (tak / nie)")
   (assert (typical_dinner (read))))

(defrule MAIN::b_dinnerType_iocheck
	(typical_dinner ?typical_dinner)
   ?rule <- (typical_dinner ?)
   (not (typical_dinner nie))
	(not (typical_dinner tak))
   =>
   (retract ?rule))

(defrule MAIN::b_meatType_test
	(not (meatType ?))
	(typical_dinner tak)
   =>
   (println "Czy mieso tradycyjne? (tak / nie)")
   (assert (meatType (read))))

(defrule MAIN::b_meatType_iocheck
	(meatType ?meatType)
   ?rule <- (meatType ?)
   (not (meatType nie))
	(not (meatType tak))
   =>
   (retract ?rule))

(defrule MAIN::b_cutlet_test
	(not (cutlet ?))
	(meatType tak)
   =>
   (println "Miesa Tradycyjne")
   (println "Czy kotlet? (tak / nie)")
   (assert (cutlet (read))))

(defrule MAIN::b_cutlet_iocheck
	(cutlet ?cutlet)
   ?rule <- (cutlet ?)
   (not (cutlet nie))
	(not (cutlet tak))
   =>
   (retract ?rule))

(defrule MAIN::b_soycutlet_test
	(not (soycutlet ?))
	(cutlet tak)
   =>
   (println "Czy kotlet sojowy? (tak / nie)")
   (assert (soycutlet (read))))

(defrule MAIN::b_soycutlet_iocheck
	(soycutlet ?soycutlet)
   ?rule <- (soycutlet ?)
   (not (soycutlet nie))
	(not (soycutlet tak))
   =>
   (retract ?rule))

(defrule MAIN::b_meatloaf_test
	(not (meatloaf ?))
	(soycutlet nie)
   =>
   (println "Czy kotlet mielony? (tak / nie)")
   (assert (meatloaf (read))))

(defrule MAIN::b_meatloaf_iocheck
	(meatloaf ?meatloaf)
   ?rule <- (meatloaf ?)
   (not (meatloaf nie))
	(not (meatloaf tak))
   =>
   (retract ?rule))

(defrule MAIN::b_chine_test
	(not (chine ?))
	(cutlet nie)
   =>
   (println "Czy karkowka? (tak / nie)")
   (assert (chine (read))))

(defrule MAIN::b_chine_iocheck
	(chine ?chine)
   ?rule <- (chine ?)
   (not (chine nie))
	(not (chine tak))
   =>
   (retract ?rule))

(defrule MAIN::b_haunch_test
	(not (haunch ?))
	(chine nie)
   =>
   (println "Czy udziec? (tak / nie)")
   (assert (haunch (read))))

(defrule MAIN::b_haunch_iocheck
	(haunch ?haunch)
   ?rule <- (haunch ?)
   (not (haunch nie))
	(not (haunch tak))
   =>
   (retract ?rule))

(defrule MAIN::b_loin_test
	(not (loin ?))
	(haunch nie)
   =>
	(println "Czy poledwica? (tak / nie)")
	(assert (loin (read))))

(defrule MAIN::b_loin_iocheck
	(loin ?loin)
	?rule <- (loin ?)
	(not (loin nie))
	(not (loin tak))
   =>
	(retract ?rule))

(defrule MAIN::b_beefloin_test
	(not (beefloin ?))
	(loin tak)
   =>
	(println "Czy Poledwica wolowa (tak / nie)")
	(assert (beefloin (read))))

(defrule MAIN::b_beefloin_iocheck
	(beefloin ?beefloin)
	?rule <- (beefloin ?)
	(not (beefloin nie))
	(not (beefloin tak))
   =>
	(retract ?rule))

(defrule MAIN::b_fastfood_test
	(not (fastfood ?))
	(typical_dinner nie)
   =>
	(println "Czy nietradycyjne danie, fastfood? (tak / nie)")
	(assert (fastfood (read))))

(defrule MAIN::b_fastfood_iocheck
	(fastfood ?fastfood)
	?rule <- (fastfood ?)
	(not (fastfood nie))
	(not (fastfood tak))
   =>
	(retract ?rule))

(defrule MAIN::b_pizza_test
	(not (pizza ?))
	(fastfood tak)
   =>
	(println "Czy pizza? (tak / nie)")
	(assert (pizza (read))))

(defrule MAIN::b_pizza_iocheck
	(pizza ?pizza)
	?rule <- (pizza ?)
	(not (pizza nie))
	(not (pizza tak))
   =>
	(retract ?rule))

(defrule MAIN::b_hawaii_test
	(not (hawaii ?))
	(pizza tak)
   =>
	(println "Czy pizza hawajska? (tak / nie)")
	(assert (hawaii (read))))

(defrule MAIN::b_hawaii_iocheck
	(hawaii ?hawaii)
	?rule <- (hawaii ?)
	(not (hawaii nie))
	(not (hawaii tak))
   =>
	(retract ?rule))

(defrule MAIN::b_capriciosa_test
	(not (capriciosa ?))
	(hawaii nie)
   =>
	(println "Czy pizza capriciosa? (tak / nie)")
	(assert (capriciosa (read))))

(defrule MAIN::b_capriciosa_iocheck
	(capriciosa ?capriciosa)
	?rule <- (capriciosa ?)
	(not (capriciosa nie))
	(not (capriciosa tak))
   =>
	(retract ?rule))

(defrule MAIN::b_funghi_test
	(not (funghi ?))
	(capriciosa nie)
   =>
	(println "Czy pizza funghi? (tak / nie)")
	(assert (funghi (read))))

(defrule MAIN::b_funghi_iocheck
	(funghi ?funghi)
	?rule <- (funghi ?)
	(not (funghi nie))
	(not (funghi tak))
   =>
	(retract ?rule))

(defrule MAIN::b_kebab_test
	(not (kebab ?))
	(pizza nie)
   =>
	(println "Czy kebab? (tak / nie)")
	(assert (kebab (read))))

(defrule MAIN::b_kebab_iocheck
	(kebab ?kebab)
	?rule <- (kebab ?)
	(not (kebab nie))
	(not (kebab tak))
   =>
	(retract ?rule))

(defrule MAIN::b_mildsauce_test
	(not (mildsauce ?))
	(kebab tak)
   =>
	(println "Czy sos lagodny? (tak / nie)")
	(assert (mildsauce (read))))

(defrule MAIN::b_mildsauce_iocheck
	(mildsauce ?mildsauce)
	?rule <- (mildsauce ?)
	(not (mildsauce nie))
	(not (mildsauce tak))
   =>
	(retract ?rule))

(defrule MAIN::b_spicysauce_test
	(not (spicysauce ?))
	(mildsauce nie)
   =>
	(println "Czy sos pikantny? (tak / nie)")
	(assert (spicysauce (read))))

(defrule MAIN::b_spicysauce_iocheck
	(spicysauce ?spicysauce)
	?rule <- (spicysauce ?)
	(not (spicysauce nie))
	(not (spicysauce tak))
   =>
	(retract ?rule))


(defrule MAIN::food-0
	(meatType nie)
   =>
   (println "Deska serow, paluszki, pierogi ruskie")
   (assert (food (name "Deska serow, paluszki, pierogi ruskie"))))

(defrule MAIN::food-1
	(soycutlet tak)
   =>
   (println "Deska serow, paluszki, bimber, kotlet sojowy")
   (assert (food (name "Deska serow, paluszki, bimber, kotlet sojowy"))))

(defrule MAIN::food-2
	(meatloaf tak)
   =>
   (println "Deska serow, paluszki, bimber, kotlet mielony")
   (assert (food (name "Deska serow, paluszki, kotlet mielony"))))

(defrule MAIN::food-3
	(meatloaf nie)
   =>
   (println "Deska serow, paluszki, bimber, kotlet schabowy")
   (assert (food (name "Deska serow, paluszki, kotlet schabowy"))))

(defrule MAIN::food-4
	(chine tak)
   =>
   (println "Deska serow, paluszki, bimber, karkowka")
   (assert (food (name "Deska serow, paluszki, karkowka"))))

(defrule MAIN::food-5
	(haunch tak)
   =>
   (println "Deska serow, paluszki, bimber, udziec")
   (assert (food (name "Deska serow, paluszki, udziec"))))

(defrule MAIN::food-6
	(beefloin tak)
   =>
   (println "Deska serow, paluszki, bimber, poledwica wolowa")
   (assert (food (name "Deska serow, paluszki, poledwica wolowa"))))

(defrule MAIN::food-7
	(beefloin nie)
   =>
   (println "Deska serow, paluszki, bimber, poledwica wieprzowa")
   (assert (food (name "Deska serow, paluszki, poledwica wieprzowa"))))

(defrule MAIN::food-8
	(loin nie)
   =>
   (println "Deska serow, paluszki, bimber, dziczyzna")
   (assert (food (name "Deska serow, paluszki, dziczyzna"))))


(defrule MAIN::food-9
	(fastfood nie)
   =>
   (println "Deska serow, paluszki, bimber")
   (assert (food (name "Deska serow, paluszki, bimber"))))

(defrule MAIN::food-10
	(hawaii tak)
   =>
   (println "Deska serow, paluszki, bimber, pizza hawajska")
   (assert (food (name "Deska serow, paluszki, bimber, pizza hawajska"))))

(defrule MAIN::food-11
	(capriciosa tak)
   =>
   (println "Deska serow, paluszki, bimber, pizza capriciosa")
   (assert (food (name "Deska serow, paluszki, bimber, pizza capriciosa"))))

(defrule MAIN::food-12
	(funghi tak)
   =>
   (println "Deska serow, paluszki, bimber, pizza funghi")
   (assert (food (name "Deska serow, paluszki, bimber, pizza funghi"))))

(defrule MAIN::food-13
	(funghi nie)
   =>
   (println "Deska serow, paluszki, bimber, pizza cztery sery")
   (assert (food (name "Deska serow, paluszki, bimber, pizza cztery sery"))))

(defrule MAIN::food-14
	(kebab nie)
   =>
   (println "Deska serow, paluszki, bimber, burger z wolowina")
   (assert (food (name "Deska serow, paluszki, bimber, burger z wolowina"))))

(defrule MAIN::food-15
	(mildsauce tak)
   =>
   (println "Deska serow, paluszki, bimber, kebab z sosem lagodnym")
   (assert (food (name "Deska serow, paluszki, bimber, kebab z sosem lagodnym"))))

(defrule MAIN::food-16
	(spicysauce nie)
   =>
   (println "Deska serow, paluszki, bimber, kebab z sosem slodko-kwasnym")
   (assert (food (name "Deska serow, paluszki, bimber, kebab z sosem slodko-kwasnym"))))

(defrule MAIN::food-17
	(spicysauce tak)
   =>
   (println "Deska serow, paluszki, bimber, kebab z sosem pikantnym")
   (assert (food (name "Deska serow, paluszki, bimber, kebab z sosem pikantnym"))))
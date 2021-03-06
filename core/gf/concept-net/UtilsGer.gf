resource UtilsGer = open SyntaxGer in {
  oper
    mkAMod : Det -> A -> N -> NP = \det, mod, noun ->
      (mkNP det (mkCN mod noun));

  -- Combine modifiers
  oper combineMods = overload {
         combineMods : AP -> AP -> AP = \x, y -> mkAP and_Conj (mkListAP x y);
         combineMods : AP -> ListAP -> AP = \x, xs -> mkAP and_Conj (mkListAP x xs);
         };
}

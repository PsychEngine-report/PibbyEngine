function onCreate()
--RANGO 1 Partes que no consuman muchos recurso o lo esencial.
	makeLuaSprite('cielo', 'first/Sky', 0, 0);
    setLuaSpriteScrollFactor('cielo', 0.9, 0.9);
	scaleObject('cielo', 2.0, 2.0);
	
	makeLuaSprite('pasto', 'first/playa', 0, 0);
    setLuaSpriteScrollFactor('pasto', 0.9, 0.9);
	scaleObject('pasto', 2.0, 2.0);
	
	makeLuaSprite('piso', 'first/piso', 0, 0);
    setLuaSpriteScrollFactor('piso', 0.9, 0.9);
	scaleObject('piso', 2.0, 2.0);
	
	makeLuaSprite('taladro', 'first/taladro', 0, 0);
    setLuaSpriteScrollFactor('taladro', 0.9, 0.9);
	scaleObject('taladro', 2.0, 2.0);
	
	makeLuaSprite('tierra', 'first/tierra', 0, 0);
    setLuaSpriteScrollFactor('tierra', 0.9, 0.9);
	scaleObject('tierra', 2.0, 2.0);
	
    makeAnimatedLuaSprite('sayori', 'characters/pibby',1420, 840);
    scaleObject('sayori', 2.0, 2.0);

	if not lowQuality then
--RANGO 2 Agregen lo que quieran y podran desactivarlo en las opciones del psych engine.








	
	end
--RANGO3 Va a leer en orden y podras usar el setObjectOrder para ponerlo encima de girfriend.

    addLuaSprite('cielo', true);
    addLuaSprite('pasto', false);
    addLuaSprite('piso', false);
    addLuaSprite('taladro', false);
    addLuaSprite('tierra', false);
  addLuaSprite('sayori', false);

  addAnimationByPrefix('sayori','Idle','Idle',24,true);

end

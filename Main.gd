extends Node2D
var caja=preload("res://caja.tscn")
var rotacion=false
var pesadez=false
var ligereza=false
var mas=false
var menos=false
const speed=0.005

func _input(event):
	if event.is_action_pressed("cinco"):
		var nueva_caja=caja.instance()
		nueva_caja.global_position=$mover/pos.global_position
		add_child(nueva_caja)
		
func _physics_process(delta):
	if rotacion:
		$mover.rotation+=speed
		Var.tetha +=delta*17.3
		$angulo.text=str(Var.tetha)
		if Var.tetha >=360:
			Var.tetha=0
	elif pesadez:
		Var.peso=Var.peso+0.1
		$weight.text=str(Var.peso)
	elif ligereza:
		Var.peso=Var.peso-0.1
		$weight.text=str(Var.peso)
	elif mas:
		Var.friccion=Var.friccion+0.0005
		$vale.text=str(Var.friccion*5)
	elif menos:
		Var.friccion=Var.friccion-0.0005
		$vale.text=str(Var.friccion*5)
		
func _on_Rotar_pressed():
	rotacion=true

func _on_Detener_pressed():
	rotacion=false

func _on_Aumentar_pressed():
	pesadez=true

func _on_detener_pressed():
	pesadez=false
	ligereza=false

func _on_Disminuir_pressed():
	ligereza=true

func _on_msfriccin_pressed():
	mas=true

func _on_menosfriccin_pressed():
	menos=true

func _on_detenerfriccin_pressed():
	mas=false
	menos=false

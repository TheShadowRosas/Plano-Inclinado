extends KinematicBody2D
var velocidad=Vector2.ZERO

func _process(delta):
	if Var.tetha==0:
		velocidad.x ==0
		velocidad.y ==0
	
	elif Var.tetha <=90:
		velocidad.x +=delta*cos(deg2rad(Var.tetha+1))*(Var.peso/Var.masa)*(sin(deg2rad(Var.tetha))-Var.friccion*cos(deg2rad(Var.tetha)))
		velocidad.y +=delta*sin(deg2rad(Var.tetha+1))*(Var.peso/Var.masa)*(sin(deg2rad(Var.tetha))-Var.friccion*cos(deg2rad(Var.tetha)))
	
	elif Var.tetha >=90 and Var.tetha <=270:
		velocidad.x +=0
		velocidad.y +=(Var.peso/Var.masa)*delta

	
	elif Var.tetha>=270 and Var.tetha<360:
		velocidad.x +=delta*cos(deg2rad(Var.tetha-2))*(Var.peso/Var.masa)*(sin(deg2rad(Var.tetha))-(-Var.friccion)*cos(deg2rad(Var.tetha)))
		velocidad.y +=delta*sin(deg2rad(Var.tetha-2))*(Var.peso/Var.masa)*(sin(deg2rad(Var.tetha))-(-Var.friccion)*cos(deg2rad(Var.tetha)))
	
	elif Var.tetha==360:
		velocidad.x +=0
		velocidad.y +=0
		
	var mover=move_and_collide(velocidad)

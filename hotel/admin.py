from django.contrib import admin
from .models import Clientes,tipoHabitacion,habitaciones,Reservaciones

# Register your models here.
admin.site.register(Clientes)
admin.site.register(tipoHabitacion)
admin.site.register(habitaciones)
admin.site.register(Reservaciones)

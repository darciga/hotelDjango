from django.contrib import admin
from hotel.models import cliente,tipoHabitacion,habitacion,reservacion

# Register your models here.
class reservacionAdmin(admin.ModelAdmin):
    list_display = ('id','cliente','habitacion','fechaEnt','fechaSal','estado')

admin.site.register(cliente)
admin.site.register(tipoHabitacion)
admin.site.register(habitacion)
admin.site.register(reservacion, reservacionAdmin)

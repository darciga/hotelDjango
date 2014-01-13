from django.db import models
from django.contrib.auth.models import User
from django.template import defaultfilters

# Create your models here.
class cliente(models.Model):
    user = models.OneToOneField(User,unique = True, related_name = 'cliente')
    ciudad = models.CharField(verbose_name = 'Ciudad', max_length = 50)
    estado = models.CharField(verbose_name = 'Estado', max_length = 50)
    direccion = models.CharField(verbose_name = 'Direccion', max_length = 50)
    telefono = models.CharField(max_length = 30)
    
    class Meta:
        verbose_name = u'Cliente'
        verbose_name_plural = u'Clientes'
    def __unicode__(self):
        return self.user.username
    
class tipoHabitacion(models.Model):
    nombre = models.CharField(verbose_name = 'Nombre', max_length = 40)
    precio = models.FloatField(verbose_name = 'Precio', blank = True, null = True)
    imagentipo  = models.ImageField(upload_to = 'uploads/tipoHabitacion/', blank = True, null = True,verbose_name = 'Imagen del tipo de habitacion')
    descripcion = models.CharField(verbose_name = 'Descripcion',max_length=100,blank=True,null=True)
    slug = models.SlugField(max_length=100,blank=True,null=True)

    def save(self,*args,**kwargs):
        self.slug = defaultfilters.slugify(self.nombre)
        super(tipoHabitacion,self).save(*args,**kwargs)

    class Meta:
        verbose_name = u'Tipo habitacion'
        verbose_name_plural = u'Tipo habitacion'
    
    def __unicode__(self):
        return self.nombre

class habitacion(models.Model):
    nombre = models.CharField(verbose_name = 'Nombre', max_length = 30)
    tipo = models.ForeignKey(tipoHabitacion, verbose_name = 'Tipo de habitacion')
    estado = models.IntegerField(verbose_name = 'Estado', default = 1, help_text = 'Ocupada 0, Desocupada 1, Mantenimiento 2')
    descripcion = models.CharField(verbose_name = 'Descripcion de la habitacion', max_length = 255)
    imagenhab  = models.ImageField(upload_to = 'uploads/Habitaciones/', blank = True, null = True,verbose_name = 'Imagen de la habitacion')
    slug = models.SlugField(max_length=100,blank=True,null=True)

    def save(self,*args,**kwargs):
        self.slug = defaultfilters.slugify(self.nombre)
        super(habitacion,self).save(*args,**kwargs)

    class Meta:
        verbose_name = u'Habitacion'
        verbose_name_plural = u'Habitaciones'
            
    def __unicode__(self):
        return self.nombre

class reservacion(models.Model):
    cliente = models.ForeignKey(cliente, verbose_name = 'Cliente')
    habitacion = models.ForeignKey(habitacion, verbose_name = 'Habitacion')
    fechaCrea = models.DateTimeField(auto_now = True)
    fechaEnt = models.DateField(verbose_name = 'Fecha de entrada',auto_now = False)
    fechaSal = models.DateField(verbose_name = 'Fecha de salida', auto_now = False)
    estado = models.IntegerField(verbose_name = 'Estado', default = 1, help_text = 'Tomada 0, En espera 1')
    num_a = models.IntegerField(verbose_name = 'Numero de adultos')
    num_n = models.IntegerField(verbose_name = 'Numero de ninios', null = True)
    
    class Meta:
        verbose_name = u'Reservacion'
        verbose_name_plural = u'Reservaciones'
    
    def __unicode__(self):
        return unicode(self.cliente)
    
    
    
    
    
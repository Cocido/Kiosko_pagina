from django.db import models

class rubro(models.Model):
    id_rubro = models.AutoField(primary_key = True, null = False)
    descrip_r = models.CharField(max_length = 15)

    def __str__(self):
        return self.descrip_r

class articulo(models.Model):
    id_art = models.AutoField(primary_key = True, null = False)
    nombre_art = models.CharField(max_length = 25, unique = True)
    precio_a = models.DecimalField(max_digits = 3, decimal_places = 2)
    id_rubro = models.ForeignKey(rubro, on_delete = models.CASCADE)
    cant_a = models.IntegerField()

class tipo_persona(models.Model):
    id_tpo_persona = models.AutoField(primary_key = True, null = False)
    descripcion_tpo_p = models.CharField(max_length = 15)

    def __str__(self):
        return self.descripcion_tpo_p

class det_factura(models.Model):
    id_det_factura = models.AutoField(primary_key = True, null = False)
    precio_t = models.DecimalField(max_digits = 3, decimal_places = 2)
    fecha_c = models.DateTimeField(auto_now = True)
    id_tpo_persona = models.ForeignKey(tipo_persona, on_delete = models.CASCADE)

class factura(models.Model):
    id_factura = models.AutoField(primary_key = True, null = False)
    Descripcion = models.CharField(max_length = 100)
    id_art = models.ForeignKey(articulo, on_delete = models.CASCADE)
    id_det_factura = models.ForeignKey(det_factura, on_delete = models.CASCADE)

class legajo_empleado(models.Model):
    id_legajo_empl = models.AutoField(primary_key = True, null = False)
    antiguedad = models.CharField(max_length = 5)
    salario = models.DecimalField(max_digits = 3, decimal_places = 2)

    def __str__(self):
        return self.antiguedad


class domicilio(models.Model):
    id_domicilio = models.AutoField(primary_key = True, null = False)
    descripcion = models.CharField(max_length = 150)

    def __str__(self):
        return self.descripcion

class contacto(models.Model):
    id_contacto = models.AutoField(primary_key = True, null = False)
    telefono = models.DecimalField(max_digits = 100, decimal_places = 10)
    correo_electronico = models.EmailField()

    def __str__(self):
        return self.telefono

class datos_personales(models.Model):
    id_datos_personales = models.AutoField(primary_key = True, null = False)
    nombre = models.CharField(max_length = 40)
    apellido = models.CharField(max_length = 40)
    fecha_nac = models.DateTimeField()
    id_domicilio = models.ForeignKey(domicilio, on_delete = models.CASCADE)
    id_contacto = models.ForeignKey(contacto, on_delete = models.CASCADE)
    def __str__(self):
        return self.nombre

class proveedor(models.Model):
    id_proveedor = models.AutoField(primary_key = True)
    descripcion = models.CharField(max_length = 40)

class persona(models.Model):
    id_persona = models.AutoField(primary_key = True, null = False)
    id_datos_personales = models.ForeignKey(datos_personales, on_delete = models.CASCADE)
    id_tpo_persona = models.ForeignKey(tipo_persona, on_delete = models.CASCADE)
    id_legajo_empl = models.ForeignKey(legajo_empleado, on_delete = models.CASCADE)

class detalle_venta(models.Model):
    id_detalle_venta = models.AutoField(primary_key = True, null = False)
    fecha_venta = models.DateTimeField(auto_now = True)
    precio = models.DecimalField(max_digits = 3, decimal_places = 3)
    cantidad_ventas = models.IntegerField()

class venta(models.Model):
    id_venta = models.AutoField(primary_key = True, null = False)
    id_factura = models.ForeignKey(factura, on_delete = models.CASCADE)
    id_detalle_venta = models.ForeignKey(detalle_venta, on_delete = models.CASCADE)
    id_persona = models.ForeignKey(persona, on_delete = models.CASCADE)

class asd(models.Model):
    id_asd = models.AutoField(primary_key = True, null = False)



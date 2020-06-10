from django.contrib import admin
from .models import rubro, articulo, tipo_persona, det_factura, factura, legajo_empleado, domicilio, contacto, datos_personales, proveedor, persona, detalle_venta, venta
# Register your models here.

admin.site.register(rubro)
admin.site.register(articulo)
admin.site.register(tipo_persona)
admin.site.register(det_factura)
admin.site.register(factura)
admin.site.register(legajo_empleado)
admin.site.register(domicilio)
admin.site.register(contacto)
admin.site.register(datos_personales)
admin.site.register(proveedor)
admin.site.register(persona)
admin.site.register(detalle_venta)
admin.site.register(venta)

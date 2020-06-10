from django.urls import path
from aplicaciones.inicio.views import index, agregar, listar, editar, eliminar, agregar_persona, listar_persona, editar_persona, eliminar_persona

urlpatterns = [
    path('', index, name="index"),
    path('agregar/', agregar, name="agregar"),
    path('listar/', listar, name="listar"),
    path('editar/<int:id>/', editar, name="editar"),
    path('eliminar/<int:id>/', eliminar, name="eliminar"),
    path('agregar_persona/', agregar_persona, name="agregar_persona"),
    path('listar_persona/', listar_persona, name="listar_persona"),
    path('editar_persona/<int:id>/', editar_persona, name="editar_persona"),
    path('eliminar_persona/<int:id>/', eliminar_persona, name="eliminar_persona"),
]

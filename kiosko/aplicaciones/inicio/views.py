from django.shortcuts import render, redirect
from .models import articulo, persona
from .forms import articuloForm, PersonaForm

def index(request):

    return render(request,'index.html', {})

def agregar(request):
    if request.method == 'GET':
        form = articuloForm()
        objeto ={
            'form':form
        }
    else:
        form = articuloForm(request.POST)
        objeto ={
            'form':form
        }
        if form.is_valid():
            form.save()
            return redirect('listar')
    return render(request,'agregar.html', objeto)

def listar(request):
    articulos = articulo.objects.all()

    objetos = {
        'articulos':articulos
    }
    return render(request,'listar.html', objetos)

def editar(request,id):
    articulos = articulo.objects.get(id_art = id)
    if request.method == 'GET':
        form = articuloForm(instance = articulos)
        objeto = {
            'form': form
        }
    else:
        form = articuloForm(request.POST, instance = articulos)
        objeto = {
            'form': form
        }
        if form.is_valid():
            form.save()
            return redirect('listar')
    return render(request, 'agregar.html', objeto)

def eliminar(request,id):
    articulos = articulo.objects.get(id_art = id)
    articulos.delete()
    return redirect('listar')

def agregar_persona(request):
    if request.method == 'GET':
        form = PersonaForm()
        objeto ={
            'form':form
        }
    else:
        form = PersonaForm(request.POST)
        objeto ={
            'form':form
        }
        if form.is_valid():
            form.save()
            return redirect('listar_persona')
    return render(request,'agregar.html', objeto)

def listar_persona(request):
    personas = persona.objects.all()

    objetos = {
        'personas':personas
    }
    return render(request,'listar_persona.html', objetos)

def editar_persona(request,id):
    personas = persona.objects.get(id_persona = id)
    if request.method == 'GET':
        form = PersonaForm(instance = personas)
        objeto = {
            'form': form
        }
    else:
        form = PersonaForm(request.POST, instance = personas)
        objeto = {
            'form': form
        }
        if form.is_valid():
            form.save()
            return redirect('listar_persona')
    return render(request, 'agregar_persona.html', objeto)

def eliminar_persona(request,id):
    personas = persona.objects.get(id_persona = id)
    personas.delete()
    return redirect('listar_persona')


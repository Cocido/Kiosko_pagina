# Generated by Django 3.0.6 on 2020-06-04 00:55

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('inicio', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='contacto',
            fields=[
                ('id_contacto', models.AutoField(primary_key=True, serialize=False)),
                ('telefono', models.IntegerField()),
                ('correo_electronico', models.EmailField(max_length=254)),
            ],
        ),
        migrations.CreateModel(
            name='datos_personales',
            fields=[
                ('id_datos_personales', models.AutoField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=40)),
                ('apellido', models.CharField(max_length=40)),
                ('fecha_nac', models.DateTimeField()),
                ('id_contacto', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inicio.contacto')),
            ],
        ),
        migrations.CreateModel(
            name='detalle_venta',
            fields=[
                ('id_detalle_venta', models.AutoField(primary_key=True, serialize=False)),
                ('fecha_venta', models.DateTimeField(auto_now=True)),
                ('precio', models.DecimalField(decimal_places=3, max_digits=3)),
                ('cantidad_ventas', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='domicilio',
            fields=[
                ('id_domicilio', models.AutoField(primary_key=True, serialize=False)),
                ('descripcion', models.CharField(max_length=150)),
            ],
        ),
        migrations.CreateModel(
            name='factura',
            fields=[
                ('id_factura', models.AutoField(primary_key=True, serialize=False)),
                ('Descripcion', models.CharField(max_length=100)),
                ('id_art', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inicio.articulos')),
                ('id_det_factura', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inicio.det_factura')),
            ],
        ),
        migrations.CreateModel(
            name='legajo_empleado',
            fields=[
                ('id_legajo_empl', models.AutoField(primary_key=True, serialize=False)),
                ('antiguedad', models.CharField(max_length=5)),
                ('salario', models.DecimalField(decimal_places=2, max_digits=3)),
            ],
        ),
        migrations.CreateModel(
            name='persona',
            fields=[
                ('id_persona', models.AutoField(primary_key=True, serialize=False)),
                ('id_datos_personales', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inicio.datos_personales')),
                ('id_legajo_empl', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inicio.legajo_empleado')),
            ],
        ),
        migrations.CreateModel(
            name='proveedores',
            fields=[
                ('id_proveedor', models.AutoField(primary_key=True, serialize=False)),
                ('descripcion', models.CharField(max_length=40)),
            ],
        ),
        migrations.CreateModel(
            name='venta',
            fields=[
                ('id_venta', models.AutoField(primary_key=True, serialize=False)),
                ('id_detalle_venta', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inicio.detalle_venta')),
                ('id_factura', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inicio.factura')),
                ('id_persona', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inicio.persona')),
            ],
        ),
        migrations.AddField(
            model_name='persona',
            name='id_proveedor',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inicio.proveedores'),
        ),
        migrations.AddField(
            model_name='persona',
            name='id_tpo_persona',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inicio.tipo_persona'),
        ),
        migrations.AddField(
            model_name='datos_personales',
            name='id_domicilio',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inicio.domicilio'),
        ),
    ]

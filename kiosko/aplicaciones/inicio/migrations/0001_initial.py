# Generated by Django 3.0.6 on 2020-06-03 20:46

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='rubros',
            fields=[
                ('id_rubro', models.AutoField(primary_key=True, serialize=False)),
                ('descrip_r', models.CharField(max_length=15)),
            ],
        ),
        migrations.CreateModel(
            name='tipo_persona',
            fields=[
                ('id_tpo_persona', models.AutoField(primary_key=True, serialize=False)),
                ('descripcion_tpo_p', models.CharField(max_length=15)),
            ],
        ),
        migrations.CreateModel(
            name='det_factura',
            fields=[
                ('id_det_factura', models.AutoField(primary_key=True, serialize=False)),
                ('precio_t', models.DecimalField(decimal_places=2, max_digits=3)),
                ('fecha_c', models.DateTimeField(auto_now=True)),
                ('id_tpo_persona', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inicio.tipo_persona')),
            ],
        ),
        migrations.CreateModel(
            name='articulos',
            fields=[
                ('id_art', models.AutoField(primary_key=True, serialize=False)),
                ('nombre_art', models.CharField(max_length=25)),
                ('precio_a', models.DecimalField(decimal_places=2, max_digits=3)),
                ('cant_a', models.IntegerField()),
                ('id_rubro', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inicio.rubros')),
            ],
        ),
    ]

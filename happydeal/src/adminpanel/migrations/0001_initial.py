# -*- coding: utf-8 -*-
# Generated by Django 1.9.4 on 2016-03-08 09:27
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='cart',
            fields=[
                ('cart_id', models.AutoField(primary_key=True, serialize=False)),
            ],
        ),
        migrations.CreateModel(
            name='categories',
            fields=[
                ('c_id', models.AutoField(primary_key=True, serialize=False)),
                ('c_name', models.CharField(blank=True, max_length=100, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='metadetails',
            fields=[
                ('m_id', models.AutoField(primary_key=True, serialize=False)),
                ('meta_tag', models.CharField(blank=True, max_length=100, null=True)),
                ('meta_detail', models.CharField(blank=True, max_length=100, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='order',
            fields=[
                ('o_id', models.AutoField(primary_key=True, serialize=False)),
            ],
        ),
        migrations.CreateModel(
            name='product',
            fields=[
                ('p_id', models.AutoField(primary_key=True, serialize=False)),
                ('p_name', models.CharField(blank=True, max_length=100, null=True)),
                ('price', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='subcategories',
            fields=[
                ('s_id', models.AutoField(primary_key=True, serialize=False)),
                ('s_name', models.CharField(blank=True, max_length=100, null=True)),
                ('sc_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='adminpanel.categories')),
            ],
        ),
        migrations.CreateModel(
            name='userac',
            fields=[
                ('u_id', models.AutoField(primary_key=True, serialize=False)),
                ('user_name', models.CharField(max_length=100, unique=True)),
                ('user_password', models.CharField(blank=True, max_length=100, null=True)),
            ],
        ),
        migrations.AddField(
            model_name='product',
            name='ps_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='adminpanel.subcategories'),
        ),
        migrations.AddField(
            model_name='order',
            name='op_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='adminpanel.product'),
        ),
        migrations.AddField(
            model_name='order',
            name='ou_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='adminpanel.userac'),
        ),
        migrations.AddField(
            model_name='metadetails',
            name='mp_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='adminpanel.product'),
        ),
        migrations.AddField(
            model_name='cart',
            name='op_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='adminpanel.product'),
        ),
        migrations.AddField(
            model_name='cart',
            name='ou_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='adminpanel.userac'),
        ),
    ]
# README

## Iniciar Proyecto
ruby -v
```
ruby 3.1.0
```

rails -v 
```
Rails 7.0.3.1
```

### Configuración
Ejecutar
```
bundle
```

### Cargar Datos
Datos base
```
 rake db:seed
```

Ejecutar rakes
1 Establecer dias
```
  rake "day:set_days"
```

2 Establecer horas, por dias
```
	rake "day:set_hours"
```

3. Cargar contratos
```
rake "contract:generate_new"
```

4. Ejecutar Proyecto
```
rails s
```

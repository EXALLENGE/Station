  
class Station
  def initialize(name_station)
    @name_station = name_station
    @stationTrains = array.new
  end

  def staying_train(name_train) # поезд прибыл на станцию
    
    @stationTrains = @stationTrains + [name_train]
    @stationTrains.each { |train| puts train }
  end

  def waning_train(name_train) # поезд покидает станцию
    
    @stationTrains = @stationTrains - [name_train]
    @stationTrains.each { |train| puts train }
  end

end

class Route
  attr_reader :@route0 # выводим всесь маршрут для прикрепления к поезду
  def initialize(start_station, finish_station) # начало и конец маршрута
    @start_station = [start_station]
    @finish_station = [finish_station]
    @route0 = @start_station + @finish_station
    @intermediate_station = array.new
  end
  
  def intermediate_station(name_station) # добавление станции
    @intermediate_station= @intermediate_station + [name_station]
    @route0 = @start_station + @intermediate_station + @finish_station
    
  end
  
  def delete_station(name_station) # удаление станции
    @intermediate_station = @intermediate_station - [name_station]
    @route0 = @start_station + @intermediate_station + @finish_station
    
  end
  
  def conclusion
    @route.each { |x| puts x } # перечисление маршрута
  end
end
class Train
  def initialize(number,type1,wagon) # номер тип транспорта число вагонов
    @number = number
    @type1 = type1
    @wagon = wagon
    @speed=0
  end
  
  
  def speed_change(num) #меняем скорость на любое значение, при отрицательном значение скорость 0
    @speed=@speed+num
    if @speed < 0
      @speed=0
      put @speed
    end
  end
  def wagon_sum # повышаем число вагонов
    if @speed==0
      @wagon+=1
      puts @wagon
    end
  end
  
  def wagon_del #понижаем число вагонов
    if @speed==0
      @wagon-=1
      puts @wagon
    end
  end
  
  def train_route # передаем данные о маршруте
    @train_r=Route.route0
    @N=0
  end
  
  def train_up  #перемещение вперед НЕ УЧИТЫВАЛОСЬ ЧТО ЗНАЧЕНИЕ ПРИВЫСИТ ПОРОГ
    @N+=1
    puts "train at the station #{train_r[N]}"
  end
  def train_down #перемещение назад
    @N-=1
    puts "train at the station #{train_r[N]}"
  end
 
   
    


    

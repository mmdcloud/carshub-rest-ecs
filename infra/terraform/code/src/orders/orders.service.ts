import { Inject, Injectable } from '@nestjs/common';
import { UpdateOrderDto } from './dto/update-order.dto';
import { Order } from './entities/order.entity';
import { Inventory } from 'src/inventory/entities/inventory.entity';

@Injectable()
export class OrdersService {
  constructor(
    @Inject('ORDERS_REPOSITORY')
    private ordersRepository: typeof Order,
    @Inject('INVENTORY_REPOSITORY')
    private inventoryRepository: typeof Inventory
  ) { }
  async create(createOrderDto): Promise<Order> {
    var order = new Order(createOrderDto);
    order.day = parseInt(createOrderDto.date.split("-")[2]);
    order.month = parseInt(createOrderDto.date.split("-")[1]);
    order.year = parseInt(createOrderDto.date.split("-")[0]);
    await this.inventoryRepository.update({
      status: "Completed"
    },{
      where:{
        id:order.inventoryId
      }
    });
    return await order.save();
  }

  async findAll(): Promise<Order[]> {
    return this.ordersRepository.findAll<Order>({
      include:["buyer","inventory"]
    });
  }

  async findOne(id: number): Promise<Order> {
    return this.ordersRepository.findByPk<Order>(id,{
      include:["buyer","inventory"]
    });
  }

  async update(id: number, updateOrderDto: UpdateOrderDto): Promise<[number, Order[]]> {
    const [affectedCount, affectedRows] = await this.ordersRepository.update(updateOrderDto, {
      where: { id },
      returning: true,
    });
    return [affectedCount, affectedRows as Order[]];
  }

  async remove(id: number): Promise<number> {
    return this.ordersRepository.destroy({ where: { id: id } });
  }
}

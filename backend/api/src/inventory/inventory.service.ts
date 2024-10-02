import { Inject, Injectable } from '@nestjs/common';
import { UpdateInventoryDto } from './dto/update-inventory.dto';
import { Inventory } from './entities/inventory.entity';
const AWS = require('aws-sdk');

@Injectable()
export class InventoryService {
  constructor(
    @Inject('INVENTORY_REPOSITORY')
    private inventoryRepository: typeof Inventory
  ) { }

  async getSignedUrl(payload): Promise<object> {
    const s3 = new AWS.S3();
    const myBucket = 'theplayer007-vehicle-images';
    const myKey = payload.filename;
    const signedUrlExpireSeconds = 60 * 5;

    const url = await s3.getSignedUrlPromise('putObject', {
        Bucket: myBucket,
        Key: myKey,
        Expires: signedUrlExpireSeconds
    });

    console.log(url);
    const response = {
        statusCode: 200,
        body: url,
    };
    return response;
  }

  async create(createInventoryDto): Promise<Inventory> {
    const record = new Inventory(createInventoryDto);
    return await record.save();
  }

  async findAll(): Promise<Inventory[]> {
    return this.inventoryRepository.findAll<Inventory>({
      include: ["model","owner"]
    });
  }

  async findOne(id: number): Promise<Inventory> {
    return this.inventoryRepository.findByPk<Inventory>(id,{
      include: ["model","owner"]
    });
  }

  async update(id: number, updateInventoryDto: UpdateInventoryDto): Promise<[number, Inventory[]]> {
    const [affectedCount, affectedRows] = await this.inventoryRepository.update(updateInventoryDto, {
      where: { id },
      returning: true,
    });
    return [affectedCount, affectedRows as Inventory[]];
  }

  async remove(id: number): Promise<number> {
    return this.inventoryRepository.destroy({ where: { id: id } });
  }
}

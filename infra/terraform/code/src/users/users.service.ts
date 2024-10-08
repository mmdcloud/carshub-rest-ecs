import { Inject, Injectable } from '@nestjs/common';
import { UpdateUserDto } from './dto/update-user.dto';
import { User } from './entities/user.entity';
import * as bcrypt from 'bcrypt';
import { JwtService } from '@nestjs/jwt';
import { LoginResponse } from './dto/login-response.dto';
import { LoginRequestDto } from './dto/login-request.dto';

@Injectable()
export class UsersService {
  constructor(
    @Inject('USERS_REPOSITORY')
    private usersRepository: typeof User,
    private jwtService: JwtService
  ) { }
  async create(createUserDto): Promise<User> {
    const user = new User(createUserDto);
    const salt = await bcrypt.genSalt();
    const hash = await bcrypt.hash(user.password, salt);
    user.password = hash;
    return await user.save();
  }

  async findAll(): Promise<User[]> {
    return this.usersRepository.findAll<User>();
  }

  async findOne(id: number): Promise<User> {
    return this.usersRepository.findByPk<User>(id);
  }

  async update(id: number, updateUserDto: UpdateUserDto): Promise<[number, User[]]> {
    const [affectedCount, affectedRows] = await this.usersRepository.update(updateUserDto, {
      where: { id },
      returning: true,
    });
    return [affectedCount, affectedRows as User[]];
  }

  async remove(id: number): Promise<number> {
    return this.usersRepository.destroy({ where: { id: id } });
  }

  async login(loginRequest: LoginRequestDto): Promise<LoginResponse> {
    var response = new LoginResponse();
    var record = await this.usersRepository.findAll<User>({
      where: {
        contact: loginRequest.contact
      }
    });
    if (record.length == 0) {
      response.msg = "User not found !";
      response.state = "fail";
      return response;
    }
    const isMatch = await bcrypt.compare(loginRequest.password, record[0].password);
    if (!isMatch) {
      response.msg = "Invalid password !";
      response.state = "fail";
      return response;
    }
    response.msg = "Login successful !";
    response.state = "success";
    response.access_token = await this.jwtService.signAsync({
      sub: record[0].id, contact: record[0].contact, id: record[0].id
    });
    return response;
  } 
}

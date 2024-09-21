import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return 'Hello World has changed after adding database and phpmyadmin!';
  }
}

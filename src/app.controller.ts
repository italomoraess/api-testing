import { Controller, Get } from '@nestjs/common';

@Controller()
export class AppController {
  constructor(private readonly) {}

  @Get()
  getHello(): string {
    return 'TESTE DEPLOY';
  }
}

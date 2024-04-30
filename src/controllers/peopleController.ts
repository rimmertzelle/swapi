import { Request, Response } from 'express';
// import { PrismaClient } from '../../node_modules/.prisma/client.ts';
import { PrismaClient } from '../../node_modules/.prisma/client/default.js';
// import { PrismaClient } from '@prisma/client';
const prisma: PrismaClient = new PrismaClient();

interface People{
  id: number,
  name: string,
  gender: string,
  skin_color: string,
  hair_color: string,
  eye_color: string,
  mass: string,
  birth_year: string,
  homeworld: number,
  created: Date,
  edited: Date,
  height: string
}

/**
 *
 * @param req - the Request object
 * @param res - The Reponse object
 */
export function responseExample(req: Request, res: Response): void {
  res.status(200).send('everything went well');
}

interface ModelExample {
  name: string,
  age: number
}

/**
 *
 * @param req - the Request object
 * @param res - The Reponse object
 */
export function updateExample(req: Request, res: Response): void {
  //if you add different attributes to the body, it will not give an error
  const body: ModelExample = req.body;
  res.status(200).send(`Hi 🤭; I got this data: ${JSON.stringify(body)}?`);
}

interface peopleResponse {
  meta: {
    count: number
    title: string
    url: string
  },
  data: People[]
}

/**
 * Function to get all people
 * @param req {Request} - The Request object
 * @param res {Response} - The Response object
 * @returns {Promise<void>}
 */
export async function getPeople(req: Request, res: Response): Promise<void> {
  const people: People[] = await prisma.people.findMany();
  const peopleResponse: peopleResponse = {
    meta: {
      count: people.length,
      title: 'All people from Star Wars API',
      url: req.url
    },
    data: people
  };
  res.status(200).send(peopleResponse);
}

/**
 * Function to get a person by id
 * @param req {Request} - The Request object
 * @param res {Response} - The Response object
 * @returns {Promise<void>}
 */
export async function getPerson(req: Request, res: Response): Promise<void> {
  const id: number = parseInt(req.params.id);
  const person: People = await prisma.people.findUnique({
    where: {
      id: id
    }
  });
  res.status(200).send(person);
}

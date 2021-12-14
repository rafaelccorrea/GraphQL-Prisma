import { ApolloServer } from 'apollo-server'
import { PrismaClient } from '@prisma/client'
import schema from './schema'

const prisma = new PrismaClient({ log: ['query']})

const server = new ApolloServer({ schema, context: { prisma } })
server.listen({ port: 3800 }, () => console.log(`Servidor pronto em localhost:3800`)) 
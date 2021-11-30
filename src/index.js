const { ApolloServer, gql } = require('apollo-server')

const typeDefs = gql`
 type User {
   nome: String
 }
 type Query {
   users: [User]
 }
`

const resolvers = {
 Query: {
   users: () => [{ nome: "Ana" }, {nome: "Bia" }]
 }
}

const server = new ApolloServer({ typeDefs, resolvers })
server.listen({ port: 3800 }, () => console.log(`Servidor pronto em localhost:3800`)) 
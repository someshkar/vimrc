const app = require('fastify')()
const fs = require('fs')

app.get('/*', async (req, reply) => {
  const stream = await fs.createReadStream('./setup.sh')
  reply.type('text/plain').send(stream)
})

app.listen(process.env.PORT || 3000, (err) => {
  if (err) throw err
})

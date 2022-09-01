# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users x 6 (a,b,c,d,e,f)

# Friendship x 5

# Huddles x 10 total

# -today (time confirmed) x 3 (no invites needed)

# -time not confirmed x 7 (invites needed)

# --invitations 27 total

# ---as host x 2 (= 9) (hosted by a)

# ----host(1) host: a, invitees: b, c, d, e (waiting confirmation)
# -----> 5 confirmed invites

# ----host(2) host: a, invitees: b, c, d (pending: b )
# -----> 3 confirmed invites, 1 pending invites

# ---as invitee x 5 (= 18) (hosted by b,c,d) (4~5 participants max)

# ----invitee(1) host: b, invitees: a, c, d, e, f (pending: a, c, e)
# -----> 3 confirmed invites, 3 pending invites

# ----invitee(2) host: b, invitees: a, c, d, e (pending: a)
# -----> 4 confirmed invites, 1 pending invites

# ----invitee(3) host: b, invitees: a, c, d (pending: a)
# -----> 3 confirmed invites, 1 pending invites

# ----invitee(4) host: b, invitees: a, c (pending: a)
# -----> 2 confirmed invites, 1 pending invites

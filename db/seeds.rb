
# families = Family.create([
#
#   { last_name: 'Gerard' },
#   { last_name: 'Bazzarone' },
#   { last_name: 'Smith' },
#   { last_name: 'Jones' }
#
#   ])


  gerard = Family.create(last_name: 'Gerard')
  bazzarone = Family.create(last_name: 'Bazzarone')
  smith = Family.create(last_name: 'Smith')
  jones = Family.create(last_name: 'Jones')

  # members = [
  #   {
  #     first_name: 'Caroline',
  #     dob: '1993-01-22 09:03:36'
  #   },
  #   {
  #     first_name: 'Lizzy',
  #     dob: '1995-01-28 10:03:36'
  #   },
  #   {
  #     first_name: 'Christian',
  #     middle_name: 'James',
  #     dob: '1997-04-30 12:03:36'
  #   },
  #   {
  #     first_name: 'Ashley',
  #     middle_name: 'Ann',
  #     dob: '1991-04-17 12:03:36'
  #   }
  #   ]

  caroline = Member.create(first_name: "Caroline", dob: '1990-07-11 17:13:00', family_id: gerard.id, username: 'caroline', password: '123', middle_name: 'Middle')


  memories = Memory.create([

    {
      title: '5th grade graduation',
      body: 'it was so fun!',
      member_id: caroline.id
    },
    {
      title: '3rd grade sockhop',
      body: 'it was so fun!',
      member_id: caroline.id
    },
    {
      title: 'your 3rd birthday',
      body: 'it was so fun!',
      member_id: caroline.id
    },
    {
      title: 'spring break',
      body: 'it was so fun!',
      member_id: caroline.id
    },
    {
      title: 'the morning after the night in the hospital',
      body: 'it was so fun!',
      member_id: caroline.id
    },
    {
      title: 'birthday party story',
      body: 'it was so fun!',
      member_id: caroline.id
    },
    {
      title: '5th grade graduation',
      body: 'it was so fun!',
      member_id: caroline.id
    },
    {
      title: '3rd grade sockhop',
      body: 'it was so fun!',
      member_id: caroline.id
    },
    {
      title: 'your 3rd birthday',
      body: 'it was so fun!',
      member_id: caroline.id
    },
    {
      title: 'spring break',
      body: 'it was so fun!',
      member_id: caroline.id
    }
    ])

from faker import Faker
fake = Faker(['ja_JP'])
for _ in range(30):
    print(fake.name())

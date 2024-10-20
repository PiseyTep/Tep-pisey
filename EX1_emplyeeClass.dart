class Employee {
  final String name;
  final double baseSalary;
  final List<String> skills;
  final Address address;
  final int yearsOfExperience;

  Employee({
    required this.name,
    required this.baseSalary,
    required this.skills,
    required this.address,
    required this.yearsOfExperience,
  });

  double computeSalary() {
    double salary = baseSalary;
    salary += yearsOfExperience * 2000;
    for (var skill in skills) {
      if (skill == 'FLUTTER') {
        salary += 5000;
      } else if (skill == 'DART') {
        salary += 3000;
      } else if (skill == 'OTHER') {
        salary += 1000;
      }
    }
    return salary;
  }
}

class Address {
  final String street;
  final String city;
  final int zipCode;

  Address({
    required this.street,
    required this.city,
    required this.zipCode,
  });
}

void main() {
  var employee = Employee(
    name: 'Sok',
    baseSalary: 40000,
    skills: ['FLUTTER', 'DART'],
    address: Address(
      street: '123 Main St',
      city: 'Anytown',
      zipCode: 12345,
    ),
    yearsOfExperience: 5,
  );

  print('Employee Salary: ${employee.computeSalary()}');
}

# 🌍 About Project
clean architecture Core.

# 🛠 Built With
- platform/ language: [SwiftyUI / Swift](https://developer.apple.com/tutorials/swiftui/)
- architecture: [BLOC](https://medium.com/codechai/architecting-your-flutter-project-bd04e144a8f1) / [Clean architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)

# 📐 Structure and Architecture

### source structure :
```
/core
  lib/
    core/
        base/
          data/ 
                local/
                remote/
                repositories/
          domain/
                  entities/
                  repositories/
                  usecase/
        di/
            base/
            local/
            network/
        service/
                network/
                storage/
        validators/    
    l10n/
    utils/
          constants/
          enumeration/
          extension/
          helper/
```

**utils**: includes extension functions and constants.
* constants : includes all constants.
* extension : includes all extension.
* enumeration : includes all Enum.
* helper : includes all assets and utils.

**core**: includes error hand-long, general use-cases ....
* **base** : includes all extension.
* **di** : includes dependency injection related files.
* **service** : includes dependency injection related files.
* **uikit**: includes widgets, general ui component, styles, colors, ....
* **validators**: includes all regex, ....

**data**: includes data sources, models.
**domain**: is clean architecture domain layout (include use-cases, entities, ...).
**presentation**: includes all feature pages and presentation base classes.

**l10n**: includes strings in different language.

### Cleaning :

- No DRY violations. Create utility files to avoid duplicate code.
- Components should follow the single responsibility principle.
- If you have unfinished task, put a `TODO` before commit.
- Methods that are longer than the screen should be refactored into smaller units.


# 🧾 Coding Rules

### Naming

| what | how     | etc    |
| :-------- | :------- | :---------- |
| Classes, enums, typedefs | Pascal Case | ProductBloc  |
| Libraries, packages, directories, and source files names | snake_case | product_detail_view  |
| Variables, constants, parameters, and named parameters | camel Case | variants  |

### Cleaning
[Read this article about clean coding in flutter]("https://medium.com/flutter-community/flutter-best-practices-and-tips-7c2782c9ebb5")
- Create widgets int uikit for common components
- Don't use directly colors or font style, use uikit
- Split widgets into sub Widgets
- Create components package for sub widgets in each features
- Specify types for class member
- Use if condition instead of conditional expression
- Use ?? and ?. operators
- User cascade operators
    ```
    // Don't
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();


    // Do
    var path = Path()
    ..lineTo(0, size.height)
    ..lineTo(size.width, size.height)
    ..lineTo(size.width, 0)
    ..close();

    ```
- Use Const in Widgets

# ⛑ Code Review

**What Do Code Reviewers Look For?**
- Code reviews should look at:

- Design: Is the code well-designed and appropriate for your system?
- Functionality: Does the code behave as the author likely intended? Is the way the code behaves well for its users?
- Complexity: Could the code be made simpler? Would another developer be able to easily understand and use this code when they come across it in the future?
- Tests: Does the code have correct and well-designed automated tests?
- Naming: Did the developer choose clear names for variables, classes, methods, etc.?
- Comments: Are the comments clear and useful?
- Style: Does the code follow our style guides?
- Documentation: Did the developer also update relevant documentation?
- How to implement code review?


**According to the above points every merge request (pull request), must meet the check-list for ensuring about any concern maybe happened in the process.**

- check branch is not broken
- check feature is fulfill
- check test-case is passed
- check code style (with lint or manually)
- check readability
- check side-effects
- check consistency with other class/package/module
- check all comments on the merge request
- The reviewer if has any point about the merge request (pull request) leaves a comment on the line.

# 📚 Acknowledgements

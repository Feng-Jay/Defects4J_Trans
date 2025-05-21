# Defects4J_Trans

Defects4J-Trans is a collection of transformed bugs from [Defects4J](https://github.com/rjust/defects4j), where each bug preserves the original code's semantics bug differs in its syntactic representation.

Contents of Defects4J-Trans
================

The projects
---------------

Defects4J contains 483 bugs from the following open-source projects:

| Identifier      | Project name               | Number of active bugs | Active bug ids      | Deprecated bug ids (\*) |
|-----------------|----------------------------|----------------------:|---------------------|-------------------------|
| Chart           | jfreechart                 |  16 | 1, 3, 17, 20, 24-26, 26 | others                  |
| Cli             | commons-cli                |  23 | 4-1, 8, 11, 14, 17, 19, 23, 32, 35, 37-40, 40 | others                  |
| Closure         | closure-compiler           | 105 | 1, 4, 7, 10, 17, 29, 31, 35, 38, 42, 44, 48, 50, 55, 61, 65, 69, 73, 77, 81, 86, 91, 94, 99, 101, 104, 107, 109, 111, 128, 145, 150, 152, 159, 164, 166, 168, 172-176, 176 | others                  |
| Codec           | commons-codec              |  11 | 2-1, 9, 15, 17-18   | others                  |
| Collections     | commons-collections        |   1 | 26                  | others                  |
| Compress        | commons-compress           |  33 | 1, 5, 7, 10, 21, 23, 30, 35, 40, 44-46 | others                  |
| Csv             | commons-csv                |  11 | 1, 9, 14-15         | others                  |
| Gson            | gson                       |   9 | 5-1, 11, 15-18      | others                  |
| JacksonCore     | jackson-core               |  13 | 3-1, 11, 15, 20, 23, 25-26 | others                  |
| JacksonDatabind | jackson-databind           |  51 | 1, 5, 11, 16, 19, 24, 27, 33, 37, 39, 42, 44, 49, 51, 54, 57, 62, 64, 67, 70, 74, 76, 82, 85, 88, 91, 93, 96, 107-112, 112 | others                  |
| JacksonXml      | jackson-dataformat-xml     |   4 | 1, 3-5              | others                  |
| Jsoup           | jsoup                      |  53 | 1, 5, 10, 13, 15, 19, 24, 26, 32, 37, 45, 53, 57, 59, 61, 64, 68, 70, 72, 75, 80, 82, 84, 88-93, 93 | others                  |
| JxPath          | commons-jxpath             |   7 | 5-1, 8, 10, 12, 21-22 | others                  |
| Lang            | commons-lang               |  42 | 1, 3, 5, 9, 14, 16, 21, 24, 26, 31, 33, 37, 42, 48, 51, 57, 61-65, 65 | others                  |
| Math            | commons-math               |  72 | 2-1, 5, 7, 13, 17, 19, 23, 30, 38, 48, 50, 55, 63, 69, 72, 78, 82, 84, 94, 101, 105-106 | others                  |
| Mockito         | mockito                    |  16 | 1, 5, 7, 12, 18, 20, 22, 24, 27, 33-38, 38 | others                  |
| Time            | joda-time                  |  16 | 4-1, 7, 14, 22-27, 27 | others                  |


\* Due to behavioral changes introduced under Java 8, some bugs are no longer
reproducible. Hence, Defects4J distinguishes between active and deprecated bugs:

- Active bugs can be accessed through `active-bugs.csv`.

- Deprecated bugs are removed from `active-bugs.csv`, but their metadata is
  retained in the project directory.

- Deprecated bugs can be accessed through `deprecated-bugs.csv`, which also
  details when and why a bug was deprecated.

We do not re-enumerate active bugs because publications using Defects4J artifacts
usually refer to bugs by their specific bug id.

The bugs
---------------
Each bug has the following properties:

- Issue filed in the corresponding issue tracker, and issue tracker identifier
  mentioned in the fixing commit message.
- Fixed in a single commit.
- Minimized: the Defects4J-Trans maintainers manually pruned out
  irrelevant changes in the commit (e.g., refactorings or feature additions).
- Fixed by modifying the source code (as opposed to configuration files,
  documentation, or test files).
- A triggering test exists that failed before the fix and passes after the fix
  -- the test failure is not random or dependent on test execution order.

The (b)uggy and (f)ixed program revisions are labelled with `<id>b` and
`<id>f`, respectively (`<id>` is an integer).


Setting up Defects4J-Trans
================

Requirements
----------------
 - Java 1.8
 - Git >= 1.9
 - SVN >= 1.8
 - Perl >= 5.0.12


If you have not yet set up Defects4J, please follow the instructions on the home page of [Defects4J](https://github.com/rjust/defects4j).

Or, if you have setup the original Defects4J, you can switch to the Defects4J-Trans easily by running:

```shell
git clone https://github.com/Feng-Jay/Defects4J_Trans.git {Path_to_Defects4J-Trans}
# first backup your original Defects4J
cp -r {Path_to_Defects4J} {Path_to_Backup}
rm -rf {Path_to_Defects4J}/framework
cp -r {Path_to_Defects4J-Trans}/Defects4J_Trans/framework {Path_to_Defects4J}
```


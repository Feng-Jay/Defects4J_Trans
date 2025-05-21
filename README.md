# Defects4J_Trans

Defects4J-Trans is a collection of transformed bugs from [Defects4J](https://github.com/rjust/defects4j), where each bug preserves the original code's semantics bug differs in its syntactic representation.

Contents of Defects4J-Trans
================

The projects
---------------

Defects4J-Trans contains 483 bugs from the following open-source projects:

| Identifier      | Project name               | Number of active bugs | Active bug ids      | Deprecated bug ids (\*) |
|-----------------|----------------------------|----------------------:|---------------------|-------------------------|
| Chart           | jfreechart                 |  16 | 1, 3-13, 17, 20, 24-26, 26 | others                  |
| Cli             | commons-cli                |  23 | 4, 5, 8, 9, 11, 12, 14, 15, 17, 19, 20, 23-29, 32, 35, 37-40, 40 | others                  |
| Closure         | closure-compiler           | 105 | 1, 2, 4, 5, 7, 10-15, 17-25, 29, 31-33, 35, 36, 38-40, 42, 44, 48, 50-53, 55-59, 61, 62, 65-67, 69-71, 73, 77, 78, 81-83, 86-88, 91, 92, 94-97, 99, 101, 102, 104, 105, 107, 109, 111-126, 128-133, 145, 146, 150, 152, 159-161, 164, 166, 168, 172-176, 176 | others                  |
| Codec           | commons-codec              |  11 | 2-7, 9, 10, 15, 17-18 | others                  |
| Collections     | commons-collections        |   1 | 26                  | others                  |
| Compress        | commons-compress           |  33 | 1, 5, 7, 8, 10-19, 21, 23-28, 30-32, 35-38, 40, 41, 44-46 | others                  |
| Csv             | commons-csv                |  11 | 1-6, 9-11, 14-15    | others                  |
| Gson            | gson                       |   9 | 5, 6, 11-13, 15-18  | others                  |
| JacksonCore     | jackson-core               |  13 | 3-8, 11, 15, 20, 21, 23, 25-26 | others                  |
| JacksonDatabind | jackson-databind           |  51 | 1, 5-9, 11, 12, 16, 17, 19, 24, 27, 28, 33-35, 37, 39, 42, 44-47, 49, 51, 54, 57, 58, 62, 64, 67, 70, 71, 74, 76, 82, 83, 85, 88, 91, 93, 96-102, 107-112, 112 | others                  |
| JacksonXml      | jackson-dataformat-xml     |   4 | 1, 3-5              | others                  |
| Jsoup           | jsoup                      |  53 | 1, 2, 5, 6, 10, 13, 15, 19, 20, 24, 26, 27, 32-35, 37-43, 45-51, 53-55, 57, 59, 61, 62, 64, 68, 70, 72, 75-77, 80, 82, 84-86, 88-93, 93 | others                  |
| JxPath          | commons-jxpath             |   7 | 5, 6, 8, 10, 12, 21-22 | others                  |
| Lang            | commons-lang               |  42 | 1, 3, 5, 6, 9-12, 14, 16-19, 21, 22, 24, 26-29, 31, 33, 37-40, 42-45, 48, 49, 51-55, 57-59, 61-65, 65 | others                  |
| Math            | commons-math               |  72 | 2, 3, 5, 7-11, 13, 17, 19-21, 23-28, 30-34, 38-45, 48, 50-53, 55-60, 63, 64, 69, 70, 72-75, 78-80, 82, 84-91, 94-97, 101-103, 105-106 | others                  |
| Mockito         | mockito                    |  16 | 1, 5, 7, 8, 12, 13, 18, 20, 22, 24, 27-29, 33-38, 38 | others                  |
| Time            | joda-time                  |  16 | 4, 5, 7, 8, 14-20, 22-27, 27 | others                  |


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


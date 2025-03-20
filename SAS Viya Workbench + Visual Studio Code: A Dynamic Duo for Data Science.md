# SAS® Viya® Workbench + Visual Studio Code: A Dynamic Duo for Data Science

This hands-on workshop demonstrates how to leverage the native integration of Visual Studio Code within SAS Viya Workbench for efficient data science programming. You'll learn to seamlessly write and execute both SAS and Python code directly in the embedded VS Code environment, streamlining your workflow.

Contents:

- [Logging in to SAS Viya Workbench](#logging-in-to-sas-viya-workbench)
- [Creating a new workbench](#creating-a-new-workbench)
- [Working in Visual Studio Code](#working-in-visual-studio-code)
- [Customizing VS Code](#customizing-vs-code)
- [Working with Git](#working-with-git)
- [Working with data](#working-with-data)
  - [Reading SAS data sets](#reading-sas-data-sets)
  - [Reading Parquet data](#reading-parquet-data)
  - [Reading a CSV file](#reading-a-csv-file)
  - [Reading a JSON file](#reading-a-json-file)
- [Accessing other data](#accessing-other-data)
  - [Uploading data](#uploading-data)
  - [Accessing databases and other cloud object storage](#accessing-databases-and-other-cloud-object-storage)
- [Interacting with Git and GitHub](#interacting-with-git-and-github)
- [Working with SAS notebooks](#working-with-sas-notebooks)

## Logging in to SAS Viya Workbench

Follow instructor's directions to get access to SAS Viya Workbench.

## Creating a new workbench

In SAS Viya Workbench's welcome screen, click on **New workbench**:

![](images/franir_2025-03-17-15-23-04.png)

In the following screen, you have access to multiple settings.

A workbench includes the following components:

- **Name**: A unique identifier for the workbench.
- **Compute Configuration**: Allows users to select the appropriate amount of computational resources based on their requirements.
- **Storage**: Defines the type and size of storage for data and programs.
- **Mounting Folder**: Specifies the path used to access the defined storage.
- **Home Folder** (optional): Provides a shared location for settings and configurations across multiple workbenches.

Name the new workbench **SASInnovate2025**.

Choose **2 cores, 8GiB RAM** (the smallest configuration) for the compute size.

Choose the default **myfolder** storage definition and default **myfolder** mounting folder.

No **home folder** will be needed for this hands-on.

Click **OK**.

![](images/franir_2025-03-18-12-19-19.png)

You should see your workbench created now.

You can also explore the UI and look at the list of workbenches and storages:

![](images/franir_2025-03-18-13-45-43.png)

Let's start the workbench:

![](images/franir_2025-03-18-13-50-28.png)

It should start in seconds. Now you have a computing environment ready to use.

You can then choose your favorite IDE to interact with this computing environment.

![](images/franir_2025-03-18-14-04-47.png)

Are you a SAS developer? A Python programmer? A R specialist?

Let's open **Visual Studio Code** as this will be the main focus of this hands-on:

![](images/franir_2025-03-18-13-51-23.png)

## Working in Visual Studio Code

You should see Visual Studio Code opening in a new browser tab:

![](images/franir_2025-03-18-16-46-58.png)

If you are not familiar with VS Code, take the time to explore the user interface.

The **Activity Bar** displays various views and applications, including SAS. Additional applications can be installed through VS Code **extensions**.

The **Primary Side Bar** displays contextual information based on the activity selected.

The **Working Area** is the place where you edit and run code, control logs and display results.

The **Explorer** activity will be the main spot to organize your data and program files:

![](images/franir_2025-03-18-16-08-37.png)

The **Source Control** activity will be important when you work with a GIT repository:

![](images/franir_2025-03-18-16-10-36.png)

The Extensions activity allows you to add extensions, customize your environment, improve your productivity with open-source tools, enrich your UI with syntax highlighting editors and much more:

![](images/franir_2025-03-18-16-17-51.png)

SAS is a perfect example of what an extension can bring to your environment: extend default VS Code capabilities with additional features, here by integrating SAS:

![](images/franir_2025-03-18-16-21-39.png)

You probably notice SAS libraries that you are familiar with, like SASHELP, SASUSER and WORK.

You also notice the MYFOLDER library which is a default library pointing to your default folder. You can use it if you want or you can defined additional ones.

## Customizing VS Code

Let's customize VS Code and choose a SAS dark theme.

Open the VS Code Menu and select **File** > **Preferences** > **Theme** > **Color Theme**:

![](images/franir_2025-03-18-16-48-51.png)

Start typing "SAS" and choose SAS Dark theme:

![](images/franir_2025-03-18-16-51-25.png)

Back in the Explorer, you can see you're in the default MYFOLDER folder.

![](images/franir_2025-03-18-16-54-27.png)

Anything stored in that folder will be saved in the storage area that you defined earlier.

This is independent of the compute environment that you're using.

You can then switch from a compute configuration to a bigger one easily while using the same data and programs.

## Working with Git

Working with Git repositories in VS Code is extremely easy.

VS Code has integrated source control management (SCM) and includes Git support out-of-the-box.

Let's clone a GitHub repository.

Open the Command Palette by selecting the VS Code Menu > **View** > **Command Palette...**:

![](images/franir_2025-03-19-09-11-34.png)

Start typing "Git C" and select **Git: Clone**:

![](images/franir_2025-03-19-09-14-06.png)

Paste the following GitHub repository URL and press Enter:

```https://github.com/SAS-Innovate-2025/SAS-Viya-Workbench-and-VS-Code.git```

:warning: Do NOT select **Clone from GitHub** as it will ask you to authenticate which we don't want.

![](images/franir_2025-03-19-09-17-08.png)

Navigate to ```/workspaces/myfolder/``` (use the "2 dots" ![](images/franir_2025-03-19-09-37-31.png) to go up one level as you probably start from ```/home/sas```) or type the path, and click **OK**:

![](images/franir_2025-03-19-09-31-16.png)

When prompted about opening the cloned repository, click **Cancel**. We will still be able to access the repository.

![](images/franir_2025-03-19-09-52-20.png)

You should now see your cloned repository folder in **Explorer**:

![](images/franir_2025-03-19-09-54-27.png)

## Working with data

​As a data scientist at an online personal styling service, you’ll use machine learning models to help us analyze customer churn. Customer “churn” simply means that our client has canceled their premium clothing subscription. And since it often is more difficult to find a new customer than keep an existing one, you will help us identify which clients are likely on the cusp of churning, so that we can find ways to retain them.​

In the cloned repository, explore the **Data** folder. It contains various data sets for our project in various formats:

![](images/franir_2025-03-19-10-42-52.png)

- Customer churn provides metrics about customer activity over the last few months,
- Customers describes customers’ attributes, such as their estimated income, homeowner status and birth date,
- Reviews lists customer reviews on recent purchases,
- Subscriptions provides meaningful details about the customer’s subscriptions,
- And technical support evaluations gives the customers’ feedback on recent interactions with Technical Support.

In this hands-on, we will focus on the data preparation part of the project.

We have two SAS data sets, one CSV file, one JSON file and one Parquet data set.

Let's see how we can integrate those data files.

*Note: Storing data in a Git repository is generally not recommended. While Git excels at version control and collaboration on text-based files like source code, it is not optimized for handling large datasets or binary files. In this hands-on example, we stored sample data in Git for simplicity.*

### Reading SAS data sets

To read SAS data sets, we just need a SAS library.

Create a new SAS file by selecting the VS Code Menu > **File** > **New File...**:

![](images/franir_2025-03-19-10-52-04.png)

Select **SAS File**:

![](images/franir_2025-03-19-10-52-53.png)

In the new SAS file, copy the following code:

```sas
libname churn "" ;
```

In the Explorer, select the **Data** folder, right-click and select **Copy Path**:

![](images/franir_2025-03-19-10-57-33.png)

Paste the copied path between the double-quotes in your code.

This should look like the following:

```sas
libname churn "/workspaces/myfolder/SAS-Viya-Workbench-and-VS-Code/Data" ;
```

You're ready to submit this code using the Run button:

![](images/franir_2025-03-19-11-05-21.png)

A new pane should have popped up showing the SAS log for this code submission. You're like in the good old SAS Display Manager!

![](images/franir_2025-03-19-11-08-05.png)

Now, go to the SAS activity (extension) to view your SAS libraries.

You should see the CHURN library and can open the CUSTOMERS table:

![](images/franir_2025-03-19-11-12-42.png)

### Reading Parquet data

We will access the Parquet data set using a SAS library. The Parquet file is at the exact same location as the SAS data sets. We will just use a different library engine.

*Note: Parquet is a **columnar storage file format** optimized for efficient data storage and retrieval. It is commonly used in big data processing frameworks like Apache Spark and Hadoop due to its ability to handle large datasets with high performance and reduced storage requirements.*

Back in your SAS file, duplicate the libname statement.

Change the library name to ```churn_pq``` for churn parquet.

Add the ```parquet``` engine between the library name and the path. 

You should have something similar to this:

```sas
libname churn_pq parquet "/workspaces/myfolder/SAS-Viya-Workbench-and-VS-Code/Data" ;
```

Run this line of code.

Check the log:

![](images/franir_2025-03-19-11-23-45.png)

And go to the SAS libraries to see if you can view the Parquet data set:

Indeed, you normally can:

![](images/franir_2025-03-19-11-25-19.png)

### Reading a CSV file

To read a CSV file, we will need to import it into a SAS data set.

In your SAS file, add the following code:

```sas
proc import file="" out=subscriptions dbms=csv replace ;
run ;
```

Copy the path to the ```subscriptions.csv``` file (right-click on the file > **Copy Path**) and insert it between the double-quotes.

This should look like the following:

```sas
proc import file="/workspaces/myfolder/SAS-Viya-Workbench-and-VS-Code/Data/subscriptions.csv" out=subscriptions dbms=csv replace ;
run ;
```

Run this SAS procedure, check the log and view the resulting data in the WORK library:

![](images/franir_2025-03-19-11-59-01.png)

### Reading a JSON file

To read a JSON file, we will also use a special library engine.

In your SAS file, add the following code:

```sas
libname rev json "" ;
proc datasets lib=rev ;
quit ;
```

Copy the path to the ```reviews.json``` file (right-click on the file > **Copy Path**) and insert it between the double-quotes.

This should look like the following:

```sas
libname rev json "/workspaces/myfolder/SAS-Viya-Workbench-and-VS-Code/Data/reviews.json" ;
proc datasets lib=rev ;
quit ;
```

Run the code.

The DATASETS procedure generates some output and should list the logical tables stored in the JSON file.

So, you should see now a **Results** pane popping up:

![](images/franir_2025-03-19-15-12-53.png)

Here we go. We have our three SAS pillars in VS Code: editor, log and output.

Check the log.

Open the resulting REVIEWS table in the REV library.

## Accessing other data

### Uploading data

### Accessing databases and other cloud object storage

## Interacting with Git and GitHub

Save the SAS program by selecting VS Code Menu > **File** > **Save** and save it in your cloned repository under Programs.

Navigate to ```/workspaces/myfolder/SAS-Viya-Workbench-and-VS-Code/Programs``` and name it ```data_access.sas```:

![](images/franir_2025-03-19-15-27-24.png)

Click **OK**.

You should notice that VS Code has detected a change in your cloned repository. Indeed, your **Source Control** activity should have a badge with at least one pending change:

![](images/franir_2025-03-19-15-36-31.png)

Open the **Source Control** activity and observe that the new SAS program that you created is listed as a pending change in the local cloned repository:

![](images/franir_2025-03-19-15-40-25.png)

You can go ahead and commit the change in the local cloned repository.

Click the **Stage All Changes** button:

![](images/franir_2025-03-19-15-44-46.png)

*Note: Clicking either of the + buttons will have the same effect, as there is only one change.*

Add a commit message and click **Commit**:

![](images/franir_2025-03-19-15-47-00.png)

All right. There's a few additional configuration steps needed to be able to commit to a git repository. Click **Cancel**:

![](images/franir_2025-03-19-15-55-19.png)

We'll stop here but you get the idea.

Once you commit a change locally, you'd have to push the changes to the remote repository, GitHub here, which would require to be authenticated against GitHub.

## Working with SAS notebooks

One of the nicest features of SAS integration in VS Studio Code is the ability to create notebooks.

A SAS notebook is similar to a Jupyter notebook. It allows you to combine text and SAS instructions and therefore document your actions in a nice-looking way.

Create a new file by selecting the VS Code Menu > **File** > **New File...**.

Select **SAS Notebook**:

![](images/franir_2025-03-19-16-09-46.png)

In a SAS notebook, we can mix:

- Markdown, a lightweight markup language used to format text with plain syntax for easy conversion to HTML or other formats,
- SAS code,
- SQL code,
- and soon Python.

In your opened SAS notebook, change the first cell language to Markdown:

![](images/franir_2025-03-20-09-52-41.png)

In the Markdown cell, paste the following code:

```markdown
# Discover data

## Customers
```

Validate the code by clicking on the check box:

![](images/franir_2025-03-20-09-56-16.png)

You should see this:

![](images/franir_2025-03-20-09-56-55.png)

Add a code cell by clicking on **+ Code**:

![](images/franir_2025-03-20-09-58-18.png)

Check that it is a SAS cell:

![](images/franir_2025-03-20-09-59-05.png)

Paste the following code in the cell to list the columns of the SAS data set:

```sas
/* List columns */
proc contents data=churn.customers varnum ;
run ;
```

Run the cell:

![](images/franir_2025-03-20-10-03-06.png)

You should get your SAS output right below your code:

![](images/franir_2025-03-20-10-03-52.png)

Add a new Markdown cell at the bottom of your output:

![](images/franir_2025-03-20-10-12-04.png)

Paste the following code:

```markdown
## Churn
```

Validate the Markdown cell and add a new code cell:

![](images/franir_2025-03-20-10-15-09.png)

Paste the following code to list the columns of the Parquet data set:

```sas
/* List columns */
proc contents data=churn_pq.customer_churn varnum ;
run ;
```

Run the cell.

![](images/franir_2025-03-20-10-18-39.png)

Add a new Markdown cell with the following level-2 title (two # signs): "**Build some distribution reports**".

Validate/submit markdown.

Add a SAS code cell, paste and run the frequency report and plot code:

```sas
proc freq data=churn_pq.customer_churn ;
   tables lostcustomer / plots=freqplot() ;
run ;
```

Check the results and the plot:

![](images/franir_2025-03-20-11-09-10.png)

You can observe that a SAS notebook shows SAS output when the SAS code generates it. You'll learn that it displays the SAS log otherwise.

What if you want to check the log when the code generates output?

Click on the ```...``` > **Change Presentation** between the code and the output:

![](images/franir_2025-03-20-12-04-42.png)

Then select **SAS Log Renderer**:

![](images/franir_2025-03-20-12-06-11.png)

You should see the SAS log now.

Add a new Markdown cell with the following level-1 title (one # sign): "**Join data**".

Add a SQL code cell (the label is mistakenly marked as '**MS SQL**' when it should actually be '**SAS SQL**').

![](images/franir_2025-03-20-11-06-44.png)

This SQL cell allows you to code directly a SAS SQL statement without having to specify ```proc sql``` and ```quit```.

Use the following code to join all five tables:

```sql
create table churn_wip (drop=custId customerSubscrCode reviewId ordinal_root ordinal_reviews) as
   select *
   from churn_pq.customer_churn as churn
      left join churn.customers as cust on churn.custId=cust.custId
      left join subscriptions as subs on cust.customerSubscrCode=subs.customerSubscrCode
      left join churn.techSupportEvals as evals on churn.ID=evals.ID
      left join rev.reviews as rev on churn.reviewId=rev.reviewId
```

Run the code and check the log.

Check the table in the WORK library in the SAS extension.

![](images/franir_2025-03-20-13-53-39.png)

Finally, let's save the final table as a Parquet data set.

Add a new Markdown cell with the following level-1 title (one # sign): "**Save final table in Parquet format**".

Add a SAS code cell and paste the following code to save the table as a Parquet file while adding a computed variable:

```sas
data churn_pq.churn_abt ;
   set churn_wip ;
   customerAge=intck('YEAR',birthDate,today(),'C') ;
run ;
```

Run the code and check the result:

![](images/franir_2025-03-20-13-57-51.png)

Now, we will check at the file system level how this worked.

Open a new terminal by selecting the VS Code Menu > **Terminal** > **New Terminal**.

![](images/franir_2025-03-20-13-59-43.png)

In the terminal, type the following commands:

```shell
cd SAS-Viya-Workbench-and-VS-Code/Data/
ls -ltr
```

You should see the new Parquet file created on disk:

![](images/franir_2025-03-20-14-04-57.png)


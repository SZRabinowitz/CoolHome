.class public Lcom/android/cts/example/appviewer/AppListActivity;
.super Landroid/app/Activity;
.source "AppListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;

.field private listView:Landroid/widget/ListView;

.field private packageManager:Landroid/content/pm/PackageManager;

.field private selectedItemPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/cts/example/appviewer/AppListActivity;->selectedItemPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/cts/example/appviewer/AppListActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cts/example/appviewer/AppListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Lcom/android/cts/example/appviewer/AppListActivity;->launchApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/cts/example/appviewer/AppListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/cts/example/appviewer/AppListActivity;

    .line 29
    iget v0, p0, Lcom/android/cts/example/appviewer/AppListActivity;->selectedItemPosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/cts/example/appviewer/AppListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/cts/example/appviewer/AppListActivity;
    .param p1, "x1"    # I

    .line 29
    iput p1, p0, Lcom/android/cts/example/appviewer/AppListActivity;->selectedItemPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/cts/example/appviewer/AppListActivity;)Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/cts/example/appviewer/AppListActivity;

    .line 29
    iget-object v0, p0, Lcom/android/cts/example/appviewer/AppListActivity;->adapter:Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/cts/example/appviewer/AppListActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/cts/example/appviewer/AppListActivity;

    .line 29
    iget-object v0, p0, Lcom/android/cts/example/appviewer/AppListActivity;->packageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private getInstalledApps()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/android/cts/example/appviewer/AppListActivity;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 80
    .local v1, "allApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v2, "nonSystemApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 83
    .local v4, "app":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 84
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v4    # "app":Landroid/content/pm/ResolveInfo;
    :cond_0
    goto :goto_0

    .line 89
    :cond_1
    new-instance v3, Lcom/android/cts/example/appviewer/AppListActivity$3;

    invoke-direct {v3, p0}, Lcom/android/cts/example/appviewer/AppListActivity$3;-><init>(Lcom/android/cts/example/appviewer/AppListActivity;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 98
    return-object v2
.end method

.method private launchApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/android/cts/example/appviewer/AppListActivity;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 103
    .local v0, "launchIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/cts/example/appviewer/AppListActivity;->startActivity(Landroid/content/Intent;)V

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/cts/example/appviewer/AppListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 43
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/cts/example/appviewer/AppListActivity;->listView:Landroid/widget/ListView;

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/cts/example/appviewer/AppListActivity;->setContentView(Landroid/view/View;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/cts/example/appviewer/AppListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cts/example/appviewer/AppListActivity;->packageManager:Landroid/content/pm/PackageManager;

    .line 47
    invoke-direct {p0}, Lcom/android/cts/example/appviewer/AppListActivity;->getInstalledApps()Ljava/util/List;

    move-result-object v0

    .line 49
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;

    invoke-direct {v1, p0, p0, v0}, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;-><init>(Lcom/android/cts/example/appviewer/AppListActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/cts/example/appviewer/AppListActivity;->adapter:Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;

    .line 50
    iget-object v2, p0, Lcom/android/cts/example/appviewer/AppListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    iget-object v1, p0, Lcom/android/cts/example/appviewer/AppListActivity;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/cts/example/appviewer/AppListActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/android/cts/example/appviewer/AppListActivity$1;-><init>(Lcom/android/cts/example/appviewer/AppListActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 60
    iget-object v1, p0, Lcom/android/cts/example/appviewer/AppListActivity;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/cts/example/appviewer/AppListActivity$2;

    invoke-direct {v2, p0}, Lcom/android/cts/example/appviewer/AppListActivity$2;-><init>(Lcom/android/cts/example/appviewer/AppListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 73
    return-void
.end method

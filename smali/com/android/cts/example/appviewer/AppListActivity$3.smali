.class Lcom/android/cts/example/appviewer/AppListActivity$3;
.super Ljava/lang/Object;
.source "AppListActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cts/example/appviewer/AppListActivity;->getInstalledApps()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cts/example/appviewer/AppListActivity;


# direct methods
.method constructor <init>(Lcom/android/cts/example/appviewer/AppListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/cts/example/appviewer/AppListActivity;

    .line 89
    iput-object p1, p0, Lcom/android/cts/example/appviewer/AppListActivity$3;->this$0:Lcom/android/cts/example/appviewer/AppListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 3
    .param p1, "app1"    # Landroid/content/pm/ResolveInfo;
    .param p2, "app2"    # Landroid/content/pm/ResolveInfo;

    .line 92
    iget-object v0, p0, Lcom/android/cts/example/appviewer/AppListActivity$3;->this$0:Lcom/android/cts/example/appviewer/AppListActivity;

    invoke-static {v0}, Lcom/android/cts/example/appviewer/AppListActivity;->access$300(Lcom/android/cts/example/appviewer/AppListActivity;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "label1":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/cts/example/appviewer/AppListActivity$3;->this$0:Lcom/android/cts/example/appviewer/AppListActivity;

    invoke-static {v1}, Lcom/android/cts/example/appviewer/AppListActivity;->access$300(Lcom/android/cts/example/appviewer/AppListActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "label2":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 89
    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/cts/example/appviewer/AppListActivity$3;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result p1

    return p1
.end method

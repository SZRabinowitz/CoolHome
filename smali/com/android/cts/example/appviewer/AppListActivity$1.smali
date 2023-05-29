.class Lcom/android/cts/example/appviewer/AppListActivity$1;
.super Ljava/lang/Object;
.source "AppListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cts/example/appviewer/AppListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cts/example/appviewer/AppListActivity;

.field final synthetic val$apps:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/cts/example/appviewer/AppListActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/cts/example/appviewer/AppListActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/android/cts/example/appviewer/AppListActivity$1;->this$0:Lcom/android/cts/example/appviewer/AppListActivity;

    iput-object p2, p0, Lcom/android/cts/example/appviewer/AppListActivity$1;->val$apps:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 55
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/cts/example/appviewer/AppListActivity$1;->val$apps:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 56
    .local v0, "app":Landroid/content/pm/ResolveInfo;
    iget-object v1, p0, Lcom/android/cts/example/appviewer/AppListActivity$1;->this$0:Lcom/android/cts/example/appviewer/AppListActivity;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/cts/example/appviewer/AppListActivity;->access$000(Lcom/android/cts/example/appviewer/AppListActivity;Ljava/lang/String;)V

    .line 57
    return-void
.end method

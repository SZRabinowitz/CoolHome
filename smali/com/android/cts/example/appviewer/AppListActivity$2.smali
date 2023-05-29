.class Lcom/android/cts/example/appviewer/AppListActivity$2;
.super Ljava/lang/Object;
.source "AppListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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


# direct methods
.method constructor <init>(Lcom/android/cts/example/appviewer/AppListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/cts/example/appviewer/AppListActivity;

    .line 60
    iput-object p1, p0, Lcom/android/cts/example/appviewer/AppListActivity$2;->this$0:Lcom/android/cts/example/appviewer/AppListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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

    .line 63
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/cts/example/appviewer/AppListActivity$2;->this$0:Lcom/android/cts/example/appviewer/AppListActivity;

    invoke-static {v0, p3}, Lcom/android/cts/example/appviewer/AppListActivity;->access$102(Lcom/android/cts/example/appviewer/AppListActivity;I)I

    .line 64
    iget-object v0, p0, Lcom/android/cts/example/appviewer/AppListActivity$2;->this$0:Lcom/android/cts/example/appviewer/AppListActivity;

    invoke-static {v0}, Lcom/android/cts/example/appviewer/AppListActivity;->access$200(Lcom/android/cts/example/appviewer/AppListActivity;)Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;->notifyDataSetChanged()V

    .line 65
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 69
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/cts/example/appviewer/AppListActivity$2;->this$0:Lcom/android/cts/example/appviewer/AppListActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/cts/example/appviewer/AppListActivity;->access$102(Lcom/android/cts/example/appviewer/AppListActivity;I)I

    .line 70
    iget-object v0, p0, Lcom/android/cts/example/appviewer/AppListActivity$2;->this$0:Lcom/android/cts/example/appviewer/AppListActivity;

    invoke-static {v0}, Lcom/android/cts/example/appviewer/AppListActivity;->access$200(Lcom/android/cts/example/appviewer/AppListActivity;)Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;->notifyDataSetChanged()V

    .line 71
    return-void
.end method

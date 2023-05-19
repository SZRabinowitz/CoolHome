.class Lcom/wy/f1home/activity/ToolActivityAdapter$1;
.super Lcom/wy/f1home/uitl/HomeMonitorCallbacks;
.source "ToolActivityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wy/f1home/activity/ToolActivityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wy/f1home/activity/ToolActivityAdapter;


# direct methods
.method constructor <init>(Lcom/wy/f1home/activity/ToolActivityAdapter;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/wy/f1home/activity/ToolActivityAdapter$1;->this$0:Lcom/wy/f1home/activity/ToolActivityAdapter;

    invoke-direct {p0}, Lcom/wy/f1home/uitl/HomeMonitorCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyAppsUpdated()V
    .locals 2

    const-string v0, "wuyu"

    const-string v1, "ToolActivityAdapter notifyAppsUpdated"

    .line 32
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/wy/f1home/activity/ToolActivityAdapter$1;->this$0:Lcom/wy/f1home/activity/ToolActivityAdapter;

    invoke-static {}, Lcom/wy/f1home/uitl/PackageInfoUtil;->getExtraAppsList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wy/f1home/activity/ToolActivityAdapter;->access$002(Lcom/wy/f1home/activity/ToolActivityAdapter;Ljava/util/List;)Ljava/util/List;

    .line 34
    iget-object v0, p0, Lcom/wy/f1home/activity/ToolActivityAdapter$1;->this$0:Lcom/wy/f1home/activity/ToolActivityAdapter;

    invoke-virtual {v0}, Lcom/wy/f1home/activity/ToolActivityAdapter;->notifyDataSetChanged()V

    return-void
.end method

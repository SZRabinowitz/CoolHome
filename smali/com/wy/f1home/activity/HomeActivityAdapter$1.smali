.class Lcom/wy/f1home/activity/HomeActivityAdapter$1;
.super Lcom/wy/f1home/uitl/HomeMonitorCallbacks;
.source "HomeActivityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wy/f1home/activity/HomeActivityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wy/f1home/activity/HomeActivityAdapter;


# direct methods
.method constructor <init>(Lcom/wy/f1home/activity/HomeActivityAdapter;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/wy/f1home/activity/HomeActivityAdapter$1;->this$0:Lcom/wy/f1home/activity/HomeActivityAdapter;

    invoke-direct {p0}, Lcom/wy/f1home/uitl/HomeMonitorCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyAppsUpdated()V
    .locals 2

    const-string v0, "wuyu"

    const-string v1, "HomeActivityAdapter notifyAppsUpdated"

    .line 35
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/wy/f1home/activity/HomeActivityAdapter$1;->this$0:Lcom/wy/f1home/activity/HomeActivityAdapter;

    invoke-static {}, Lcom/wy/f1home/uitl/PackageInfoUtil;->getMainMenuAppsList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wy/f1home/activity/HomeActivityAdapter;->access$002(Lcom/wy/f1home/activity/HomeActivityAdapter;Ljava/util/List;)Ljava/util/List;

    .line 37
    iget-object v0, p0, Lcom/wy/f1home/activity/HomeActivityAdapter$1;->this$0:Lcom/wy/f1home/activity/HomeActivityAdapter;

    invoke-virtual {v0}, Lcom/wy/f1home/activity/HomeActivityAdapter;->notifyDataSetChanged()V

    return-void
.end method

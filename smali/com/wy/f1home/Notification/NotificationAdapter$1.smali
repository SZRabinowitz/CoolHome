.class Lcom/wy/f1home/Notification/NotificationAdapter$1;
.super Lcom/wy/f1home/uitl/HomeMonitorCallbacks;
.source "NotificationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wy/f1home/Notification/NotificationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wy/f1home/Notification/NotificationAdapter;


# direct methods
.method constructor <init>(Lcom/wy/f1home/Notification/NotificationAdapter;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/wy/f1home/Notification/NotificationAdapter$1;->this$0:Lcom/wy/f1home/Notification/NotificationAdapter;

    invoke-direct {p0}, Lcom/wy/f1home/uitl/HomeMonitorCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyAppsUpdated()V
    .locals 4

    const-string v0, "wuyu"

    const-string v1, "NotificationAdapter notifyAppsUpdated"

    .line 41
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/wy/f1home/Notification/NotificationAdapter$1;->this$0:Lcom/wy/f1home/Notification/NotificationAdapter;

    invoke-static {}, Lcom/wy/f1home/Notification/NLService;->getmNotificationItemInfoList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wy/f1home/Notification/NotificationAdapter;->access$002(Lcom/wy/f1home/Notification/NotificationAdapter;Ljava/util/List;)Ljava/util/List;

    .line 44
    iget-object v0, p0, Lcom/wy/f1home/Notification/NotificationAdapter$1;->this$0:Lcom/wy/f1home/Notification/NotificationAdapter;

    invoke-static {v0}, Lcom/wy/f1home/Notification/NotificationAdapter;->access$000(Lcom/wy/f1home/Notification/NotificationAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/wy/f1home/Notification/NotificationAdapter$1;->this$0:Lcom/wy/f1home/Notification/NotificationAdapter;

    invoke-static {v0}, Lcom/wy/f1home/Notification/NotificationAdapter;->access$100(Lcom/wy/f1home/Notification/NotificationAdapter;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    invoke-static {}, Lcom/wy/f1home/Notification/MainActivity;->getButtomBarView()Lcom/wy/f1home/Keyguard/ButtomBarView;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setButtomBarLeft(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/wy/f1home/Notification/MainActivity;->getButtomBarView()Lcom/wy/f1home/Keyguard/ButtomBarView;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setButtomBarRight(Landroid/content/ComponentName;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/wy/f1home/Notification/NotificationAdapter$1;->this$0:Lcom/wy/f1home/Notification/NotificationAdapter;

    invoke-static {v0}, Lcom/wy/f1home/Notification/NotificationAdapter;->access$100(Lcom/wy/f1home/Notification/NotificationAdapter;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    sget-boolean v0, Lcom/wy/f1home/Notification/NLService;->mOptionVisable:Z

    if-eqz v0, :cond_1

    .line 55
    invoke-static {}, Lcom/wy/f1home/Notification/MainActivity;->getButtomBarView()Lcom/wy/f1home/Keyguard/ButtomBarView;

    move-result-object v0

    iget-object v2, p0, Lcom/wy/f1home/Notification/NotificationAdapter$1;->this$0:Lcom/wy/f1home/Notification/NotificationAdapter;

    invoke-static {v2}, Lcom/wy/f1home/Notification/NotificationAdapter;->access$200(Lcom/wy/f1home/Notification/NotificationAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setButtomBarRight(Landroid/content/ComponentName;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {}, Lcom/wy/f1home/Notification/MainActivity;->getButtomBarView()Lcom/wy/f1home/Keyguard/ButtomBarView;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setButtomBarRight(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/wy/f1home/Notification/NotificationAdapter$1;->this$0:Lcom/wy/f1home/Notification/NotificationAdapter;

    invoke-virtual {v0}, Lcom/wy/f1home/Notification/NotificationAdapter;->notifyDataSetChanged()V

    .line 64
    sget-object v0, Lcom/wy/f1home/Notification/NotificationAdapter;->mRefreshButtomBarViewCallBack:Lcom/wy/f1home/Notification/NotificationAdapter$refreshButtomBarViewCallBack;

    invoke-interface {v0}, Lcom/wy/f1home/Notification/NotificationAdapter$refreshButtomBarViewCallBack;->refreshButtomBarView_ext()V

    return-void
.end method

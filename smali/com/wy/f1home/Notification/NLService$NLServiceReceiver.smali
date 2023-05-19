.class Lcom/wy/f1home/Notification/NLService$NLServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NLService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wy/f1home/Notification/NLService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NLServiceReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wy/f1home/Notification/NLService;


# direct methods
.method constructor <init>(Lcom/wy/f1home/Notification/NLService;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/wy/f1home/Notification/NLService$NLServiceReceiver;->this$0:Lcom/wy/f1home/Notification/NLService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "command"

    .line 306
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "wuyu"

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command receive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "wuyu"

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NLService.this.getActiveNotifications():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/wy/f1home/Notification/NLService$NLServiceReceiver;->this$0:Lcom/wy/f1home/Notification/NLService;

    invoke-virtual {v1}, Lcom/wy/f1home/Notification/NLService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "clearall"

    .line 309
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 310
    iget-object p1, p0, Lcom/wy/f1home/Notification/NLService$NLServiceReceiver;->this$0:Lcom/wy/f1home/Notification/NLService;

    invoke-virtual {p1}, Lcom/wy/f1home/Notification/NLService;->cancelAllNotifications()V

    :cond_0
    return-void
.end method

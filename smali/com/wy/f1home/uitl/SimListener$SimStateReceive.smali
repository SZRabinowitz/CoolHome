.class public Lcom/wy/f1home/uitl/SimListener$SimStateReceive;
.super Landroid/content/BroadcastReceiver;
.source "SimListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wy/f1home/uitl/SimListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimStateReceive"
.end annotation


# static fields
.field private static final SIM_INVALID:I = 0x1

.field private static final SIM_VALID:I


# instance fields
.field private simState:I

.field final synthetic this$0:Lcom/wy/f1home/uitl/SimListener;


# direct methods
.method public constructor <init>(Lcom/wy/f1home/uitl/SimListener;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/wy/f1home/uitl/SimListener$SimStateReceive;->this$0:Lcom/wy/f1home/uitl/SimListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x1

    .line 42
    iput p1, p0, Lcom/wy/f1home/uitl/SimListener$SimStateReceive;->simState:I

    return-void
.end method


# virtual methods
.method public getSimState()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/wy/f1home/uitl/SimListener$SimStateReceive;->simState:I

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "wuyu"

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimStateReceive intent.getAction() ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "phone"

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 53
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p1

    const-string v0, "wuyu"

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimStateReceive state ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 66
    iput v2, p0, Lcom/wy/f1home/uitl/SimListener$SimStateReceive;->simState:I

    goto :goto_0

    .line 57
    :cond_0
    iput v1, p0, Lcom/wy/f1home/uitl/SimListener$SimStateReceive;->simState:I

    .line 58
    iget-object p1, p0, Lcom/wy/f1home/uitl/SimListener$SimStateReceive;->this$0:Lcom/wy/f1home/uitl/SimListener;

    invoke-static {p1}, Lcom/wy/f1home/uitl/SimListener;->access$000(Lcom/wy/f1home/uitl/SimListener;)Lcom/wy/f1home/uitl/SimListener$SimStateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/wy/f1home/uitl/SimListener$SimStateListener;->onSimNotify()V

    .line 70
    :goto_0
    iget-object p1, p0, Lcom/wy/f1home/uitl/SimListener$SimStateReceive;->this$0:Lcom/wy/f1home/uitl/SimListener;

    invoke-static {p1}, Lcom/wy/f1home/uitl/SimListener;->access$000(Lcom/wy/f1home/uitl/SimListener;)Lcom/wy/f1home/uitl/SimListener$SimStateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/wy/f1home/uitl/SimListener$SimStateListener;->onSimStateChanged()V

    .line 73
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 75
    iget-object p1, p0, Lcom/wy/f1home/uitl/SimListener$SimStateReceive;->this$0:Lcom/wy/f1home/uitl/SimListener;

    invoke-static {p1}, Lcom/wy/f1home/uitl/SimListener;->access$100(Lcom/wy/f1home/uitl/SimListener;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/wy/f1home/uitl/SimListener;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 76
    iget-object p1, p0, Lcom/wy/f1home/uitl/SimListener$SimStateReceive;->this$0:Lcom/wy/f1home/uitl/SimListener;

    invoke-static {p1}, Lcom/wy/f1home/uitl/SimListener;->access$000(Lcom/wy/f1home/uitl/SimListener;)Lcom/wy/f1home/uitl/SimListener$SimStateListener;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/wy/f1home/uitl/SimListener$SimStateListener;->DisplayCarrierText(Z)V

    goto :goto_1

    .line 80
    :cond_2
    iget-object p1, p0, Lcom/wy/f1home/uitl/SimListener$SimStateReceive;->this$0:Lcom/wy/f1home/uitl/SimListener;

    invoke-static {p1}, Lcom/wy/f1home/uitl/SimListener;->access$000(Lcom/wy/f1home/uitl/SimListener;)Lcom/wy/f1home/uitl/SimListener$SimStateListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/wy/f1home/uitl/SimListener$SimStateListener;->DisplayCarrierText(Z)V

    :cond_3
    :goto_1
    return-void
.end method
